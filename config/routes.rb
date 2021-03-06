Birchis::Application.routes.draw do
  get "privacy" => "site#privacy"
  get "terms" => "site#terms"
  
  resource :session, only: [ :new, :create, :destroy ]
  resource :password, only: [ :update ]
  get "reset/:code" => "password#edit"
  
  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"
  
  resources :users
  
  root 'site#index'
end

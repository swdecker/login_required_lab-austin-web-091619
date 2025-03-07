class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  
  def landing
    redirect_to login_path unless session.include? :name
  end

  def current_user
    session[:name]
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
  end
end

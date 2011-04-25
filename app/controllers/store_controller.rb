class StoreController < ApplicationController
  def index
    @products = Product.all
    @wee = 'ambot'


	if session[:counter].nil?
        session[:counter] = 0
	elsif session[:counter] > 5        
        @ses = session[:counter]
	else
	
	session[:counter] +=1
      end
  end


end


def sessioncontrol
@sessionctr = sesion[:counter]
   if @sessionctr.nil?
   @sessionctr = 0;
   else
   @sessionctr += 1;

  end
end

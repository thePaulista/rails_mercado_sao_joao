Rails.application.routes.draw do

  #Api definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: "api" }, path: "/" do
    scope module: :v1 do
      #list the resources here

    end
  end
end


#rails can handle up to 21 different media types, you can list them by accessing the SET class under the MIME module.
#
#the JSON is one of the built0oin MIME types accepted by Rails, so we need to spicify this format as the default one
#
#up to this point we have not made anything crazy, what we want to achieve next is how to generate a base_uri under a subdomain, in our case something like api.market_place_api.dev.
#
#Setting the api under a subdomain is a good practie because it allows to escalate the applicatio to a DNS level.
#
#didn't just add a constrainst hash to spicity the subdomain, but also add the path option, and set it a backslash. this is telling rails to set the starting path for each request to be root in relation to the subdomain.

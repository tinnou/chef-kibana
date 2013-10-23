include_recipe 'htpasswd'

# add user "foo" with password "bar" to "/etc/nginx/htpassword"
htpasswd "/etc/nginx/htpassword" do
  user node['kibana']['web_user']
  password node['kibana']['web_password']
end

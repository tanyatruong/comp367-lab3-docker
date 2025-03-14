FROM tomcat:9.0-jdk11-openjdk
MAINTAINER Tanya Truong

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]

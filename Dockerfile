# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot jar file into the container
COPY target/Mymart-0.0.1-SNAPSHOT.jar /app/Mymart.jar

# Expose port 8080 (default for Spring Boot applications)
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "Mymart.jar"]

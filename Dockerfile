FROM eclipse-temurin:8-jdk

RUN apt-get update && \
    apt-get install build-essential maven default-jdk cowsay netcat-openbsd -y && \
    update-alternatives --config javac
COPY . .

CMD ["mvn", "spring-boot:run"]

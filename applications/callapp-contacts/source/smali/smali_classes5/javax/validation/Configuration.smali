.class public interface abstract Ljavax/validation/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/validation/Configuration<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addMapping(Ljava/io/InputStream;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addValueExtractor(Ljavax/validation/valueextraction/a;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/valueextraction/a<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract buildValidatorFactory()Ljavax/validation/h;
.end method

.method public abstract clockProvider(Ljavax/validation/a;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract constraintValidatorFactory(Ljavax/validation/b;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/b;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getBootstrapConfiguration()Ljavax/validation/BootstrapConfiguration;
.end method

.method public abstract getDefaultClockProvider()Ljavax/validation/a;
.end method

.method public abstract getDefaultConstraintValidatorFactory()Ljavax/validation/b;
.end method

.method public abstract getDefaultMessageInterpolator()Ljavax/validation/d;
.end method

.method public abstract getDefaultParameterNameProvider()Ljavax/validation/e;
.end method

.method public abstract getDefaultTraversableResolver()Ljavax/validation/g;
.end method

.method public abstract ignoreXmlConfiguration()Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract messageInterpolator(Ljavax/validation/d;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/d;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract parameterNameProvider(Ljavax/validation/e;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/e;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract traversableResolver(Ljavax/validation/g;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/g;",
            ")TT;"
        }
    .end annotation
.end method

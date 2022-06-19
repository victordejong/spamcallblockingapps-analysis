.class public interface abstract Ljavax/validation/spi/ConfigurationState;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClockProvider()Ljavax/validation/a;
.end method

.method public abstract getConstraintValidatorFactory()Ljavax/validation/b;
.end method

.method public abstract getMappingStreams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageInterpolator()Ljavax/validation/d;
.end method

.method public abstract getParameterNameProvider()Ljavax/validation/e;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTraversableResolver()Ljavax/validation/g;
.end method

.method public abstract getValueExtractors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/validation/valueextraction/a<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract isIgnoreXmlConfiguration()Z
.end method

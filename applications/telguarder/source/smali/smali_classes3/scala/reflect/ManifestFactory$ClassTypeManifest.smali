.class public Lscala/reflect/ManifestFactory$ClassTypeManifest;
.super Ljava/lang/Object;
.source "Manifest.scala"

# interfaces
.implements Lscala/reflect/Manifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassTypeManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/reflect/Manifest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final prefix:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Lscala/reflect/Manifest<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final runtimeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeArguments:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/Manifest<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/reflect/Manifest<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/Manifest<",
            "*>;>;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    .line 240
    iput-object p2, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    .line 241
    iput-object p3, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/Manifest$class;->$init$(Lscala/reflect/Manifest;)V

    return-void
.end method


# virtual methods
.method public $greater$colon$greater(Lscala/reflect/ClassTag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "*>;)Z"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$greater$colon$greater(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result p1

    return p1
.end method

.method public $less$colon$less(Lscala/reflect/ClassTag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "*>;)Z"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result p1

    return p1
.end method

.method public argString()Ljava/lang/String;
    .locals 1

    .line 239
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->argString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public arrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->arrayClass(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic arrayManifest()Lscala/reflect/ClassTag;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->arrayManifest()Lscala/reflect/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public arrayManifest()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lscala/reflect/Manifest$class;->arrayManifest(Lscala/reflect/Manifest;)Lscala/reflect/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/Manifest$class;->canEqual(Lscala/reflect/Manifest;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/Manifest$class;->equals(Lscala/reflect/Manifest;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public erasure()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->erasure(Lscala/reflect/ClassTag;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 239
    invoke-static {p0}, Lscala/reflect/Manifest$class;->hashCode(Lscala/reflect/Manifest;)I

    move-result v0

    return v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray2(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray2(Lscala/reflect/ClassTag;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray3(I)[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray3(Lscala/reflect/ClassTag;I)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray4(I)[[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray4(Lscala/reflect/ClassTag;I)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray5(I)[[[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray5(Lscala/reflect/ClassTag;I)[[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArrayBuilder()Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArrayBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newWrappedArray(I)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newWrappedArray(Lscala/reflect/ClassTag;I)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 244
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 243
    iget-object v1, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v2, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/reflect/ClassTag;

    invoke-interface {v2}, Lscala/reflect/ClassTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Array"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->argString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeArguments()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/Manifest<",
            "*>;>;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public unapply(B)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;B)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(C)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;C)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(D)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;D)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(F)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;F)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(I)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(J)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;J)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Lscala/runtime/BoxedUnit;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Lscala/runtime/BoxedUnit;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(S)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;S)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Z)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Z)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public wrap()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->wrap(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

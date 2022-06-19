.class public abstract Lscala/reflect/Manifest$class;
.super Ljava/lang/Object;
.source "Manifest.scala"


# direct methods
.method public static $init$(Lscala/reflect/Manifest;)V
    .locals 0

    return-void
.end method

.method public static arrayManifest(Lscala/reflect/Manifest;)Lscala/reflect/Manifest;
    .locals 4

    .line 49
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-interface {p0}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/reflect/Manifest;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x0

    new-array v3, v3, [Lscala/reflect/Manifest;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lscala/reflect/ManifestFactory$;->classType(Ljava/lang/Class;Lscala/reflect/Manifest;Lscala/collection/Seq;)Lscala/reflect/Manifest;

    move-result-object p0

    return-object p0
.end method

.method public static canEqual(Lscala/reflect/Manifest;Ljava/lang/Object;)Z
    .locals 0

    .line 51
    instance-of p0, p1, Lscala/reflect/Manifest;

    return p0
.end method

.method public static equals(Lscala/reflect/Manifest;Ljava/lang/Object;)Z
    .locals 3

    .line 58
    instance-of v0, p1, Lscala/reflect/Manifest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lscala/reflect/Manifest;

    invoke-interface {p1, p0}, Lscala/reflect/Manifest;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p0, p1}, Lscala/reflect/Manifest;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Lscala/reflect/Manifest;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static hashCode(Lscala/reflect/Manifest;)I
    .locals 1

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 62
    invoke-interface {p0}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static typeArguments(Lscala/reflect/Manifest;)Lscala/collection/immutable/List;
    .locals 0

    .line 46
    sget-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-object p0
.end method

.class public abstract Lscala/reflect/ClassManifestDeprecatedApis$class;
.super Ljava/lang/Object;
.source "ClassManifestDeprecatedApis.scala"


# direct methods
.method public static $greater$colon$greater(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z
    .locals 0

    .line 83
    invoke-interface {p1, p0}, Lscala/reflect/ClassTag;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result p0

    return p0
.end method

.method public static $init$(Lscala/reflect/ClassTag;)V
    .locals 0

    return-void
.end method

.method public static $less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z
    .locals 4

    .line 66
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->cannotMatch$1(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 68
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-interface {p1}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->subargs(Lscala/reflect/ClassTag;Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Z

    move-result p0

    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    invoke-interface {p1}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->subtype(Lscala/reflect/ClassTag;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static argString(Lscala/reflect/ClassTag;)Ljava/lang/String;
    .locals 3

    .line 134
    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    const-string v1, "]"

    const-string v2, "["

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v2, v0, v1}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v2, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v2}, Lscala/reflect/package$;->ClassManifest()Lscala/reflect/ClassManifestFactory$;

    move-result-object v2

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Lscala/reflect/ClassManifestFactory$;->fromClass(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static arrayClass(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    .line 91
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static arrayManifest(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;
    .locals 4

    .line 95
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->ClassManifest()Lscala/reflect/ClassManifestFactory$;

    move-result-object v0

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x0

    new-array v3, v3, [Lscala/reflect/OptManifest;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lscala/reflect/ClassManifestFactory$;->classType(Ljava/lang/Class;Lscala/reflect/OptManifest;Lscala/collection/Seq;)Lscala/reflect/ClassTag;

    move-result-object p0

    return-object p0
.end method

.method public static canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z
    .locals 0

    .line 85
    instance-of p0, p1, Lscala/reflect/ClassTag;

    return p0
.end method

.method private static final cannotMatch$1(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z
    .locals 0

    .line 52
    instance-of p0, p1, Lscala/reflect/AnyValManifest;

    if-nez p0, :cond_1

    sget-object p0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {p0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object p0

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {p0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object p0

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Nothing()Lscala/reflect/Manifest;

    move-result-object p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {p0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object p0

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Null()Lscala/reflect/Manifest;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static erasure(Lscala/reflect/ClassTag;)Ljava/lang/Class;
    .locals 0

    .line 21
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static final loop$1(Lscala/reflect/ClassTag;Lscala/collection/immutable/Set;Lscala/collection/immutable/Set;Ljava/lang/Class;)Z
    .locals 4

    .line 25
    :goto_0
    invoke-interface {p1}, Lscala/collection/immutable/Set;->nonEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p1}, Lscala/collection/immutable/Set;->head()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 27
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/ArrayOps;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    sget-object v1, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v2, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/immutable/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    .line 28
    invoke-interface {v0, p3}, Lscala/collection/immutable/Set;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {p1, v0}, Lscala/collection/immutable/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Lscala/collection/Set;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    .line 30
    invoke-interface {p1, p0}, Lscala/collection/immutable/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    invoke-interface {p2, p0}, Lscala/collection/immutable/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lscala/collection/immutable/Set;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newArray2(Lscala/reflect/ClassTag;I)[Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static newArray3(Lscala/reflect/ClassTag;I)[[Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method

.method public static newArray4(Lscala/reflect/ClassTag;I)[[[Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[Ljava/lang/Object;

    return-object p0
.end method

.method public static newArray5(Lscala/reflect/ClassTag;I)[[[[Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[[Ljava/lang/Object;

    return-object p0
.end method

.method public static newArrayBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;
    .locals 1

    .line 128
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofRef;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public static newWrappedArray(Lscala/reflect/ClassTag;I)Lscala/collection/mutable/WrappedArray;
    .locals 1

    .line 123
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-interface {p0, p1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static subargs(Lscala/reflect/ClassTag;Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Z
    .locals 1

    .line 37
    new-instance v0, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;

    invoke-direct {v0, p0}, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;-><init>(Lscala/reflect/ClassTag;)V

    invoke-virtual {p1, p2, v0}, Lscala/collection/immutable/List;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p0

    return p0
.end method

.method private static subtype(Lscala/reflect/ClassTag;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4

    .line 34
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Set()Lscala/collection/immutable/Set$;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Set()Lscala/collection/immutable/Set$;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    invoke-static {p0, p1, v0, p2}, Lscala/reflect/ClassManifestDeprecatedApis$class;->loop$1(Lscala/reflect/ClassTag;Lscala/collection/immutable/Set;Lscala/collection/immutable/Set;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static typeArguments(Lscala/reflect/ClassTag;)Lscala/collection/immutable/List;
    .locals 0

    .line 131
    sget-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-object p0
.end method

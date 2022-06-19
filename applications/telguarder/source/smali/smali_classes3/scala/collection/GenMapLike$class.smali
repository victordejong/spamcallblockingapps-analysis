.class public abstract Lscala/collection/GenMapLike$class;
.super Ljava/lang/Object;
.source "GenMapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/GenMapLike;)V
    .locals 0

    return-void
.end method

.method public static equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z
    .locals 3

    .line 113
    instance-of v0, p1, Lscala/collection/GenMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/GenMap;

    if-eq p0, p1, :cond_0

    .line 116
    invoke-interface {p1, p0}, Lscala/collection/GenMap;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {p0}, Lscala/collection/GenMapLike;->size()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/GenMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 118
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->liftedTree1$1(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static hashCode(Lscala/collection/GenMapLike;)I
    .locals 1

    .line 35
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenMapLike;->seq()Lscala/collection/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->mapHash(Lscala/collection/Map;)I

    move-result p0

    return p0
.end method

.method private static final liftedTree1$1(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)Z
    .locals 1

    .line 119
    :try_start_0
    new-instance v0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;-><init>(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)V

    invoke-interface {p0, v0}, Lscala/collection/GenMapLike;->forall(Lscala/Function1;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    sget-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string p1, "class cast "

    invoke-virtual {p0, p1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

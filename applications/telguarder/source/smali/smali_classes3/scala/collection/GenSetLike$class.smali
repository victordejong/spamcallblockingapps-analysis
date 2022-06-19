.class public abstract Lscala/collection/GenSetLike$class;
.super Ljava/lang/Object;
.source "GenSetLike.scala"


# direct methods
.method public static $amp(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->intersect(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $amp$tilde(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->diff(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $bar(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->union(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/GenSetLike;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z
    .locals 0

    .line 44
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z
    .locals 3

    .line 115
    instance-of v0, p1, Lscala/collection/GenSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/GenSet;

    if-eq p0, p1, :cond_0

    .line 118
    invoke-interface {p1, p0}, Lscala/collection/GenSet;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {p0}, Lscala/collection/GenSetLike;->size()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/GenSet;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 120
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->liftedTree1$1(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static hashCode(Lscala/collection/GenSetLike;)I
    .locals 1

    .line 131
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenSetLike;->seq()Lscala/collection/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->setHash(Lscala/collection/Set;)I

    move-result p0

    return p0
.end method

.method public static intersect(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final liftedTree1$1(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z
    .locals 0

    .line 120
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->subsetOf(Lscala/collection/GenSet;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z
    .locals 0

    .line 103
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

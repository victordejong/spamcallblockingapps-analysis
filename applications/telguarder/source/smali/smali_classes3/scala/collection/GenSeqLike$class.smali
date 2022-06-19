.class public abstract Lscala/collection/GenSeqLike$class;
.super Ljava/lang/Object;
.source "GenSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/GenSeqLike;)V
    .locals 0

    return-void
.end method

.method public static equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z
    .locals 2

    .line 475
    instance-of v0, p1, Lscala/collection/GenSeq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/GenSeq;

    invoke-interface {p1, p0}, Lscala/collection/GenSeq;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->sameElements(Lscala/collection/GenIterable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static hashCode(Lscala/collection/GenSeqLike;)I
    .locals 1

    .line 467
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenSeqLike;->seq()Lscala/collection/Seq;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->seqHash(Lscala/collection/Seq;)I

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I
    .locals 1

    .line 145
    new-instance v0, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;-><init>(Lscala/collection/GenSeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0, p2}, Lscala/collection/GenSeqLike;->indexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->indexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static isDefinedAt(Lscala/collection/GenSeqLike;I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 72
    invoke-interface {p0}, Lscala/collection/GenSeqLike;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I
    .locals 1

    .line 160
    new-instance v0, Lscala/collection/GenSeqLike$$anonfun$lastIndexOf$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenSeqLike$$anonfun$lastIndexOf$1;-><init>(Lscala/collection/GenSeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/GenSeqLike;->lastIndexWhere(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I
    .locals 1

    .line 173
    new-instance v0, Lscala/collection/GenSeqLike$$anonfun$lastIndexOf$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenSeqLike$$anonfun$lastIndexOf$2;-><init>(Lscala/collection/GenSeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0, p2}, Lscala/collection/GenSeqLike;->lastIndexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I
    .locals 1

    .line 183
    invoke-interface {p0}, Lscala/collection/GenSeqLike;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->lastIndexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static prefixLength(Lscala/collection/GenSeqLike;Lscala/Function1;)I
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->segmentLength(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static startsWith(Lscala/collection/GenSeqLike;Lscala/collection/GenSeq;)Z
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->startsWith(Lscala/collection/GenSeq;I)Z

    move-result p0

    return p0
.end method

.method public static union(Lscala/collection/GenSeqLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-interface {p0, p1, p2}, Lscala/collection/GenSeqLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

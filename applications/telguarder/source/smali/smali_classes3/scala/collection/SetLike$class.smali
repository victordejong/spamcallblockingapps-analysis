.class public abstract Lscala/collection/SetLike$class;
.super Ljava/lang/Object;
.source "SetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SetLike;)V
    .locals 0

    return-void
.end method

.method public static $plus(Lscala/collection/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 126
    invoke-interface {p0, p1}, Lscala/collection/SetLike;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 2

    .line 141
    invoke-interface {p0}, Lscala/collection/SetLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/SetLike$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/SetLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/SetLike;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static diff(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 171
    invoke-interface {p0, p1}, Lscala/collection/SetLike;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/SetLike;)Z
    .locals 0

    .line 155
    invoke-interface {p0}, Lscala/collection/SetLike;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static map(Lscala/collection/SetLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-interface {p0, p1, p2}, Lscala/collection/SetLike;->scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lscala/collection/SetLike;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 76
    new-instance v0, Lscala/collection/mutable/SetBuilder;

    invoke-interface {p0}, Lscala/collection/SetLike;->empty()Lscala/collection/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/collection/mutable/SetBuilder;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method

.method public static parCombiner(Lscala/collection/SetLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 78
    sget-object p0, Lscala/collection/parallel/ParSet$;->MODULE$:Lscala/collection/parallel/ParSet$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSet$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/SetLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "Set"

    return-object p0
.end method

.method public static subsets(Lscala/collection/SetLike;)Lscala/collection/Iterator;
    .locals 1

    .line 188
    new-instance v0, Lscala/collection/SetLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/SetLike$$anon$1;-><init>(Lscala/collection/SetLike;)V

    return-object v0
.end method

.method public static subsets(Lscala/collection/SetLike;I)Lscala/collection/Iterator;
    .locals 2

    if-ltz p1, :cond_1

    .line 180
    invoke-interface {p0}, Lscala/collection/SetLike;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lscala/collection/SetLike$SubsetsItr;

    invoke-interface {p0}, Lscala/collection/SetLike;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lscala/collection/SetLike$SubsetsItr;-><init>(Lscala/collection/SetLike;Lscala/collection/IndexedSeq;I)V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    sget-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static toBuffer(Lscala/collection/SetLike;)Lscala/collection/mutable/Buffer;
    .locals 2

    .line 83
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0}, Lscala/collection/SetLike;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    .line 84
    invoke-interface {p0, v0}, Lscala/collection/SetLike;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    return-object v0
.end method

.method public static toSeq(Lscala/collection/SetLike;)Lscala/collection/Seq;
    .locals 0

    .line 81
    invoke-interface {p0}, Lscala/collection/SetLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/SetLike;)Ljava/lang/String;
    .locals 0

    .line 246
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static union(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 163
    invoke-interface {p0, p1}, Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

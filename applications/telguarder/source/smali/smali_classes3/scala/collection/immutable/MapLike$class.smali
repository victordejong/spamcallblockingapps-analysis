.class public abstract Lscala/collection/immutable/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/MapLike;)V
    .locals 0

    return-void
.end method

.method public static $plus(Lscala/collection/immutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;
    .locals 0

    .line 79
    invoke-interface {p0, p1}, Lscala/collection/immutable/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/immutable/Map;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/immutable/Map;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/immutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;
    .locals 2

    .line 88
    invoke-interface {p0}, Lscala/collection/immutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/MapLike$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/MapLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/MapLike;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Map;

    return-object p0
.end method

.method public static filterKeys(Lscala/collection/immutable/MapLike;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 1

    .line 95
    new-instance v0, Lscala/collection/immutable/MapLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/MapLike$$anon$1;-><init>(Lscala/collection/immutable/MapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static keySet(Lscala/collection/immutable/MapLike;)Lscala/collection/immutable/Set;
    .locals 1

    .line 107
    new-instance v0, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;

    invoke-direct {v0, p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;-><init>(Lscala/collection/immutable/MapLike;)V

    return-object v0
.end method

.method public static mapValues(Lscala/collection/immutable/MapLike;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 1

    .line 102
    new-instance v0, Lscala/collection/immutable/MapLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;-><init>(Lscala/collection/immutable/MapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static parCombiner(Lscala/collection/immutable/MapLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 55
    sget-object p0, Lscala/collection/parallel/immutable/ParMap$;->MODULE$:Lscala/collection/parallel/immutable/ParMap$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lscala/collection/immutable/MapLike;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 125
    invoke-interface {p0}, Lscala/collection/immutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 126
    new-instance v0, Lscala/collection/immutable/MapLike$$anonfun$transform$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/MapLike$$anonfun$transform$1;-><init>(Lscala/collection/immutable/MapLike;)V

    invoke-interface {p0, v0}, Lscala/collection/immutable/MapLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/MapLike$$anonfun$transform$2;

    invoke-direct {v1, p0, p2, p1}, Lscala/collection/immutable/MapLike$$anonfun$transform$2;-><init>(Lscala/collection/immutable/MapLike;Lscala/collection/mutable/Builder;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    .line 127
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/immutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1

    .line 62
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/immutable/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

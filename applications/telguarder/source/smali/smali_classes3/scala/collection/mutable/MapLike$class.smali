.class public abstract Lscala/collection/mutable/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/MapLike;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0

    .line 170
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static $minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0

    .line 241
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/mutable/MapLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/mutable/MapLike;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static $minus$minus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0

    .line 251
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 0

    .line 117
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0

    .line 131
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/mutable/MapLike;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/mutable/MapLike;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0

    .line 143
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Map;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/MapLike;)V
    .locals 2

    .line 175
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->keysIterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/MapLike$$anonfun$clear$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/MapLike$$anonfun$clear$1;-><init>(Lscala/collection/mutable/MapLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static clone(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;
    .locals 1

    .line 223
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->empty()Lscala/collection/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    invoke-interface {v0, p0}, Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static getOrElseUpdate(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2

    .line 192
    invoke-interface {p0, p1}, Lscala/collection/mutable/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 193
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/MapLike;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, p2

    :goto_0
    return-object p0

    .line 192
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static newBuilder(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->empty()Lscala/collection/Map;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Builder;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/mutable/MapLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 63
    sget-object p0, Lscala/collection/parallel/mutable/ParMap$;->MODULE$:Lscala/collection/parallel/mutable/ParMap$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static put(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1

    .line 76
    invoke-interface {p0, p1}, Lscala/collection/mutable/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 77
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/MapLike;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static remove(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/Option;
    .locals 1

    .line 152
    invoke-interface {p0, p1}, Lscala/collection/mutable/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 153
    invoke-interface {p0, p1}, Lscala/collection/mutable/MapLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    return-object v0
.end method

.method public static result(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;
    .locals 0

    .line 228
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Map;

    return-object p0
.end method

.method public static retain(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 2

    .line 217
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/MapLike$$anonfun$retain$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/MapLike$$anonfun$retain$1;-><init>(Lscala/collection/mutable/MapLike;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/MapLike$$anonfun$retain$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/MapLike$$anonfun$retain$2;-><init>(Lscala/collection/mutable/MapLike;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    return-object p0
.end method

.method public static transform(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 2

    .line 205
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/MapLike$$anonfun$transform$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/MapLike$$anonfun$transform$1;-><init>(Lscala/collection/mutable/MapLike;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object p0
.end method

.method public static update(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 88
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/MapLike;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    return-void
.end method

.method public static updated(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 1

    .line 106
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p0

    return-object p0
.end method

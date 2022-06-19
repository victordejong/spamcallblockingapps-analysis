.class public abstract Lscala/collection/immutable/MapProxy$class;
.super Ljava/lang/Object;
.source "MapProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/MapProxy;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/immutable/MapProxy;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 35
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Map;

    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/immutable/MapProxy;Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 1

    .line 36
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/immutable/MapProxy;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 37
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/MapLike;

    invoke-interface {v0, p1, p2, p3}, Lscala/collection/immutable/MapLike;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/immutable/MapProxy;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 38
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/MapLike;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/immutable/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static empty(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 32
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    invoke-interface {v0}, Lscala/collection/immutable/Map;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Lscala/collection/immutable/MapProxy;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/immutable/MapLike;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static keySet(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/Set;
    .locals 1

    .line 40
    new-instance v0, Lscala/collection/immutable/MapProxy$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/immutable/MapProxy$$anon$2;-><init>(Lscala/collection/immutable/MapProxy;)V

    return-object v0
.end method

.method public static mapValues(Lscala/collection/immutable/MapProxy;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/immutable/MapLike;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method private static newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 30
    new-instance v0, Lscala/collection/immutable/MapProxy$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;-><init>(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)V

    return-object v0
.end method

.method public static repr(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/MapProxy;
    .locals 0

    return-object p0
.end method

.method public static updated(Lscala/collection/immutable/MapProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;
    .locals 1

    .line 33
    invoke-interface {p0}, Lscala/collection/immutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/MapLike;

    invoke-interface {v0, p1, p2}, Lscala/collection/immutable/MapLike;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->newProxy(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)Lscala/collection/immutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

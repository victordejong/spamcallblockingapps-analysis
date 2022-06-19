.class public abstract Lscala/collection/mutable/MapProxy$class;
.super Ljava/lang/Object;
.source "MapProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/MapProxy;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/mutable/MapProxy;Ljava/lang/Object;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 35
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/mutable/MapProxy$class;->newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $minus$eq(Lscala/collection/mutable/MapProxy;Ljava/lang/Object;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 38
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/MapProxy;Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 1

    .line 32
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/mutable/MapProxy$class;->newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/MapProxy;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 33
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1, p2, p3}, Lscala/collection/mutable/MapLike;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/mutable/MapProxy$class;->newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$eq(Lscala/collection/mutable/MapProxy;Lscala/Tuple2;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 37
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/mutable/MapProxy;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 34
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/mutable/MapProxy$class;->newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

.method public static empty(Lscala/collection/mutable/MapProxy;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 29
    new-instance v0, Lscala/collection/mutable/MapProxy$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/mutable/MapProxy$$anon$2;-><init>(Lscala/collection/mutable/MapProxy;)V

    return-object v0
.end method

.method private static newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 26
    new-instance v0, Lscala/collection/mutable/MapProxy$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/MapProxy$$anon$1;-><init>(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)V

    return-object v0
.end method

.method public static repr(Lscala/collection/mutable/MapProxy;)Lscala/collection/mutable/MapProxy;
    .locals 0

    return-object p0
.end method

.method public static updated(Lscala/collection/mutable/MapProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MapProxy;
    .locals 1

    .line 30
    invoke-interface {p0}, Lscala/collection/mutable/MapProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/MapLike;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/mutable/MapProxy$class;->newProxy(Lscala/collection/mutable/MapProxy;Lscala/collection/mutable/Map;)Lscala/collection/mutable/MapProxy;

    move-result-object p0

    return-object p0
.end method

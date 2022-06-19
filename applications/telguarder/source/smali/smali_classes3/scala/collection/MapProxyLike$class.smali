.class public abstract Lscala/collection/MapProxyLike$class;
.super Ljava/lang/Object;
.source "MapProxyLike.scala"


# direct methods
.method public static $init$(Lscala/collection/MapProxyLike;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/MapProxyLike;Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 28
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/MapProxyLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/MapLike;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/MapProxyLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/MapProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/MapLike;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static default(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Lscala/collection/MapProxyLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static filterNot(Lscala/collection/MapProxyLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static getOrElse(Lscala/collection/MapProxyLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/MapLike;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isDefinedAt(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Z
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->isDefinedAt(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Lscala/collection/MapProxyLike;)Z
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static iterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static keySet(Lscala/collection/MapProxyLike;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->keySet()Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static keys(Lscala/collection/MapProxyLike;)Lscala/collection/Iterable;
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->keys()Lscala/collection/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static keysIterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->keysIterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static mapValues(Lscala/collection/MapProxyLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/MapProxyLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/MapLike;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static values(Lscala/collection/MapProxyLike;)Lscala/collection/Iterable;
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->values()Lscala/collection/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static valuesIterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/MapProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/MapLike;

    invoke-interface {p0}, Lscala/collection/MapLike;->valuesIterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

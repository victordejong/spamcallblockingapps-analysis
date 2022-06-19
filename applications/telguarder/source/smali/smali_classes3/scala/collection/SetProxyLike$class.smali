.class public abstract Lscala/collection/SetProxyLike$class;
.super Ljava/lang/Object;
.source "SetProxyLike.scala"


# direct methods
.method public static $amp(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->$amp(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static $amp$tilde(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->$amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static $bar(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->$bar(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static $init$(Lscala/collection/SetProxyLike;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 25
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0, p1}, Lscala/collection/SetLike;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 24
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0, p1}, Lscala/collection/SetLike;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Z
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static contains(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Z
    .locals 0

    .line 23
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0, p1}, Lscala/collection/SetLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static diff(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0, p1}, Lscala/collection/SetLike;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static intersect(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 28
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->intersect(Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Set;

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/SetProxyLike;)Z
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0}, Lscala/collection/SetLike;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static subsetOf(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Z
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSetLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->subsetOf(Lscala/collection/GenSet;)Z

    move-result p0

    return p0
.end method

.method public static union(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/collection/SetProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SetLike;

    invoke-interface {p0, p1}, Lscala/collection/SetLike;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

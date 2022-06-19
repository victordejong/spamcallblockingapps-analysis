.class public abstract Lscala/collection/immutable/SetProxy$class;
.super Ljava/lang/Object;
.source "SetProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/SetProxy;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/immutable/SetProxy;Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;
    .locals 1

    .line 33
    invoke-interface {p0}, Lscala/collection/immutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/SetLike;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    invoke-static {p0, p1}, Lscala/collection/immutable/SetProxy$class;->newProxy(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)Lscala/collection/immutable/SetProxy;

    move-result-object p0

    return-object p0
.end method

.method public static $plus(Lscala/collection/immutable/SetProxy;Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;
    .locals 1

    .line 32
    invoke-interface {p0}, Lscala/collection/immutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/SetLike;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    invoke-static {p0, p1}, Lscala/collection/immutable/SetProxy$class;->newProxy(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)Lscala/collection/immutable/SetProxy;

    move-result-object p0

    return-object p0
.end method

.method public static empty(Lscala/collection/immutable/SetProxy;)Lscala/collection/immutable/SetProxy;
    .locals 1

    .line 31
    invoke-interface {p0}, Lscala/collection/immutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/GenericSetTemplate;

    invoke-interface {v0}, Lscala/collection/generic/GenericSetTemplate;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    invoke-static {p0, v0}, Lscala/collection/immutable/SetProxy$class;->newProxy(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)Lscala/collection/immutable/SetProxy;

    move-result-object p0

    return-object p0
.end method

.method private static newProxy(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)Lscala/collection/immutable/SetProxy;
    .locals 1

    .line 29
    new-instance v0, Lscala/collection/immutable/SetProxy$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;-><init>(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)V

    return-object v0
.end method

.method public static repr(Lscala/collection/immutable/SetProxy;)Lscala/collection/immutable/SetProxy;
    .locals 0

    return-object p0
.end method

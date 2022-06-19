.class public abstract Lscala/collection/mutable/SetProxy$class;
.super Ljava/lang/Object;
.source "SetProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SetProxy;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/mutable/SetProxy;Ljava/lang/Object;)Lscala/collection/mutable/SetProxy;
    .locals 1

    .line 26
    invoke-interface {p0}, Lscala/collection/mutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    return-object p0
.end method

.method public static $minus$eq(Lscala/collection/mutable/SetProxy;Ljava/lang/Object;)Lscala/collection/mutable/SetProxy;
    .locals 1

    .line 29
    invoke-interface {p0}, Lscala/collection/mutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/SetProxy;Ljava/lang/Object;)Lscala/collection/mutable/SetProxy;
    .locals 1

    .line 25
    invoke-interface {p0}, Lscala/collection/mutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    return-object p0
.end method

.method public static $plus$eq(Lscala/collection/mutable/SetProxy;Ljava/lang/Object;)Lscala/collection/mutable/SetProxy;
    .locals 1

    .line 28
    invoke-interface {p0}, Lscala/collection/mutable/SetProxy;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    return-object p0
.end method

.method public static empty(Lscala/collection/mutable/SetProxy;)Lscala/collection/mutable/SetProxy;
    .locals 1

    .line 24
    new-instance v0, Lscala/collection/mutable/SetProxy$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/SetProxy$$anon$1;-><init>(Lscala/collection/mutable/SetProxy;)V

    return-object v0
.end method

.method public static repr(Lscala/collection/mutable/SetProxy;)Lscala/collection/mutable/SetProxy;
    .locals 0

    return-object p0
.end method

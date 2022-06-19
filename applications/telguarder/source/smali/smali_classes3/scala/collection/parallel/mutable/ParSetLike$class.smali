.class public abstract Lscala/collection/parallel/mutable/ParSetLike$class;
.super Ljava/lang/Object;
.source "ParSetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/ParSetLike;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/parallel/mutable/ParSetLike;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParSet;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ParSetLike;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParSetLike;

    invoke-interface {p0, p1}, Lscala/collection/parallel/mutable/ParSetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParSetLike;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParSet;

    return-object p0
.end method

.method public static $plus(Lscala/collection/parallel/mutable/ParSetLike;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParSet;
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ParSetLike;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParSetLike;

    invoke-interface {p0, p1}, Lscala/collection/parallel/mutable/ParSetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParSetLike;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParSet;

    return-object p0
.end method

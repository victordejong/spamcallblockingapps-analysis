.class public abstract Lscala/collection/parallel/ParSetLike$class;
.super Ljava/lang/Object;
.source "ParSetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParSetLike;)V
    .locals 0

    return-void
.end method

.method public static diff(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .locals 1

    .line 45
    new-instance v0, Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;-><init>(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)V

    .line 44
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSetLike;->sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSet;

    return-object p0
.end method

.method public static union(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .locals 1

    .line 41
    new-instance v0, Lscala/collection/parallel/ParSetLike$$anonfun$union$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParSetLike$$anonfun$union$1;-><init>(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)V

    .line 40
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSetLike;->sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSet;

    return-object p0
.end method

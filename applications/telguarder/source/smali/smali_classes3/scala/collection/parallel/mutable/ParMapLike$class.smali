.class public abstract Lscala/collection/parallel/mutable/ParMapLike$class;
.super Ljava/lang/Object;
.source "ParMapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/ParMapLike;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/parallel/mutable/ParMapLike;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ParMapLike;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParMapLike;

    invoke-interface {p0, p1}, Lscala/collection/parallel/mutable/ParMapLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParMap;

    return-object p0
.end method

.method public static $plus(Lscala/collection/parallel/mutable/ParMapLike;Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ParMapLike;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {p0, p1}, Lscala/collection/parallel/mutable/ParMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ParMap;

    return-object p0
.end method

.class public abstract Lscala/collection/mutable/ArrayLike$class;
.super Ljava/lang/Object;
.source "ArrayLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ArrayLike;)V
    .locals 0

    return-void
.end method

.method public static deep(Lscala/collection/mutable/ArrayLike;)Lscala/collection/IndexedSeq;
    .locals 1

    .line 40
    new-instance v0, Lscala/collection/mutable/ArrayLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ArrayLike$$anon$1;-><init>(Lscala/collection/mutable/ArrayLike;)V

    return-object v0
.end method

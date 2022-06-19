.class public abstract Lscala/collection/IterableViewLike$Sliced$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$Sliced;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$Sliced;)Lscala/collection/Iterator;
    .locals 2

    .line 58
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Sliced;->scala$collection$IterableViewLike$Sliced$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$Sliced;->from()I

    move-result v1

    invoke-interface {p0}, Lscala/collection/IterableViewLike$Sliced;->until()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lscala/collection/Iterator;->slice(II)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

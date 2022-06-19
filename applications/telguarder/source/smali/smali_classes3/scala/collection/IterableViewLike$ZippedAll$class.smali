.class public abstract Lscala/collection/IterableViewLike$ZippedAll$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$ZippedAll;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$ZippedAll;)Lscala/collection/Iterator;
    .locals 3

    .line 97
    invoke-interface {p0}, Lscala/collection/IterableViewLike$ZippedAll;->scala$collection$IterableViewLike$ZippedAll$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$ZippedAll;->other()Lscala/collection/GenIterable;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/IterableViewLike$ZippedAll;->thisElem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/IterableViewLike$ZippedAll;->thatElem()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lscala/collection/Iterator;->zipAll(Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final viewIdentifier(Lscala/collection/IterableViewLike$ZippedAll;)Ljava/lang/String;
    .locals 0

    const-string p0, "Z"

    return-object p0
.end method

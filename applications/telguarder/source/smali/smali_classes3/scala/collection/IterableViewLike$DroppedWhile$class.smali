.class public abstract Lscala/collection/IterableViewLike$DroppedWhile$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$DroppedWhile;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$DroppedWhile;)Lscala/collection/Iterator;
    .locals 1

    .line 82
    invoke-interface {p0}, Lscala/collection/IterableViewLike$DroppedWhile;->scala$collection$IterableViewLike$DroppedWhile$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$DroppedWhile;->pred()Lscala/Function1;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->dropWhile(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

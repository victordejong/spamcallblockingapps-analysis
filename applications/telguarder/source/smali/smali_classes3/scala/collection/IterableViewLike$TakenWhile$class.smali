.class public abstract Lscala/collection/IterableViewLike$TakenWhile$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$TakenWhile;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$TakenWhile;)Lscala/collection/Iterator;
    .locals 1

    .line 78
    invoke-interface {p0}, Lscala/collection/IterableViewLike$TakenWhile;->scala$collection$IterableViewLike$TakenWhile$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$TakenWhile;->pred()Lscala/Function1;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->takeWhile(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

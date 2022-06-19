.class public abstract Lscala/collection/IterableViewLike$FlatMapped$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$FlatMapped;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$FlatMapped;)Lscala/collection/Iterator;
    .locals 1

    .line 66
    invoke-interface {p0}, Lscala/collection/IterableViewLike$FlatMapped;->scala$collection$IterableViewLike$FlatMapped$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$FlatMapped;->mapping()Lscala/Function1;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->flatMap(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

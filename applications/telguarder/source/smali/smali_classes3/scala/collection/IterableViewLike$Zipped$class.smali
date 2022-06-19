.class public abstract Lscala/collection/IterableViewLike$Zipped$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$Zipped;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$Zipped;)Lscala/collection/Iterator;
    .locals 1

    .line 87
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Zipped;->scala$collection$IterableViewLike$Zipped$$$outer()Lscala/collection/IterableViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/IterableViewLike$Zipped;->other()Lscala/collection/GenIterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->zip(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final viewIdentifier(Lscala/collection/IterableViewLike$Zipped;)Ljava/lang/String;
    .locals 0

    const-string p0, "Z"

    return-object p0
.end method

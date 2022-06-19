.class public abstract Lscala/collection/IterableViewLike$Forced$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$Forced;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/IterableViewLike$Forced;)Lscala/collection/Iterator;
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Forced;->forced()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

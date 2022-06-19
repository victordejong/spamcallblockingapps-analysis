.class public abstract Lorg/bluecabin/textoo/impl/Change$class;
.super Ljava/lang/Object;
.source "Change.scala"


# direct methods
.method public static $init$(Lorg/bluecabin/textoo/impl/Change;)V
    .locals 0

    return-void
.end method

.method public static addTo(Lorg/bluecabin/textoo/impl/Change;Lscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;
    .locals 0

    .line 11
    invoke-virtual {p1, p0}, Lscala/collection/immutable/Queue;->enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;

    move-result-object p0

    return-object p0
.end method

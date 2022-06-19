.class public abstract Lscala/collection/mutable/IndexedSeqView$Sliced$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView$Sliced;)V
    .locals 0

    return-void
.end method

.method public static length(Lscala/collection/mutable/IndexedSeqView$Sliced;)I
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Sliced;->endpoints()Lscala/collection/generic/SliceInterval;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->width()I

    move-result p0

    return p0
.end method

.method public static update(Lscala/collection/mutable/IndexedSeqView$Sliced;ILjava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_0

    .line 53
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Sliced;->from()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Sliced;->until()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Sliced;->scala$collection$mutable$IndexedSeqView$Sliced$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Sliced;->from()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/IndexedSeqView;->update(ILjava/lang/Object;)V

    return-void

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

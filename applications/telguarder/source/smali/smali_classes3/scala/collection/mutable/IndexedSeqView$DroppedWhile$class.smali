.class public abstract Lscala/collection/mutable/IndexedSeqView$DroppedWhile$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView$DroppedWhile;)V
    .locals 0

    return-void
.end method

.method public static update(Lscala/collection/mutable/IndexedSeqView$DroppedWhile;ILjava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    .line 69
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$DroppedWhile;->scala$collection$mutable$IndexedSeqView$DroppedWhile$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$DroppedWhile;->start()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/IndexedSeqView;->update(ILjava/lang/Object;)V

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

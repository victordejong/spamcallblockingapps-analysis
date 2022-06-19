.class public abstract Lscala/collection/mutable/IndexedSeqView$TakenWhile$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView$TakenWhile;)V
    .locals 0

    return-void
.end method

.method public static update(Lscala/collection/mutable/IndexedSeqView$TakenWhile;ILjava/lang/Object;)V
    .locals 1

    .line 63
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$TakenWhile;->len()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$TakenWhile;->scala$collection$mutable$IndexedSeqView$TakenWhile$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView;->update(ILjava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

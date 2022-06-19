.class public abstract Lscala/collection/mutable/IndexedSeqView$Filtered$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView$Filtered;)V
    .locals 0

    return-void
.end method

.method public static update(Lscala/collection/mutable/IndexedSeqView$Filtered;ILjava/lang/Object;)V
    .locals 1

    .line 58
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Filtered;->scala$collection$mutable$IndexedSeqView$Filtered$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Filtered;->index()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-interface {v0, p0, p2}, Lscala/collection/mutable/IndexedSeqView;->update(ILjava/lang/Object;)V

    return-void
.end method

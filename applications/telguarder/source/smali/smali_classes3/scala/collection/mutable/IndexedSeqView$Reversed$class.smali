.class public abstract Lscala/collection/mutable/IndexedSeqView$Reversed$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView$Reversed;)V
    .locals 0

    return-void
.end method

.method public static update(Lscala/collection/mutable/IndexedSeqView$Reversed;ILjava/lang/Object;)V
    .locals 1

    .line 74
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Reversed;->scala$collection$mutable$IndexedSeqView$Reversed$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView$Reversed;->scala$collection$mutable$IndexedSeqView$Reversed$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    invoke-interface {v0, p0, p2}, Lscala/collection/mutable/IndexedSeqView;->update(ILjava/lang/Object;)V

    return-void
.end method

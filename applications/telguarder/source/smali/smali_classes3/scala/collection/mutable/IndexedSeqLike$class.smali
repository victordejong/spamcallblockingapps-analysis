.class public abstract Lscala/collection/mutable/IndexedSeqLike$class;
.super Ljava/lang/Object;
.source "IndexedSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqLike;)V
    .locals 0

    return-void
.end method

.method public static thisCollection(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 39
    check-cast p0, Lscala/collection/mutable/IndexedSeq;

    return-object p0
.end method

.method public static toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 40
    check-cast p1, Lscala/collection/mutable/IndexedSeq;

    return-object p1
.end method

.method public static view(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 52
    new-instance v0, Lscala/collection/mutable/IndexedSeqLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/IndexedSeqLike$$anon$1;-><init>(Lscala/collection/mutable/IndexedSeqLike;)V

    return-object v0
.end method

.method public static view(Lscala/collection/mutable/IndexedSeqLike;II)Lscala/collection/mutable/IndexedSeqView;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqLike;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView;->slice(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    return-object p0
.end method

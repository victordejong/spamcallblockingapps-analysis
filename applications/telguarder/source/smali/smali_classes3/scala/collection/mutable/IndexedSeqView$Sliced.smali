.class public interface abstract Lscala/collection/mutable/IndexedSeqView$Sliced;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Sliced;
.implements Lscala/collection/mutable/IndexedSeqView$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/IndexedSeqView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Sliced"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>;>.Sliced;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.Transformed<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$mutable$IndexedSeqView$Sliced$$$outer()Lscala/collection/mutable/IndexedSeqView;
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method

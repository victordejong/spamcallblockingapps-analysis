.class public interface abstract Lscala/collection/mutable/IndexedSeqView$Reversed;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Reversed;
.implements Lscala/collection/mutable/IndexedSeqView$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/IndexedSeqView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Reversed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>;>.Reversed;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.Transformed<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract synthetic scala$collection$mutable$IndexedSeqView$Reversed$$$outer()Lscala/collection/mutable/IndexedSeqView;
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method

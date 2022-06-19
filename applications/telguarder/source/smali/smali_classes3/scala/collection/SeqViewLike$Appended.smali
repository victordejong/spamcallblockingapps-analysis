.class public interface abstract Lscala/collection/SeqViewLike$Appended;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Appended;
.implements Lscala/collection/SeqViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Appended"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Appended<TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<TB;>;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract restSeq()Lscala/collection/GenSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;
.end method

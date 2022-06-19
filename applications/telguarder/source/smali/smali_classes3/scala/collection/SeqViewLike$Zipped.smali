.class public interface abstract Lscala/collection/SeqViewLike$Zipped;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Zipped;
.implements Lscala/collection/SeqViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Zipped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Zipped<TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$SeqViewLike$Zipped$$$outer()Lscala/collection/SeqViewLike;
.end method

.method public abstract thatSeq()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TB;>;"
        }
    .end annotation
.end method

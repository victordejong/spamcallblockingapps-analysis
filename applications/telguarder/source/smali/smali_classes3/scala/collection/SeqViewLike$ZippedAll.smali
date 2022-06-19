.class public interface abstract Lscala/collection/SeqViewLike$ZippedAll;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$ZippedAll;
.implements Lscala/collection/SeqViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "ZippedAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A1:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.ZippedAll<TA1;TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/Tuple2<",
        "TA1;TB;>;>;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TA1;TB;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$SeqViewLike$ZippedAll$$$outer()Lscala/collection/SeqViewLike;
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

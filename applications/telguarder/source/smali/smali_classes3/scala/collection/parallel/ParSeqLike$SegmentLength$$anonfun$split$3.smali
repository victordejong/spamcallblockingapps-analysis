.class public final Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$SegmentLength;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Segment",
        "Length;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike$SegmentLength;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$SegmentLength;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Segment",
            "Length;",
            ")V"
        }
    .end annotation

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;->$outer:Lscala/collection/parallel/ParSeqLike$SegmentLength;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 352
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$SegmentLength;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$SegmentLength;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Segment",
            "Length;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Lscala/collection/parallel/ParSeqLike$SegmentLength;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;->$outer:Lscala/collection/parallel/ParSeqLike$SegmentLength;

    invoke-virtual {v1}, Lscala/collection/parallel/ParSeqLike$SegmentLength;->scala$collection$parallel$ParSeqLike$SegmentLength$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;->$outer:Lscala/collection/parallel/ParSeqLike$SegmentLength;

    iget-object v2, v2, Lscala/collection/parallel/ParSeqLike$SegmentLength;->scala$collection$parallel$ParSeqLike$SegmentLength$$pred:Lscala/Function1;

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3;->$outer:Lscala/collection/parallel/ParSeqLike$SegmentLength;

    iget v3, v3, Lscala/collection/parallel/ParSeqLike$SegmentLength;->scala$collection$parallel$ParSeqLike$SegmentLength$$from:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParSeqLike$SegmentLength;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V

    return-object v0

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

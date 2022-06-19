.class public final Lscala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$11;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$SameElements;->split()Lscala/collection/Seq;
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
        "Lscala/collection/parallel/SeqSplitter<",
        "TU;>;>;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.SameElements<TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike$SameElements;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$SameElements;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.SameElements<TU;>;)V"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$11;->$outer:Lscala/collection/parallel/ParSeqLike$SameElements;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 427
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$11;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$SameElements;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$SameElements;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.SameElements<TU;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    new-instance v0, Lscala/collection/parallel/ParSeqLike$SameElements;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$11;->$outer:Lscala/collection/parallel/ParSeqLike$SameElements;

    invoke-virtual {v1}, Lscala/collection/parallel/ParSeqLike$SameElements;->scala$collection$parallel$ParSeqLike$SameElements$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/parallel/ParSeqLike$SameElements;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

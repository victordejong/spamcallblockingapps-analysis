.class public final Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$Updated;->split()Lscala/collection/Seq;
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
        "TT;TRepr;TSequential;>.Updated<TU;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike$Updated;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$Updated;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Updated<TU;TThat;>;)V"
        }
    .end annotation

    .line 440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->$outer:Lscala/collection/parallel/ParSeqLike$Updated;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$Updated;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$Updated;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Updated<TU;TThat;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 440
    new-instance v6, Lscala/collection/parallel/ParSeqLike$Updated;

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->$outer:Lscala/collection/parallel/ParSeqLike$Updated;

    invoke-virtual {v0}, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->$outer:Lscala/collection/parallel/ParSeqLike$Updated;

    iget v0, v0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pos:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->$outer:Lscala/collection/parallel/ParSeqLike$Updated;

    iget-object v3, v0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$elem:Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;->$outer:Lscala/collection/parallel/ParSeqLike$Updated;

    iget-object v4, v0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lscala/collection/parallel/SeqSplitter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/ParSeqLike$Updated;-><init>(Lscala/collection/parallel/ParSeqLike;ILjava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;)V

    return-object v6

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

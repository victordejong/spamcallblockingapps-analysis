.class public final Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$TakeWhile;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.TakeWhile<TU;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$TakeWhile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.TakeWhile<TU;TThis;>;)V"
        }
    .end annotation

    .line 1248
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->$outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1248
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$TakeWhile;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$TakeWhile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.TakeWhile<TU;TThis;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1248
    new-instance v6, Lscala/collection/parallel/ParIterableLike$TakeWhile;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->$outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$TakeWhile;->scala$collection$parallel$ParIterableLike$TakeWhile$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->$outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;

    iget v0, v0, Lscala/collection/parallel/ParIterableLike$TakeWhile;->scala$collection$parallel$ParIterableLike$TakeWhile$$pos:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->$outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;

    iget-object v3, v0, Lscala/collection/parallel/ParIterableLike$TakeWhile;->scala$collection$parallel$ParIterableLike$TakeWhile$$pred:Lscala/Function1;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15;->$outer:Lscala/collection/parallel/ParIterableLike$TakeWhile;

    iget-object v4, v0, Lscala/collection/parallel/ParIterableLike$TakeWhile;->scala$collection$parallel$ParIterableLike$TakeWhile$$cbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lscala/collection/parallel/IterableSplitter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/ParIterableLike$TakeWhile;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    return-object v6

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

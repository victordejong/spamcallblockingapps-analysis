.class public final Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$SplitAt;->split()Lscala/collection/Seq;
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
        "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$SplitAt;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$SplitAt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;)V"
        }
    .end annotation

    .line 1231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->$outer:Lscala/collection/parallel/ParIterableLike$SplitAt;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1231
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$SplitAt;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$SplitAt;
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
            "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1231
    new-instance v6, Lscala/collection/parallel/ParIterableLike$SplitAt;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->$outer:Lscala/collection/parallel/ParIterableLike$SplitAt;

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->$outer:Lscala/collection/parallel/ParIterableLike$SplitAt;

    iget v3, v3, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$at:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v3

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v4}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->$outer:Lscala/collection/parallel/ParIterableLike$SplitAt;

    iget-object v3, v0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfBefore:Lscala/collection/parallel/CombinerFactory;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;->$outer:Lscala/collection/parallel/ParIterableLike$SplitAt;

    iget-object v4, v0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfAfter:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lscala/collection/parallel/IterableSplitter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/ParIterableLike$SplitAt;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    return-object v6

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

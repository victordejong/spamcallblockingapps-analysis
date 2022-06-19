.class public final Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/IterableSplitter$Taken;->takeSeq(Lscala/collection/Seq;Lscala/Function2;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TPI;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;TPI;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/IterableSplitter$Taken;

.field private final taker$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/IterableSplitter$Taken;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Taken;)V"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->$outer:Lscala/collection/parallel/IterableSplitter$Taken;

    iput-object p2, p0, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->taker$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->apply(Lscala/Tuple2;)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/IterableSplitter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TPI;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)TPI;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    .line 443
    invoke-virtual {v0}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    iget-object v1, p0, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->$outer:Lscala/collection/parallel/IterableSplitter$Taken;

    invoke-virtual {v1}, Lscala/collection/parallel/IterableSplitter$Taken;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->taker$1:Lscala/Function2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$5;->$outer:Lscala/collection/parallel/IterableSplitter$Taken;

    invoke-virtual {v2}, Lscala/collection/parallel/IterableSplitter$Taken;->remaining()I

    move-result v2

    .line 442
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    .line 443
    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    return-object p1

    .line 442
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

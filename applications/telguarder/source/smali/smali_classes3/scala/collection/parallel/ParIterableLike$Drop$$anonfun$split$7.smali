.class public final Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$Drop;->split()Lscala/collection/Seq;
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
        "TT;TRepr;TSequential;>.Drop<TU;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$Drop;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$Drop;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Drop<TU;TThis;>;)V"
        }
    .end annotation

    .line 1194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1194
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Drop;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Drop;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Drop<TU;TThis;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1195
    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    iget v1, v1, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$n:I

    if-le v0, v1, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$Drop;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    iget-object v3, v3, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$cbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$Drop;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    goto :goto_0

    .line 1196
    :cond_0
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Drop;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    iget v2, v2, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$n:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v3}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7;->$outer:Lscala/collection/parallel/ParIterableLike$Drop;

    iget-object v3, v3, Lscala/collection/parallel/ParIterableLike$Drop;->scala$collection$parallel$ParIterableLike$Drop$$cbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$Drop;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    :goto_0
    return-object v0

    .line 1194
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

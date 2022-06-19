.class public final Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$ZipAll;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TS;>;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$ZipAll;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$ZipAll;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;)V"
        }
    .end annotation

    .line 1308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->$outer:Lscala/collection/parallel/ParIterableLike$ZipAll;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1308
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$ZipAll;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$ZipAll;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;"
        }
    .end annotation

    .line 1308
    new-instance v8, Lscala/collection/parallel/ParIterableLike$ZipAll;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->$outer:Lscala/collection/parallel/ParIterableLike$ZipAll;

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->$outer:Lscala/collection/parallel/ParIterableLike$ZipAll;

    iget-object v3, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->$outer:Lscala/collection/parallel/ParIterableLike$ZipAll;

    iget-object v4, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;->$outer:Lscala/collection/parallel/ParIterableLike$ZipAll;

    iget-object v5, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lscala/collection/parallel/SeqSplitter;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lscala/collection/parallel/ParIterableLike$ZipAll;-><init>(Lscala/collection/parallel/ParIterableLike;ILjava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v8
.end method

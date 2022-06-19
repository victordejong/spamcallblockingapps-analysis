.class public final Lscala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$Zip;->split()Lscala/collection/Seq;
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
        "Lscala/collection/parallel/SeqSplitter<",
        "TS;>;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$Zip;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$Zip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;)V"
        }
    .end annotation

    .line 1292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19;->$outer:Lscala/collection/parallel/ParIterableLike$Zip;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1292
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Zip;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Zip;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;"
        }
    .end annotation

    .line 1292
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Zip;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19;->$outer:Lscala/collection/parallel/ParIterableLike$Zip;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$Zip;->scala$collection$parallel$ParIterableLike$Zip$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19;->$outer:Lscala/collection/parallel/ParIterableLike$Zip;

    iget-object v2, v2, Lscala/collection/parallel/ParIterableLike$Zip;->scala$collection$parallel$ParIterableLike$Zip$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$Zip;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method

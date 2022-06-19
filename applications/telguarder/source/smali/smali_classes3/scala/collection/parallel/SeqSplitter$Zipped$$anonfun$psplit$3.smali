.class public final Lscala/collection/parallel/SeqSplitter$Zipped$$anonfun$psplit$3;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/SeqSplitter$Zipped;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
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
        "TS;>;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>.Zipped<TS;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter$Zipped;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Zipped<TS;>;)V"
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 620
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped$$anonfun$psplit$3;->apply(Lscala/Tuple2;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Zipped<TS;>;"
        }
    .end annotation

    .line 620
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v0, p1}, Lscala/collection/parallel/SeqSplitter;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

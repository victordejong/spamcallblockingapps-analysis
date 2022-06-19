.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->endsWith(Lscala/collection/GenSeq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/ParSeq<",
        "TS;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final that$4:Lscala/collection/GenSeq;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->that$4:Lscala/collection/GenSeq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    check-cast p1, Lscala/collection/parallel/ParSeq;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->apply(Lscala/collection/parallel/ParSeq;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParSeq;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeq<",
            "TS;>;)Z"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->that$4:Lscala/collection/GenSeq;

    invoke-interface {v0}, Lscala/collection/GenSeq;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->that$4:Lscala/collection/GenSeq;

    invoke-interface {v0}, Lscala/collection/GenSeq;->length()I

    move-result v0

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2$$anon$8;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2$$anon$8;-><init>(Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;)V

    .line 202
    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->that$4:Lscala/collection/GenSeq;

    invoke-interface {v3}, Lscala/collection/GenSeq;->length()I

    move-result v3

    .line 203
    iget-object v4, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v4}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v4

    new-instance v5, Lscala/collection/parallel/ParSeqLike$SameElements;

    iget-object v6, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v6}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v7

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iget-object v10, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v10}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v10

    sub-int/2addr v10, v3

    aput v10, v9, v1

    aput v3, v9, v2

    invoke-virtual {v8, v9}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-interface {v7, v1}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v1

    invoke-interface {v1, v2}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {v6, v1}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v5, v6, v0, p1}, Lscala/collection/parallel/ParSeqLike$SameElements;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v4, v5}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

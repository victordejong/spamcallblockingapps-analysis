.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->sameElements(Lscala/collection/GenIterable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/ParSeq<",
        "TU;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Lscala/collection/parallel/ParSeq;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;->apply(Lscala/collection/parallel/ParSeq;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParSeq;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeq<",
            "TU;>;)Z"
        }
    .end annotation

    .line 185
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2$$anon$7;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2$$anon$7;-><init>(Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;)V

    .line 186
    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v1}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v1

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v1}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParSeqLike$SameElements;

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v4

    invoke-interface {v3, v4}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v4

    invoke-interface {v4, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1}, Lscala/collection/parallel/ParSeqLike$SameElements;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v1, v2}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->startsWith(Lscala/collection/GenSeq;I)Z
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

.field private final offset$1:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    iput p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->offset$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, Lscala/collection/parallel/ParSeq;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->apply(Lscala/collection/parallel/ParSeq;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParSeq;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeq<",
            "TS;>;)Z"
        }
    .end annotation

    .line 173
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->offset$1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v0

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    iget v4, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->offset$1:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    goto :goto_2

    .line 177
    :cond_2
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2$$anon$6;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2$$anon$6;-><init>(Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;)V

    .line 178
    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v3

    .line 179
    new-instance v4, Lscala/collection/parallel/ParSeqLike$SameElements;

    iget-object v5, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v5}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v6

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v8, 0x2

    new-array v8, v8, [I

    iget v9, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->offset$1:I

    aput v9, v8, v1

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v1

    aput v1, v8, v2

    invoke-virtual {v7, v8}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-interface {v6, v1}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v1

    invoke-interface {v1, v2}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {v5, v1}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v4, v5, v0, p1}, Lscala/collection/parallel/ParSeqLike$SameElements;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    .line 178
    invoke-interface {v3, v4}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    .line 173
    :cond_3
    :goto_0
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->offset$1:I

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v3}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

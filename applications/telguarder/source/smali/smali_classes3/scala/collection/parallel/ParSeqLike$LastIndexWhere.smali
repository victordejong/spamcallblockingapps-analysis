.class public Lscala/collection/parallel/ParSeqLike$LastIndexWhere;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParSeqLike$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LastIndexWhere"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Accessor<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.",
        "LastIndexWhere;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final pit:Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pos:I

.field private volatile result:I

.field public final scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 379
    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred:Lscala/Function1;

    iput p3, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pos:I

    iput-object p4, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, -0x1

    .line 381
    iput p1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result:I

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 379
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 382
    iget p1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pos:I

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->indexFlag()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred:Lscala/Function1;

    invoke-interface {p1, v0}, Lscala/collection/parallel/SeqSplitter;->lastIndexWhere(Lscala/Function1;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 385
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result_$eq(I)V

    .line 386
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    iget v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pos:I

    invoke-interface {p1, v0}, Lscala/collection/parallel/SeqSplitter;->setIndexFlagIfGreater(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->merge(Lscala/collection/parallel/ParSeqLike$LastIndexWhere;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$LastIndexWhere;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.",
            "LastIndexWhere;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result p1

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result v0

    if-eq v0, v1, :cond_1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result p1

    .line 394
    :goto_0
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result_$eq(I)V

    return-void
.end method

.method public mergeThrowables(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    .line 389
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p1}, Lscala/collection/parallel/package$;->unsupported()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public pit()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 379
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public result()I
    .locals 1

    .line 381
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result:I

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public result_$eq(I)V
    .locals 0

    .line 381
    iput p1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result:I

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 379
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->result_$eq(I)V

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->scala$collection$parallel$ParSeqLike$LastIndexWhere$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 379
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->scala$collection$parallel$ParSeqLike$LastIndexWhere$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$LastIndexWhere$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 379
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 379
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 379
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.",
            "LastIndexWhere;",
            ">;>;"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v0

    .line 392
    iget v1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->pos:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$7;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$7;-><init>(Lscala/collection/parallel/ParSeqLike$LastIndexWhere;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenIterable;

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$8;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$8;-><init>(Lscala/collection/parallel/ParSeqLike$LastIndexWhere;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$9;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$9;-><init>(Lscala/collection/parallel/ParSeqLike$LastIndexWhere;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/generic/FilterMonadic;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 379
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 379
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->toString(Lscala/collection/parallel/ParIterableLike$Accessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 379
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

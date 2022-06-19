.class public abstract Lscala/collection/parallel/ParSeqLike$class;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/parallel/ParSeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    .line 252
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/parallel/mutable/ParArray$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/GenSeq;

    invoke-interface {p0, v0, p1, v4, p2}, Lscala/collection/parallel/ParSeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/parallel/ParSeqLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$colon(Lscala/collection/parallel/ParSeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 4

    .line 248
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/ParArray$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/GenSeq;

    invoke-interface {p0, v3, p1, v3, p2}, Lscala/collection/parallel/ParSeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static corresponds(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 2

    .line 280
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$2;

    invoke-direct {v1, p0, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$2;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps;->ifParSeq(Lscala/Function1;)Lscala/collection/parallel/TraversableOps$Otherwise;

    move-result-object v0

    .line 283
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps$Otherwise;->otherwise(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static diff(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 286
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V

    .line 285
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static distinct(Lscala/collection/parallel/ParSeqLike;)Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 320
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$distinct$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$distinct$1;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 319
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static down(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/SeqSplitter;
    .locals 0

    .line 332
    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    return-object p1
.end method

.method public static endsWith(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)Z
    .locals 2

    .line 197
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$2;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps;->ifParSeq(Lscala/Function1;)Lscala/collection/parallel/TraversableOps$Otherwise;

    move-result-object v0

    .line 205
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$endsWith$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps$Otherwise;->otherwise(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;I)I
    .locals 8

    .line 125
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 127
    :cond_1
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anon$4;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$$anon$4;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 128
    move-object v2, v1

    check-cast v2, Lscala/collection/generic/AtomicIndexFlag;

    const v3, 0x7fffffff

    invoke-interface {v2, v3}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 129
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParSeqLike$IndexWhere;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v4

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput p2, v6, v0

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-virtual {v5, v6}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-interface {v4, v0}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, v7}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v0

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v3, p0, p1, p2, v0}, Lscala/collection/parallel/ParSeqLike$IndexWhere;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static intersect(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 311
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$intersect$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$intersect$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V

    .line 310
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static iterator(Lscala/collection/parallel/ParSeqLike;)Lscala/collection/parallel/PreciseSplitter;
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p0

    return-object p0
.end method

.method public static lastIndexWhere(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;I)I
    .locals 9

    if-gez p2, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    .line 144
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    add-int/2addr p2, v1

    .line 145
    :goto_0
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anon$5;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anon$5;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 146
    move-object v2, v0

    check-cast v2, Lscala/collection/generic/AtomicIndexFlag;

    const/high16 v3, -0x80000000

    invoke-interface {v2, v3}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 147
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v4

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p2, v6, v7

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v8

    sub-int/2addr v8, p2

    aput v8, v6, v1

    invoke-virtual {v5, v6}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object p2

    invoke-interface {v4, p2}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p2

    invoke-interface {p2, v7}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p2

    invoke-interface {p2, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object p2

    check-cast p2, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v3, p0, p1, v7, p2}, Lscala/collection/parallel/ParSeqLike$LastIndexWhere;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static padTo(Lscala/collection/parallel/ParSeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 4

    .line 255
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    .line 256
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    new-instance v2, Lscala/collection/parallel/immutable/Repetition;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-direct {v2, p2, p1}, Lscala/collection/parallel/immutable/Repetition;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0, v2, v1, p3}, Lscala/collection/parallel/ParSeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result p1

    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-interface {p0, p1, p2, v1, p3}, Lscala/collection/parallel/ParSeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static patch(Lscala/collection/parallel/ParSeqLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 208
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 209
    sget-object v1, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v1, p2}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/TraversableOps;->isParSeq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v1

    invoke-interface {p4, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2}, Lscala/collection/GenSeq;->size()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v2}, Lscala/collection/parallel/package$;->MIN_FOR_COPY()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 210
    sget-object v1, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v1, p2}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p2

    invoke-interface {p2}, Lscala/collection/parallel/TraversableOps;->asParSeq()Lscala/collection/parallel/ParSeq;

    move-result-object p2

    .line 211
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p3, v3, v5

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result p3

    sub-int/2addr p3, p1

    sub-int/2addr p3, v0

    const/4 p1, 0x2

    aput p3, v3, p1

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object p3

    invoke-interface {v1, p3}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p3

    .line 212
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anonfun$2;

    invoke-direct {v0, p0, p4}, Lscala/collection/parallel/ParSeqLike$$anonfun$2;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p4

    .line 213
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p3, v4}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v0, p0, p4, v1}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    .line 214
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$3;

    invoke-direct {v1, p0, p2, p4}, Lscala/collection/parallel/ParSeqLike$$anonfun$3;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/parallel/ParSeq;Lscala/collection/parallel/CombinerFactory;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->wrap(Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;

    move-result-object p2

    .line 218
    new-instance v1, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p3, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v1, p0, p4, p1}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    .line 219
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p3

    new-instance p4, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$1;

    invoke-direct {p4, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$1;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {p3, p2, p4}, Lscala/collection/parallel/ParIterableLike$TaskOps;->parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p2

    new-instance p3, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$2;

    invoke-direct {p3, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {p2, v1, p3}, Lscala/collection/parallel/ParIterableLike$TaskOps;->parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p2

    .line 220
    new-instance p3, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$3;

    invoke-direct {p3, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$patch$3;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 219
    invoke-interface {p2, p3}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {p2}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/ParSeqLike$class;->patch_sequential(Lscala/collection/parallel/ParSeqLike;ILscala/collection/Seq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static patch_sequential(Lscala/collection/parallel/ParSeqLike;ILscala/collection/Seq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 226
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    .line 227
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p4

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 228
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v2, p3, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p3

    .line 229
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput p1, v3, v1

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    const/4 p1, 0x2

    aput v4, v3, p1

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object p3

    invoke-interface {v0, p3}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p3

    .line 230
    invoke-interface {p3, v1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-interface {p4, v0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 231
    invoke-interface {p4, p2}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 232
    invoke-interface {p3, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-interface {p4, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 233
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reverse(Lscala/collection/parallel/ParSeqLike;)Lscala/collection/parallel/ParSeq;
    .locals 4

    .line 151
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Reverse;

    new-instance v2, Lscala/collection/parallel/ParSeqLike$$anonfun$reverse$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$reverse$1;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lscala/collection/parallel/ParSeqLike$Reverse;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParSeqLike$$anonfun$reverse$2;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$reverse$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {v1, v2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static reverseMap(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 154
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 156
    new-instance v1, Lscala/collection/parallel/ParSeqLike$ReverseMap;

    new-instance v2, Lscala/collection/parallel/ParSeqLike$$anonfun$reverseMap$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$reverseMap$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p2

    invoke-direct {v1, p0, p1, v2, p2}, Lscala/collection/parallel/ParSeqLike$ReverseMap;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParSeqLike$$anonfun$reverseMap$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$reverseMap$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 155
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParSeqLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lscala/collection/SeqLike;->reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static sameElements(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenIterable;)Z
    .locals 2

    .line 184
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps;->ifParSeq(Lscala/Function1;)Lscala/collection/parallel/TraversableOps$Otherwise;

    move-result-object v0

    .line 187
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenIterable;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps$Otherwise;->otherwise(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static segmentLength(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;I)I
    .locals 8

    .line 107
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 109
    :cond_1
    new-instance v0, Lscala/collection/parallel/ParSeqLike$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$$anon$3;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 110
    move-object v2, v0

    check-cast v2, Lscala/collection/generic/AtomicIndexFlag;

    const v3, 0x7fffffff

    invoke-interface {v2, v3}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 111
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParSeqLike$SegmentLength;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v4

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput p2, v6, v1

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v7

    sub-int/2addr v7, p2

    const/4 p2, 0x1

    aput v7, v6, p2

    invoke-virtual {v5, v6}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-interface {v4, v5}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v4

    invoke-interface {v4, p2}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParSeqLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p2

    invoke-interface {p2, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object p2

    check-cast p2, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v3, p0, p1, v1, p2}, Lscala/collection/parallel/ParSeqLike$SegmentLength;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static size(Lscala/collection/parallel/ParSeqLike;)I
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result p0

    return p0
.end method

.method public static startsWith(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;I)Z
    .locals 2

    .line 172
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;

    invoke-direct {v1, p0, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$2;-><init>(Lscala/collection/parallel/ParSeqLike;I)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps;->ifParSeq(Lscala/Function1;)Lscala/collection/parallel/TraversableOps$Otherwise;

    move-result-object v0

    .line 182
    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$startsWith$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;I)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TraversableOps$Otherwise;->otherwise(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toSeq(Lscala/collection/parallel/ParSeqLike;)Lscala/collection/parallel/ParSeq;
    .locals 0

    .line 325
    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static toString(Lscala/collection/parallel/ParSeqLike;)Ljava/lang/String;
    .locals 3

    .line 323
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->stringPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v1, "("

    invoke-virtual {p0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    const-string v2, ")"

    invoke-interface {v0, p0, v1, v2}, Lscala/collection/Iterable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/parallel/ParSeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 8

    .line 236
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 238
    new-instance v7, Lscala/collection/parallel/ParSeqLike$Updated;

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$updated$1;

    invoke-direct {v1, p0, p3}, Lscala/collection/parallel/ParSeqLike$$anonfun$updated$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v5

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParSeqLike$Updated;-><init>(Lscala/collection/parallel/ParSeqLike;ILjava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v7}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 239
    new-instance p2, Lscala/collection/parallel/ParSeqLike$$anonfun$updated$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$updated$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 238
    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 237
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {p0, p3}, Lscala/collection/parallel/ParSeqLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3}, Lscala/collection/SeqLike;->updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static view(Lscala/collection/parallel/ParSeqLike;)Lscala/collection/SeqView;
    .locals 0

    .line 328
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->view()Lscala/collection/SeqView;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 8

    .line 259
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParSeqLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/TraversableOps;->isParSeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/TraversableOps;->asParSeq()Lscala/collection/parallel/ParSeq;

    move-result-object p1

    .line 261
    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 262
    new-instance v7, Lscala/collection/parallel/ParSeqLike$Zip;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->length()I

    move-result v2

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v3

    new-instance v1, Lscala/collection/parallel/ParSeqLike$$anonfun$zip$1;

    invoke-direct {v1, p0, p2}, Lscala/collection/parallel/ParSeqLike$$anonfun$zip$1;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParSeqLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v4

    invoke-interface {p0}, Lscala/collection/parallel/ParSeqLike;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v5

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParSeqLike$Zip;-><init>(Lscala/collection/parallel/ParSeqLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v7}, Lscala/collection/parallel/ParSeqLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 263
    new-instance p2, Lscala/collection/parallel/ParSeqLike$$anonfun$zip$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$zip$2;-><init>(Lscala/collection/parallel/ParSeqLike;)V

    .line 262
    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 261
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 266
    :cond_0
    invoke-interface {p0, p1, p2}, Lscala/collection/parallel/ParSeqLike;->scala$collection$parallel$ParSeqLike$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

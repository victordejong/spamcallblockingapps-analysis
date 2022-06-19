.class public Lscala/collection/parallel/SeqSplitter$Appended;
.super Lscala/collection/parallel/IterableSplitter$Appended;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/SeqSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Appended"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "PI::",
        "Lscala/collection/parallel/SeqSplitter<",
        "TU;>;>",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>.Appended<TU;TPI;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;TPI;)V"
        }
    .end annotation

    .line 586
    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$Appended;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    return-void
.end method


# virtual methods
.method public appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->dup()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 587
    invoke-super {p0}, Lscala/collection/parallel/IterableSplitter$Appended;->dup()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TU;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->indexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TU;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TU;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.Mapped<TS;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.Taken;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->newTaken(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public patchParSeq(ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.Patched<TU;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->patchParSeq(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;

    move-result-object p1

    return-object p1
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TU;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->firstNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->scala$collection$parallel$SeqSplitter$Appended$$$outer()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v0

    const/4 v1, 0x0

    .line 593
    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v2

    .line 594
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$1;

    invoke-direct {v4, p0}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$1;-><init>(Lscala/collection/parallel/SeqSplitter$Appended;)V

    sget-object v5, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v5}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/Seq;

    .line 595
    invoke-interface {v3}, Lscala/collection/Seq;->init()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/IterableLike;

    invoke-interface {v3}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/collection/GenIterable;

    sget-object v6, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v6}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lscala/collection/IterableLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/GenIterable;

    sget-object v5, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v5}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v4, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;

    invoke-direct {v4, p0, v0, v2}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;-><init>(Lscala/collection/parallel/SeqSplitter$Appended;ILscala/runtime/BooleanRef;)V

    sget-object v5, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v5}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lscala/collection/TraversableLike;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    .line 602
    invoke-interface {v3}, Lscala/collection/Seq;->init()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/GenIterable;

    sget-object v4, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v4}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v3, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$8;

    invoke-direct {v3, p0, v0}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$8;-><init>(Lscala/collection/parallel/SeqSplitter$Appended;I)V

    invoke-interface {p1, v3}, Lscala/collection/TraversableLike;->span(Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    .line 603
    new-instance v3, Lscala/Tuple2;

    new-instance v4, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$9;

    invoke-direct {v4, p0}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$9;-><init>(Lscala/collection/parallel/SeqSplitter$Appended;)V

    sget-object v5, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v5}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    new-instance v4, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$10;

    invoke-direct {v4, p0}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$10;-><init>(Lscala/collection/parallel/SeqSplitter$Appended;)V

    sget-object v5, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v5}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lscala/Tuple2;

    invoke-virtual {v3}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    .line 606
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->scala$collection$parallel$SeqSplitter$Appended$$$outer()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    invoke-interface {v3, v0}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->that()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    check-cast v3, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v3, p1}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    .line 610
    iget-boolean v2, v2, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lscala/collection/Seq;->init()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableLike;

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Lscala/collection/parallel/SeqSplitter$Appended;

    invoke-interface {v0}, Lscala/collection/Seq;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {p1}, Lscala/collection/Seq;->head()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v0, v6}, Lscala/collection/parallel/SeqSplitter;->appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object v0

    aput-object v0, v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v3, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lscala/collection/TraversableLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    invoke-interface {p1}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/TraversableLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    goto :goto_0

    .line 611
    :cond_0
    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/Seq;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Appended;->curr()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v0, p1}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->psplitWithSignalling(Lscala/collection/parallel/SeqSplitter;Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->reverse(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverse2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public reverseMap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TU;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$SeqSplitter$Appended$$$outer()Lscala/collection/parallel/SeqSplitter;
    .locals 1

    .line 586
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$Appended;->$outer:Lscala/collection/parallel/IterableSplitter;

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 586
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$Appended;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 586
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$Appended;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$class;->slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>;"
        }
    .end annotation

    .line 588
    invoke-super {p0}, Lscala/collection/parallel/IterableSplitter$Appended;->split()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public updated2combiner(ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedSeqIterator$class;->updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 586
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$Appended;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TR;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

.method public zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>.Zipped<TS;>;"
        }
    .end annotation

    .line 586
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

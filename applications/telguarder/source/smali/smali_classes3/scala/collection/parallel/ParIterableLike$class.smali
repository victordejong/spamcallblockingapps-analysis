.class public abstract Lscala/collection/parallel/ParIterableLike$class;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# direct methods
.method public static $colon$bslash(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1475
    invoke-interface {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $div$colon(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1473
    invoke-interface {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/parallel/ParIterableLike;)V
    .locals 1

    .line 166
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public static $plus$plus(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 604
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/TraversableOps;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p2}, Lscala/collection/parallel/ParallelCollectionImplicits$;->factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/FactoryOps;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/TraversableOps;->asParIterable()Lscala/collection/parallel/ParIterable;

    move-result-object p1

    .line 607
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p2}, Lscala/collection/parallel/ParallelCollectionImplicits$;->factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;

    move-result-object p2

    invoke-interface {p2}, Lscala/collection/parallel/FactoryOps;->asParallel()Lscala/collection/generic/CanCombineFrom;

    move-result-object p2

    .line 608
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanCombineFrom;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p2

    .line 609
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    .line 610
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$2;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$2;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterable;Lscala/collection/parallel/CombinerFactory;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->wrap(Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;

    move-result-object p1

    .line 614
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p2

    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$3;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$3;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p2, p1, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 615
    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$4;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$4;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 614
    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p1

    .line 617
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 618
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Copy;

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$5;

    invoke-direct {v1, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$5;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    .line 621
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$6;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$6;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->wrap(Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;

    move-result-object p1

    .line 626
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p2

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {v0, p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 629
    :cond_1
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 630
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0, p2}, Lscala/collection/parallel/IterableSplitter;->copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;

    .line 631
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$3;

    invoke-direct {v0, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$3;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 632
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static aggregate(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 8

    .line 442
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v7, Lscala/collection/parallel/ParIterableLike$Aggregate;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParIterableLike$Aggregate;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v7}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bf2seq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
    .locals 1

    .line 341
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$15;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$15;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    return-object v0
.end method

.method public static brokenInvariants(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Seq;
    .locals 1

    .line 1481
    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static builder2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;
    .locals 1

    .line 331
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$13;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$13;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)V

    return-object v0
.end method

.method public static canEqual(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static collect(Lscala/collection/parallel/ParIterableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 505
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Collect;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$collect$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$collect$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lscala/collection/parallel/ParIterableLike$Collect;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/PartialFunction;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$collect$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$collect$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 507
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lscala/collection/Iterable;->collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static combinerFactory(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/CombinerFactory;
    .locals 2

    .line 568
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    .line 569
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/Combiner;->combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    .line 570
    invoke-interface {v0}, Lscala/collection/parallel/Combiner;->canBeShared()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anon$18;

    invoke-direct {v1, p0, v0}, Lscala/collection/parallel/ParIterableLike$$anon$18;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/Combiner;)V

    goto :goto_0

    .line 574
    :cond_0
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anon$19;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anon$19;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    :goto_0
    return-object v1
.end method

.method public static combinerFactory(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;
    .locals 2

    .line 581
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/Combiner;

    .line 582
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/Combiner;->combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    .line 583
    invoke-interface {v0}, Lscala/collection/parallel/Combiner;->canBeShared()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lscala/collection/parallel/ParIterableLike$$anon$16;

    invoke-direct {p1, p0, v0}, Lscala/collection/parallel/ParIterableLike$$anon$16;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/Combiner;)V

    goto :goto_0

    .line 587
    :cond_0
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$17;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$17;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 813
    invoke-interface {p0, p1, v0}, Lscala/collection/parallel/ParIterableLike;->copyToArray(Ljava/lang/Object;I)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;I)V
    .locals 1

    .line 815
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p0, p1, p2, v0}, Lscala/collection/parallel/ParIterableLike;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;II)V
    .locals 8

    if-lez p3, :cond_0

    .line 818
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v7, Lscala/collection/parallel/ParIterableLike$CopyToArray;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParIterableLike$CopyToArray;-><init>(Lscala/collection/parallel/ParIterableLike;IILjava/lang/Object;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v7}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static count(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)I
    .locals 3

    .line 467
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Count;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Count;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static debugBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/ArrayBuffer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static debugInformation(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;
    .locals 2

    .line 1479
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Parallel collection: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static debugclear(Lscala/collection/parallel/ParIterableLike;)V
    .locals 1

    .line 1487
    monitor-enter p0

    .line 1488
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->debugBuffer()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->clear()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 1487
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static debuglog(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .locals 1

    .line 1491
    monitor-enter p0

    .line 1492
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->debugBuffer()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    .line 1491
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static delegatedSignalling2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;
    .locals 1

    .line 324
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$12;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$12;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)V

    return-object v0
.end method

.method public static drop(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;
    .locals 4

    .line 672
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result p1

    .line 673
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    sub-int/2addr v0, p1

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v1}, Lscala/collection/parallel/package$;->MIN_FOR_COPY()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->drop_sequential(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    goto :goto_1

    .line 674
    :cond_1
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Drop;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lscala/collection/parallel/ParIterableLike$Drop;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$drop$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$drop$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    :goto_1
    return-object p0
.end method

.method public static dropWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 10

    .line 804
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$7;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anon$7;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 805
    move-object v1, v0

    check-cast v1, Lscala/collection/generic/AtomicIndexFlag;

    const v2, 0x7fffffff

    invoke-interface {v1, v2}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 806
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    .line 807
    new-instance v9, Lscala/collection/parallel/ParIterableLike$Span;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v7

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    invoke-interface {v2, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lscala/collection/parallel/IterableSplitter;

    const/4 v4, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lscala/collection/parallel/ParIterableLike$Span;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v9}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 808
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$dropWhile$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$dropWhile$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 807
    invoke-interface {p1, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 806
    invoke-interface {v1, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method private static drop_sequential(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;
    .locals 2

    .line 678
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/IterableSplitter;->drop(I)Lscala/collection/Iterator;

    move-result-object v0

    .line 679
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v1

    .line 680
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-interface {v1, p0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 681
    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 682
    :cond_0
    invoke-interface {v1}, Lscala/collection/parallel/Combiner;->resultWithTaskSupport()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static exists(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z
    .locals 4

    .line 538
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Exists;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParIterableLike$$anon$9;

    invoke-direct {v3, p0}, Lscala/collection/parallel/ParIterableLike$$anon$9;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Exists;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static filter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 4

    .line 596
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Filter;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lscala/collection/parallel/ParIterableLike$Filter;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$filter$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$filter$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static filterNot(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 4

    .line 600
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$FilterNot;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lscala/collection/parallel/ParIterableLike$FilterNot;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$filterNot$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$filterNot$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static find(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Option;
    .locals 4

    .line 553
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Find;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParIterableLike$$anon$10;

    invoke-direct {v3, p0}, Lscala/collection/parallel/ParIterableLike$$anon$10;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Find;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Option;

    return-object p0
.end method

.method public static flatMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 512
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$FlatMap;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$flatMap$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$flatMap$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lscala/collection/parallel/ParIterableLike$FlatMap;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$flatMap$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$flatMap$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lscala/collection/Iterable;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static fold(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 3

    .line 409
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Fold;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lscala/collection/parallel/ParIterableLike$Fold;-><init>(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 445
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Iterable;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 447
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Iterable;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z
    .locals 4

    .line 527
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Forall;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/ParIterableLike$$anon$8;

    invoke-direct {v3, p0}, Lscala/collection/parallel/ParIterableLike$$anon$8;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/IterableSplitter;

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Forall;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static foreach(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)V
    .locals 3

    .line 463
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Foreach;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Foreach;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    return-void
.end method

.method public static groupBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 4

    .line 645
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$GroupBy;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$7;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$7;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lscala/collection/parallel/ParIterableLike$GroupBy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 646
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$8;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$8;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 645
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/immutable/ParHashMap;

    .line 648
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/immutable/ParMap;

    return-object p0
.end method

.method public static hasDefiniteSize(Lscala/collection/parallel/ParIterableLike;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static head(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/Splitter;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static headOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;
    .locals 1

    .line 219
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public static init(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 231
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    return-object p0
.end method

.method public static initTaskSupport(Lscala/collection/parallel/ParIterableLike;)V
    .locals 1

    .line 169
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public static isEmpty(Lscala/collection/parallel/ParIterableLike;)Z
    .locals 0

    .line 213
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStrictSplitterCollection(Lscala/collection/parallel/ParIterableLike;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final isTraversableAgain(Lscala/collection/parallel/ParIterableLike;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static iterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/Splitter;
    .locals 0

    .line 247
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    return-object p0
.end method

.method public static last(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;
    .locals 3

    .line 224
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 225
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$last$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/parallel/ParIterableLike$$anonfun$last$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {v1, v2}, Lscala/collection/Iterable;->foreach(Lscala/Function1;)V

    .line 226
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0
.end method

.method public static lastOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;
    .locals 1

    .line 229
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->last()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public static map(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 498
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Map;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$map$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$map$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lscala/collection/parallel/ParIterableLike$Map;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$map$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$map$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 500
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lscala/collection/Iterable;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static max(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 3

    .line 483
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Max;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Max;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$max$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$max$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static maxBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1

    .line 487
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$maxBy$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$maxBy$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->reduce(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 487
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.maxBy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static min(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 3

    .line 479
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Min;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Min;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$min$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$min$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static minBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1

    .line 493
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->reduce(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 493
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.minBy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mkString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;
    .locals 1

    .line 352
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, v0}, Lscala/collection/Iterable;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 350
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, v0, p1, v0}, Lscala/collection/Iterable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 348
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Iterable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonEmpty(Lscala/collection/parallel/ParIterableLike;)Z
    .locals 0

    .line 215
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static par(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 249
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object p0

    return-object p0
.end method

.method public static partition(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 8

    .line 637
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 638
    new-instance v7, Lscala/collection/parallel/ParIterableLike$Partition;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v4

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v5

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParIterableLike$Partition;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v7}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 639
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$partition$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$partition$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 638
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 637
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    return-object p0
.end method

.method public static printDebugBuffer(Lscala/collection/parallel/ParIterableLike;)V
    .locals 3

    .line 1496
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    .line 1497
    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 1496
    invoke-virtual {v1, v2}, Lscala/collection/DebugUtils$;->buildString(Lscala/Function1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static product(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 3

    .line 475
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Product;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Product;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduce(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 3

    .line 374
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Reduce;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Reduce;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$reduce$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$reduce$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeft(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeftOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 453
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static reduceOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;
    .locals 1

    .line 391
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->reduce(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static reduceRight(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRightOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 455
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->reduceRightOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static repr(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 207
    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static reuse(Lscala/collection/parallel/ParIterableLike;Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0

    return-object p2
.end method

.method public static sameElements(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;)Z
    .locals 0

    .line 821
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->sameElements(Lscala/collection/GenIterable;)Z

    move-result p0

    return p0
.end method

.method public static scan(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 9

    .line 727
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/TaskSupport;->parallelismLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 729
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v8, Lscala/collection/parallel/ParIterableLike$CreateScanTree;

    const/4 v3, 0x0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v4

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;-><init>(Lscala/collection/parallel/ParIterableLike;IILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v8}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object v1

    .line 730
    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;-><init>(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)V

    .line 729
    invoke-interface {v1, v2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 733
    :cond_0
    sget-object p2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    invoke-interface {p3, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 734
    :cond_1
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p3}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3}, Lscala/collection/Iterable;->scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 735
    :cond_2
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p3}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3}, Lscala/collection/Iterable;->scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static scanBlockSize(Lscala/collection/parallel/ParIterableLike;)I
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 1430
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/TaskSupport;->parallelismLevel()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lscala/collection/parallel/package$;->thresholdFromSize(II)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p0

    return p0
.end method

.method public static scanLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 737
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p3}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3}, Lscala/collection/Iterable;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 739
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p3}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3}, Lscala/collection/Iterable;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sequentially(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 346
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Parallelizable;

    invoke-interface {p0}, Lscala/collection/Parallelizable;->par()Lscala/collection/Parallel;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static slice(Lscala/collection/parallel/ParIterableLike;II)Lscala/collection/parallel/ParIterable;
    .locals 8

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 686
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v4

    sget-object p1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 687
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v5

    sub-int p1, v5, v4

    .line 688
    sget-object p2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p2}, Lscala/collection/parallel/package$;->MIN_FOR_COPY()I

    move-result p2

    if-gt p1, p2, :cond_0

    invoke-static {p0, v4, v5}, Lscala/collection/parallel/ParIterableLike$class;->slice_sequential(Lscala/collection/parallel/ParIterableLike;II)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    goto :goto_0

    .line 689
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$Slice;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v7

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/ParIterableLike$Slice;-><init>(Lscala/collection/parallel/ParIterableLike;IILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p2

    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$slice$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$slice$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p2, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    :goto_0
    return-object p0
.end method

.method private static slice_sequential(Lscala/collection/parallel/ParIterableLike;II)Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 693
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    sub-int/2addr p2, p1

    .line 695
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/parallel/IterableSplitter;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-lez p2, :cond_0

    .line 697
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 700
    :cond_0
    invoke-interface {v0}, Lscala/collection/parallel/Combiner;->resultWithTaskSupport()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static span(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 10

    .line 775
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v0

    .line 776
    invoke-interface {v0}, Lscala/collection/parallel/CombinerFactory;->doesShareCombiners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->toSeq()Lscala/collection/parallel/ParSeq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParSeq;->span(Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParSeq;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/ParSeq;

    .line 778
    new-instance v1, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$9;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$9;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p1

    .line 779
    new-instance v1, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {v0}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$10;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$10;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object v0

    .line 780
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 781
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$11;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$11;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 780
    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;

    move-result-object p1

    .line 783
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    goto :goto_0

    .line 777
    :cond_0
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 785
    :cond_1
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$6;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anon$6;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 786
    move-object v1, v0

    check-cast v1, Lscala/collection/generic/AtomicIndexFlag;

    const v2, 0x7fffffff

    invoke-interface {v1, v2}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 787
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    new-instance v9, Lscala/collection/parallel/ParIterableLike$Span;

    const/4 v4, 0x0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v7

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    invoke-interface {v2, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lscala/collection/parallel/IterableSplitter;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lscala/collection/parallel/ParIterableLike$Span;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v9}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 788
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$span$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$span$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 787
    invoke-interface {p1, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v1, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    :goto_0
    return-object p0
.end method

.method public static splitAt(Lscala/collection/parallel/ParIterableLike;I)Lscala/Tuple2;
    .locals 8

    .line 704
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 705
    new-instance v7, Lscala/collection/parallel/ParIterableLike$SplitAt;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v4

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v5

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParIterableLike$SplitAt;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v7}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 706
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$splitAt$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$splitAt$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 705
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 704
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    return-object p0
.end method

.method public static sum(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 3

    .line 471
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Sum;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$Sum;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static tail(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    return-object p0
.end method

.method public static take(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;
    .locals 4

    .line 652
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result p1

    .line 653
    :goto_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->MIN_FOR_COPY()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->take_sequential(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    goto :goto_1

    .line 654
    :cond_1
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Take;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lscala/collection/parallel/ParIterableLike$Take;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 655
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$take$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$take$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 654
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    :goto_1
    return-object p0
.end method

.method public static takeWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 9

    .line 750
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v0

    .line 751
    invoke-interface {v0}, Lscala/collection/parallel/CombinerFactory;->doesShareCombiners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->toSeq()Lscala/collection/parallel/ParSeq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParSeq;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParSeq;

    .line 753
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Copy;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v2

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 754
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 753
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    goto :goto_0

    .line 757
    :cond_0
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$5;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anon$5;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 758
    move-object v1, v0

    check-cast v1, Lscala/collection/generic/AtomicIndexFlag;

    const v2, 0x7fffffff

    invoke-interface {v1, v2}, Lscala/collection/generic/AtomicIndexFlag;->setIndexFlag(I)V

    .line 759
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    new-instance v8, Lscala/collection/parallel/ParIterableLike$TakeWhile;

    const/4 v4, 0x0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object v2

    invoke-interface {v2, v0}, Lscala/collection/parallel/ParIterableLike$SignallingOps;->assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lscala/collection/parallel/IterableSplitter;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/ParIterableLike$TakeWhile;-><init>(Lscala/collection/parallel/ParIterableLike;ILscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v8}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 760
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 759
    invoke-interface {p1, v0}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v1, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    :goto_0
    return-object p0
.end method

.method private static take_sequential(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;
    .locals 2

    .line 660
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    .line 661
    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 662
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    :goto_0
    if-lez p1, :cond_0

    .line 665
    invoke-interface {p0}, Lscala/collection/parallel/IterableSplitter;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 668
    :cond_0
    invoke-interface {v0}, Lscala/collection/parallel/Combiner;->resultWithTaskSupport()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static task2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;
    .locals 1

    .line 304
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$11;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$11;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    return-object v0
.end method

.method public static tasksupport(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 178
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->scala$collection$parallel$ParIterableLike$$_tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    .line 181
    sget-object p0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static tasksupport_$eq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 203
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public static to(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 880
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->isCombiner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$to$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$to$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->toParCollection(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 882
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toArray(Lscala/collection/parallel/ParIterableLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1

    .line 851
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    .line 852
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->copyToArray(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static toBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 866
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static toIndexedSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/IndexedSeq;
    .locals 0

    .line 858
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static toIterable(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 870
    check-cast p0, Lscala/collection/parallel/ParIterable;

    return-object p0
.end method

.method public static toIterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Iterator;
    .locals 0

    .line 862
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/List;
    .locals 0

    .line 856
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lscala/collection/parallel/ParIterableLike;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 1

    .line 876
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$toMap$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$toMap$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p0, v0, p1}, Lscala/collection/parallel/ParIterableLike;->toParMap(Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/immutable/ParMap;

    return-object p0
.end method

.method public static toParCollection(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Ljava/lang/Object;
    .locals 3

    .line 840
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$ToParCollection;

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lscala/collection/parallel/ParIterableLike$ToParCollection;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$toParCollection$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$toParCollection$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toParMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
    .locals 3

    .line 844
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$ToParMap;

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, p2}, Lscala/collection/parallel/ParIterableLike$ToParMap;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/Predef$$less$colon$less;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$toParMap$1;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$toParMap$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 872
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$toSeq$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$toSeq$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->toParCollection(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSeq;

    return-object p0
.end method

.method public static toSet(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/immutable/ParSet;
    .locals 1

    .line 874
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$toSet$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$toSet$1;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->toParCollection(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/immutable/ParSet;

    return-object p0
.end method

.method public static toStream(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 860
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;
    .locals 3

    .line 354
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->stringPrefix()Ljava/lang/String;

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

.method public static toTraversable(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/GenTraversable;
    .locals 0

    .line 868
    check-cast p0, Lscala/collection/GenTraversable;

    return-object p0
.end method

.method public static toVector(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Vector;
    .locals 1

    .line 878
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Vector;

    return-object p0
.end method

.method public static view(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/IterableView;
    .locals 0

    .line 848
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->view()Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static withFilter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 593
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParIterableLike;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;
    .locals 1

    .line 318
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$4;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)V

    return-object v0
.end method

.method public static zip(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 823
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

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

    .line 824
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/TraversableOps;->asParSeq()Lscala/collection/parallel/ParSeq;

    move-result-object p1

    .line 825
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Zip;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$zip$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$zip$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v2}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v1, p0, p2, v2, p1}, Lscala/collection/parallel/ParIterableLike$Zip;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$zip$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$zip$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 826
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p2}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lscala/collection/Iterable;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zipAll(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 10

    .line 830
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

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

    .line 831
    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/TraversableOps;->asParSeq()Lscala/collection/parallel/ParSeq;

    move-result-object p1

    .line 832
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    .line 833
    new-instance v9, Lscala/collection/parallel/ParIterableLike$ZipAll;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v2

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v3

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$zipAll$1;

    invoke-direct {v1, p0, p4}, Lscala/collection/parallel/ParIterableLike$$anonfun$zipAll$1;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V

    invoke-interface {p0, v1}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v7

    invoke-interface {p1}, Lscala/collection/parallel/ParSeq;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lscala/collection/parallel/ParIterableLike$ZipAll;-><init>(Lscala/collection/parallel/ParIterableLike;ILjava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p0, v9}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 834
    new-instance p2, Lscala/collection/parallel/ParIterableLike$$anonfun$zipAll$2;

    invoke-direct {p2, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$zipAll$2;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    .line 833
    invoke-interface {p1, p2}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p0

    .line 832
    invoke-interface {v0, p0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 837
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->seq()Lscala/collection/Iterable;

    move-result-object v1

    invoke-interface {p0, p4}, Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lscala/collection/Iterable;->zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zipWithIndex(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 4

    .line 828
    sget-object v0, Lscala/collection/parallel/immutable/ParRange$;->MODULE$:Lscala/collection/parallel/immutable/ParRange$;

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3, v2}, Lscala/collection/parallel/immutable/ParRange$;->apply(IIIZ)Lscala/collection/parallel/immutable/ParRange;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lscala/collection/parallel/ParIterableLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

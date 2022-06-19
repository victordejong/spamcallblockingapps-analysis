.class public abstract Lscala/collection/TraversableLike$class;
.super Ljava/lang/Object;
.source "TraversableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 155
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 156
    instance-of v0, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->size()I

    move-result v0

    invoke-interface {p2, p0, v0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 157
    :cond_0
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 158
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 159
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 236
    invoke-interface {p0}, Lscala/collection/TraversableLike;->seq()Lscala/collection/TraversableOnce;

    move-result-object p0

    sget-object v0, Lscala/collection/package$;->MODULE$:Lscala/collection/package$;

    invoke-virtual {v0, p2}, Lscala/collection/package$;->breakOut(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lscala/collection/Traversable;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 195
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 196
    instance-of v0, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->size()I

    move-result v0

    invoke-interface {p2, p0, v0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 197
    :cond_0
    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 198
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 199
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final builder$1(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 240
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 241
    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    return-object p1
.end method

.method private static final builder$2(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 250
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 281
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 282
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$collect$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/TraversableLike$$anonfun$collect$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v0}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 283
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static copyToArray(Lscala/collection/TraversableLike;Ljava/lang/Object;II)V
    .locals 3

    .line 615
    invoke-static {p2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 616
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/2addr p2, p3

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p3, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {v1, p2, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p2

    .line 617
    sget-object p3, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {p3}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object p3

    .line 618
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/IntRef;ILjava/lang/Object;)V

    .line 617
    invoke-virtual {p3, v1}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    return-void
.end method

.method public static drop(Lscala/collection/TraversableLike;I)Ljava/lang/Object;
    .locals 2

    if-gtz p1, :cond_0

    .line 496
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 497
    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 498
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Builder;

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    neg-int v1, p1

    .line 500
    invoke-interface {p0, p1, v0, v1}, Lscala/collection/TraversableLike;->sliceWithKnownDelta(III)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static dropWhile(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 3

    .line 548
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 549
    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v1

    .line 550
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$dropWhile$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lscala/collection/TraversableLike$$anonfun$dropWhile$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 554
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static exists(Lscala/collection/TraversableLike;Lscala/Function1;)Z
    .locals 3

    const/4 v0, 0x0

    .line 369
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 370
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 371
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$exists$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$exists$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    .line 370
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 374
    iget-boolean p0, v0, Lscala/runtime/BooleanRef;->elem:Z

    return p0
.end method

.method public static filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-static {p0, p1, v0}, Lscala/collection/TraversableLike$class;->filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;
    .locals 2

    .line 257
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 258
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;-><init>(Lscala/collection/TraversableLike;Lscala/Function1;ZLscala/collection/mutable/Builder;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 261
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 278
    invoke-static {p0, p1, v0}, Lscala/collection/TraversableLike$class;->filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static find(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Option;
    .locals 3

    .line 387
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 388
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 389
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$find$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$find$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;Lscala/Function1;)V

    .line 388
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 392
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/Option;

    return-object p0
.end method

.method public static flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 251
    invoke-static {p0, p2}, Lscala/collection/TraversableLike$class;->builder$2(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 252
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$flatMap$1;

    invoke-direct {v0, p0, p2, p1}, Lscala/collection/TraversableLike$$anonfun$flatMap$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 253
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/collection/TraversableLike;Lscala/Function1;)Z
    .locals 3

    const/4 v0, 0x1

    .line 352
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 353
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 354
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$forall$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$forall$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    .line 353
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 357
    iget-boolean p0, v0, Lscala/runtime/BooleanRef;->elem:Z

    return p0
.end method

.method public static groupBy(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 2

    .line 330
    sget-object v0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    invoke-virtual {v0}, Lscala/collection/mutable/Map$;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    .line 331
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$groupBy$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$groupBy$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Map;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 336
    sget-object p1, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {p1}, Lscala/collection/immutable/Map$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 337
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$groupBy$2;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$groupBy$2;-><init>(Lscala/collection/TraversableLike;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$groupBy$3;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableLike$$anonfun$groupBy$3;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;)V

    invoke-interface {v0, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    .line 340
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Map;

    return-object p0
.end method

.method public static hasDefiniteSize(Lscala/collection/TraversableLike;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static head(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 3

    .line 425
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$2;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anonfun$2;-><init>(Lscala/collection/TraversableLike;)V

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 426
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 427
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$head$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/TraversableLike$$anonfun$head$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V

    .line 426
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 432
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/Function0;

    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static headOption(Lscala/collection/TraversableLike;)Lscala/Option;
    .locals 1

    .line 440
    invoke-interface {p0}, Lscala/collection/TraversableLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/TraversableLike;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static init(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 4

    .line 479
    invoke-interface {p0}, Lscala/collection/TraversableLike;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-interface {p0}, Lscala/collection/TraversableLike;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    const/4 v1, 0x0

    .line 481
    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v1

    .line 482
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 483
    invoke-interface {v2, p0, v3}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 484
    new-instance v3, Lscala/collection/TraversableLike$$anonfun$init$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lscala/collection/TraversableLike$$anonfun$init$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;Lscala/collection/mutable/Builder;)V

    invoke-interface {p0, v3}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 489
    invoke-interface {v2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 479
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "empty.init"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inits(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;
    .locals 1

    .line 595
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$inits$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anonfun$inits$1;-><init>(Lscala/collection/TraversableLike;)V

    invoke-static {p0, v0}, Lscala/collection/TraversableLike$class;->iterateUntilEmpty(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/TraversableLike;)Z
    .locals 3

    const/4 v0, 0x1

    .line 131
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 132
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 133
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$isEmpty$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/TraversableLike$$anonfun$isEmpty$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;)V

    .line 132
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 138
    iget-boolean p0, v0, Lscala/runtime/BooleanRef;->elem:Z

    return p0
.end method

.method public static final isTraversableAgain(Lscala/collection/TraversableLike;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static iterateUntilEmpty(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 2

    .line 794
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object v0

    new-instance v1, Lscala/collection/Iterator$$anon$7;

    invoke-direct {v1, v0, p1}, Lscala/collection/Iterator$$anon$7;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    new-instance p1, Lscala/collection/TraversableLike$$anonfun$3;

    invoke-direct {p1, p0}, Lscala/collection/TraversableLike$$anonfun$3;-><init>(Lscala/collection/TraversableLike;)V

    invoke-interface {v1, p1}, Lscala/collection/Iterator;->takeWhile(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    .line 795
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$iterateUntilEmpty$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anonfun$iterateUntilEmpty$1;-><init>(Lscala/collection/TraversableLike;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->$plus$plus(Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/TraversableLike$$anonfun$iterateUntilEmpty$2;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anonfun$iterateUntilEmpty$2;-><init>(Lscala/collection/TraversableLike;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static last(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 2

    .line 459
    invoke-interface {p0}, Lscala/collection/TraversableLike;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 460
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$last$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableLike$$anonfun$last$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 462
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0
.end method

.method public static lastOption(Lscala/collection/TraversableLike;)Lscala/Option;
    .locals 1

    .line 470
    invoke-interface {p0}, Lscala/collection/TraversableLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/TraversableLike;->last()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 244
    invoke-static {p0, p2}, Lscala/collection/TraversableLike$class;->builder$1(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 245
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$map$1;

    invoke-direct {v0, p0, p2, p1}, Lscala/collection/TraversableLike$$anonfun$map$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 246
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/TraversableLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 106
    sget-object p0, Lscala/collection/parallel/ParIterable$;->MODULE$:Lscala/collection/parallel/ParIterable$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterable$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static partition(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 3

    .line 324
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 325
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$partition$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lscala/collection/TraversableLike$$anonfun$partition$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 326
    new-instance p0, Lscala/Tuple2;

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    .line 507
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v6

    .line 508
    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v0}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v0

    .line 509
    new-instance v7, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;-><init>(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V

    .line 508
    invoke-virtual {v0, v7}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 515
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scan(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-interface {p0, p1, p2, p3}, Lscala/collection/TraversableLike;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scanLeft(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 398
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    const/4 v0, 0x1

    .line 399
    invoke-interface {p3, p0, v0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 400
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 401
    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {p3, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 402
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 403
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scanRight(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    .line 408
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 409
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 410
    invoke-interface {p0}, Lscala/collection/TraversableLike;->reversed()Lscala/collection/immutable/List;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lscala/collection/TraversableLike$$anonfun$scanRight$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 414
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 415
    iget-object p2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p2, Lscala/collection/immutable/List;

    new-instance v3, Lscala/collection/TraversableLike$$anonfun$scanRight$2;

    invoke-direct {v3, p0, p1}, Lscala/collection/TraversableLike$$anonfun$scanRight$2;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;)V

    :goto_1
    invoke-virtual {p2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 416
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 415
    :cond_0
    invoke-virtual {p2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    iget-object p3, v3, Lscala/collection/TraversableLike$$anonfun$scanRight$2;->b$7:Lscala/collection/mutable/Builder;

    invoke-interface {p3, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    invoke-virtual {p2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lscala/collection/immutable/List;

    goto :goto_1

    .line 410
    :cond_1
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iget-object v3, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->op$2:Lscala/Function2;

    iget-object v4, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iget-object v4, v4, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    iget-object p1, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->scanned$1:Lscala/runtime/ObjectRef;

    iget-object p2, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->scanned$1:Lscala/runtime/ObjectRef;

    iget-object p2, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p2, Lscala/collection/immutable/List;

    iget-object v3, v2, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    new-instance v4, Lscala/collection/immutable/$colon$colon;

    invoke-direct {v4, v3, p2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    iput-object v4, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public static slice(Lscala/collection/TraversableLike;II)Ljava/lang/Object;
    .locals 2

    .line 503
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/math/package$;->max(II)I

    move-result p1

    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableLike;->sliceWithKnownBound(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;
    .locals 2

    .line 528
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-gt p2, p1, :cond_0

    .line 529
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sub-int v1, p2, p1

    .line 531
    invoke-interface {v0, v1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 532
    invoke-static {p0, p1, p2, v0}, Lscala/collection/TraversableLike$class;->scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;
    .locals 1

    .line 519
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-gt p2, p1, :cond_0

    .line 520
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {v0, p0, p3}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 523
    invoke-static {p0, p1, p2, v0}, Lscala/collection/TraversableLike$class;->scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static span(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 9

    .line 558
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v7

    const/4 v0, 0x1

    .line 559
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v4

    .line 560
    new-instance v8, Lscala/collection/TraversableLike$$anonfun$span$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/TraversableLike$$anonfun$span$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    invoke-interface {p0, v8}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 564
    new-instance p0, Lscala/Tuple2;

    invoke-interface {v6}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static splitAt(Lscala/collection/TraversableLike;I)Lscala/Tuple2;
    .locals 9

    .line 568
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v7

    .line 569
    invoke-interface {v6, p1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    if-ltz p1, :cond_0

    neg-int v0, p1

    .line 570
    invoke-interface {v7, p0, v0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    :cond_0
    const/4 v0, 0x0

    .line 571
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v4

    .line 572
    new-instance v8, Lscala/collection/TraversableLike$$anonfun$splitAt$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/TraversableLike$$anonfun$splitAt$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/runtime/IntRef;I)V

    invoke-interface {p0, v8}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 576
    new-instance p0, Lscala/Tuple2;

    invoke-interface {v6}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/TraversableLike;)Ljava/lang/String;
    .locals 2

    .line 654
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 655
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x24

    .line 657
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 658
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 1

    .line 449
    invoke-interface {p0}, Lscala/collection/TraversableLike;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 450
    invoke-interface {p0, v0}, Lscala/collection/TraversableLike;->drop(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "empty.tail"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tails(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;
    .locals 1

    .line 586
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$tails$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anonfun$tails$1;-><init>(Lscala/collection/TraversableLike;)V

    invoke-static {p0, v0}, Lscala/collection/TraversableLike$class;->iterateUntilEmpty(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static take(Lscala/collection/TraversableLike;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-interface {p0, v0, p1}, Lscala/collection/TraversableLike;->slice(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 3

    .line 537
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 538
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 539
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$takeWhile$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$takeWhile$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    .line 538
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 544
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static thisCollection(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;
    .locals 0

    .line 95
    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 634
    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 635
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 636
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toCollection(Lscala/collection/TraversableLike;Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 100
    check-cast p1, Lscala/collection/Traversable;

    return-object p1
.end method

.method public static toIterator(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;
    .locals 0

    .line 629
    invoke-interface {p0}, Lscala/collection/TraversableLike;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static toStream(Lscala/collection/TraversableLike;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 630
    invoke-interface {p0}, Lscala/collection/TraversableLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/TraversableLike;)Ljava/lang/String;
    .locals 3

    .line 645
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/TraversableLike;->stringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, ")"

    invoke-interface {p0, v0, v1, v2}, Lscala/collection/TraversableLike;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;
    .locals 0

    .line 627
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/TraversableLike;)Lscala/collection/TraversableView;
    .locals 1

    .line 666
    new-instance v0, Lscala/collection/TraversableLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableLike$$anon$1;-><init>(Lscala/collection/TraversableLike;)V

    return-object v0
.end method

.method public static view(Lscala/collection/TraversableLike;II)Lscala/collection/TraversableView;
    .locals 0

    .line 684
    invoke-interface {p0}, Lscala/collection/TraversableLike;->view()Lscala/collection/TraversableView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableView;->slice(II)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static withFilter(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 1

    .line 700
    new-instance v0, Lscala/collection/TraversableLike$WithFilter;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableLike$WithFilter;-><init>(Lscala/collection/TraversableLike;Lscala/Function1;)V

    return-object v0
.end method

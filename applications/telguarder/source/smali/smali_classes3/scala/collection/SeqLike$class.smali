.class public abstract Lscala/collection/SeqLike$class;
.super Ljava/lang/Object;
.source "SeqLike.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 556
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 557
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 558
    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 559
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/SeqLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 549
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 550
    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 551
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 552
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static combinations(Lscala/collection/SeqLike;I)Lscala/collection/Iterator;
    .locals 1

    if-ltz p1, :cond_1

    .line 157
    invoke-interface {p0}, Lscala/collection/SeqLike;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lscala/collection/SeqLike$CombinationsItr;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqLike$CombinationsItr;-><init>(Lscala/collection/SeqLike;I)V

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    sget-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z
    .locals 1

    .line 401
    new-instance v0, Lscala/collection/SeqLike$$anonfun$contains$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqLike$$anonfun$contains$1;-><init>(Lscala/collection/SeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static containsSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 392
    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->indexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 3

    .line 576
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 577
    invoke-interface {p1}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 578
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 582
    :cond_1
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static diff(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 2

    .line 448
    invoke-interface {p1}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->occCounts(Lscala/collection/SeqLike;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    .line 449
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 450
    new-instance v1, Lscala/collection/SeqLike$$anonfun$diff$1;

    invoke-direct {v1, p0, p1, v0}, Lscala/collection/SeqLike$$anonfun$diff$1;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Map;Lscala/collection/mutable/Builder;)V

    invoke-interface {p0, v1}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 455
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;
    .locals 3

    .line 503
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 504
    sget-object v1, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/HashSet$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashSet;

    .line 505
    new-instance v2, Lscala/collection/SeqLike$$anonfun$distinct$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/SeqLike$$anonfun$distinct$1;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/HashSet;)V

    invoke-interface {p0, v2}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 511
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z
    .locals 4

    .line 314
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result p0

    invoke-interface {p1}, Lscala/collection/GenSeq;->length()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    .line 315
    invoke-interface {p1}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 316
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 317
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    return v3

    .line 320
    :cond_5
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-interface {p0, p1, v0}, Lscala/collection/SeqLike;->indexOfSlice(Lscala/collection/GenSeq;I)I

    move-result p0

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I
    .locals 10

    .line 339
    invoke-interface {p0}, Lscala/collection/SeqLike;->hasDefiniteSize()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lscala/collection/GenSeq;->hasDefiniteSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v5

    .line 341
    invoke-interface {p1}, Lscala/collection/GenSeq;->length()I

    move-result v8

    .line 342
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lscala/math/package$;->max(II)I

    move-result v4

    if-le p2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ge v8, p2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    if-ge v5, v8, :cond_2

    goto :goto_1

    .line 346
    :cond_2
    sget-object v2, Lscala/collection/SeqLike$;->MODULE$:Lscala/collection/SeqLike$;

    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v3

    invoke-interface {p1}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lscala/collection/SeqLike$;->scala$collection$SeqLike$$kmpSearch(Lscala/collection/Seq;IILscala/collection/Seq;IIZ)I

    move-result v1

    goto :goto_1

    .line 350
    :cond_3
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Seq;->drop(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    .line 351
    :goto_0
    invoke-interface {p0}, Lscala/collection/Seq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return v1

    .line 352
    :cond_4
    invoke-interface {p0, p1}, Lscala/collection/Seq;->startsWith(Lscala/collection/GenSeq;)Z

    move-result v0

    if-eqz v0, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 356
    invoke-interface {p0}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    goto :goto_0
.end method

.method public static indexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I
    .locals 1

    .line 118
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    .line 119
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indices(Lscala/collection/SeqLike;)Lscala/collection/immutable/Range;
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 669
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object p0

    return-object p0
.end method

.method public static intersect(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 2

    .line 479
    invoke-interface {p1}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->occCounts(Lscala/collection/SeqLike;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    .line 480
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 481
    new-instance v1, Lscala/collection/SeqLike$$anonfun$intersect$1;

    invoke-direct {v1, p0, p1, v0}, Lscala/collection/SeqLike$$anonfun$intersect$1;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Map;Lscala/collection/mutable/Builder;)V

    invoke-interface {p0, v1}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 488
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/SeqLike;)Z
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->lengthCompare(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I
    .locals 1

    .line 367
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/SeqLike;->lastIndexOfSlice(Lscala/collection/GenSeq;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I
    .locals 9

    .line 376
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    .line 377
    invoke-interface {p1}, Lscala/collection/GenSeq;->length()I

    move-result v7

    .line 378
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int v2, v0, v7

    invoke-virtual {v1, v2, p2}, Lscala/math/package$;->min(II)I

    move-result v1

    const/4 v2, -0x1

    if-gez p2, :cond_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ge v7, p2, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, v7, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    sget-object p2, Lscala/collection/SeqLike$;->MODULE$:Lscala/collection/SeqLike$;

    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v2

    const/4 v3, 0x0

    add-int v4, v1, v7

    invoke-interface {p1}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lscala/collection/SeqLike$;->scala$collection$SeqLike$$kmpSearch(Lscala/collection/Seq;IILscala/collection/Seq;IIZ)I

    move-result v1

    :goto_1
    return v1
.end method

.method public static lastIndexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I
    .locals 3

    .line 128
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 129
    invoke-interface {p0}, Lscala/collection/SeqLike;->reverseIterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 130
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-gt v0, p2, :cond_0

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static lengthCompare(Lscala/collection/SeqLike;I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 91
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_1

    .line 92
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    return p0

    .line 93
    :cond_1
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p0, v0, p1

    :goto_1
    return p0
.end method

.method private static occCounts(Lscala/collection/SeqLike;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 2

    .line 492
    new-instance v0, Lscala/collection/SeqLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/SeqLike$$anon$1;-><init>(Lscala/collection/SeqLike;)V

    .line 493
    new-instance v1, Lscala/collection/SeqLike$$anonfun$occCounts$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/SeqLike$$anonfun$occCounts$1;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/HashMap;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public static padTo(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 563
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    .line 564
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    .line 565
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v1, v0, p1}, Lscala/math/package$;->max(II)I

    move-result v1

    invoke-interface {p3, v1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    sub-int/2addr p1, v0

    .line 567
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p3, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    :goto_0
    if-lez p1, :cond_0

    .line 569
    invoke-interface {p3, p2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/SeqLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 71
    sget-object p0, Lscala/collection/parallel/ParSeq$;->MODULE$:Lscala/collection/parallel/ParSeq$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeq$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Lscala/collection/SeqLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 515
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p4

    .line 517
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 518
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {p2}, Lscala/collection/GenSeq;->seq()Lscala/collection/Seq;

    move-result-object p1

    invoke-interface {p4, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    :goto_1
    if-lez p3, :cond_1

    .line 524
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 525
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 528
    :cond_1
    :goto_2
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_2

    .line 529
    :cond_2
    invoke-interface {p4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static permutations(Lscala/collection/SeqLike;)Lscala/collection/Iterator;
    .locals 4

    .line 140
    invoke-interface {p0}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object p0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lscala/collection/SeqLike$PermutationsItr;

    invoke-direct {v0, p0}, Lscala/collection/SeqLike$PermutationsItr;-><init>(Lscala/collection/SeqLike;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static reverse(Lscala/collection/SeqLike;)Ljava/lang/Object;
    .locals 4

    .line 272
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 273
    new-instance v1, Lscala/collection/SeqLike$$anonfun$reverse$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/SeqLike$$anonfun$reverse$1;-><init>(Lscala/collection/SeqLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v1}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 275
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 276
    invoke-interface {v1, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 277
    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/List;

    new-instance v2, Lscala/collection/SeqLike$$anonfun$reverse$2;

    invoke-direct {v2, p0, v1}, Lscala/collection/SeqLike$$anonfun$reverse$2;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;)V

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 279
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    iget-object v3, v2, Lscala/collection/SeqLike$$anonfun$reverse$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-interface {v3, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public static reverseIterator(Lscala/collection/SeqLike;)Lscala/collection/Iterator;
    .locals 1

    .line 301
    invoke-interface {p0}, Lscala/collection/SeqLike;->reverse()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static reverseMap(Lscala/collection/SeqLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 283
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 284
    new-instance v1, Lscala/collection/SeqLike$$anonfun$reverseMap$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/SeqLike$$anonfun$reverseMap$1;-><init>(Lscala/collection/SeqLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v1}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 286
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 287
    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/List;

    new-instance v1, Lscala/collection/SeqLike$$anonfun$reverseMap$2;

    invoke-direct {v1, p0, p2, p1}, Lscala/collection/SeqLike$$anonfun$reverseMap$2;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 290
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 287
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v1, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->b$2:Lscala/collection/mutable/Builder;

    iget-object v2, v1, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->f$1:Lscala/Function1;

    invoke-interface {v2, p0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public static segmentLength(Lscala/collection/SeqLike;Lscala/Function1;I)I
    .locals 1

    .line 110
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    .line 111
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static size(Lscala/collection/SeqLike;)I
    .locals 0

    .line 106
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result p0

    return p0
.end method

.method public static sortBy(Lscala/collection/SeqLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 623
    invoke-interface {p2, p1}, Lscala/math/Ordering;->on(Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 601
    sget-object v0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    new-instance v0, Lscala/math/Ordering$$anon$9;

    invoke-direct {v0, p1}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 7

    .line 637
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    .line 638
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 639
    invoke-interface {v1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    goto :goto_1

    :cond_0
    if-le v0, v2, :cond_1

    .line 641
    invoke-interface {v1, v0}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 642
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 643
    invoke-static {v4}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 644
    new-instance v6, Lscala/collection/SeqLike$$anonfun$sorted$1;

    invoke-direct {v6, p0, v3, v5}, Lscala/collection/SeqLike$$anonfun$sorted$1;-><init>(Lscala/collection/SeqLike;[Ljava/lang/Object;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v6}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 648
    invoke-static {v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 649
    iput v4, v5, Lscala/runtime/IntRef;->elem:I

    .line 650
    :goto_0
    iget p0, v5, Lscala/runtime/IntRef;->elem:I

    if-ge p0, v0, :cond_1

    .line 651
    iget p0, v5, Lscala/runtime/IntRef;->elem:I

    aget-object p0, v3, p0

    invoke-interface {v1, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 652
    iget p0, v5, Lscala/runtime/IntRef;->elem:I

    add-int/2addr p0, v2

    iput p0, v5, Lscala/runtime/IntRef;->elem:I

    goto :goto_0

    .line 640
    :cond_1
    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 655
    :goto_1
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static startsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)Z
    .locals 3

    .line 304
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    .line 305
    invoke-interface {p1}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 306
    :cond_0
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 307
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Number;

    invoke-static {p2, v1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Character;

    invoke-static {p2, v1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    return v2

    .line 310
    :cond_5
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static thisCollection(Lscala/collection/SeqLike;)Lscala/collection/Seq;
    .locals 0

    .line 64
    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static toCollection(Lscala/collection/SeqLike;Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 65
    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method

.method public static toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;
    .locals 0

    .line 663
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/SeqLike;)Ljava/lang/String;
    .locals 0

    .line 682
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static union(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 425
    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_3

    .line 534
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    const/4 v0, 0x0

    .line 536
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 537
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    invoke-interface {p3, p2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 543
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 544
    :goto_1
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 545
    :cond_1
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 541
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static view(Lscala/collection/SeqLike;)Lscala/collection/SeqView;
    .locals 1

    .line 671
    new-instance v0, Lscala/collection/SeqLike$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/SeqLike$$anon$2;-><init>(Lscala/collection/SeqLike;)V

    return-object v0
.end method

.method public static view(Lscala/collection/SeqLike;II)Lscala/collection/SeqView;
    .locals 0

    .line 678
    invoke-interface {p0}, Lscala/collection/SeqLike;->view()Lscala/collection/SeqView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqView;->slice(II)Lscala/collection/TraversableView;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqView;

    return-object p0
.end method

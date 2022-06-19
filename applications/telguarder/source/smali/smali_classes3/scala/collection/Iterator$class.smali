.class public abstract Lscala/collection/Iterator$class;
.super Ljava/lang/Object;
.source "Iterator.scala"


# direct methods
.method public static $init$(Lscala/collection/Iterator;)V
    .locals 0

    return-void
.end method

.method public static $plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;
    .locals 1

    .line 383
    new-instance v0, Lscala/collection/Iterator$JoinIterator;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$JoinIterator;-><init>(Lscala/collection/Iterator;Lscala/Function0;)V

    return-object v0
.end method

.method public static buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;
    .locals 1

    .line 849
    new-instance v0, Lscala/collection/Iterator$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/Iterator$$anon$1;-><init>(Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public static collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;
    .locals 2

    .line 474
    invoke-interface {p0}, Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;

    move-result-object v0

    .line 475
    new-instance v1, Lscala/collection/Iterator$$anon$14;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/Iterator$$anon$14;-><init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/PartialFunction;)V

    return-object v1
.end method

.method public static contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z
    .locals 1

    .line 780
    new-instance v0, Lscala/collection/Iterator$$anonfun$contains$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anonfun$contains$1;-><init>(Lscala/collection/Iterator;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/Iterator;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V
    .locals 6

    .line 1150
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    if-lt p2, v2, :cond_0

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lscala/collection/Iterator$$anonfun$copyToArray$1;

    invoke-direct {v3, p0, p1, p2}, Lscala/collection/Iterator$$anonfun$copyToArray$1;-><init>(Lscala/collection/Iterator;Ljava/lang/Object;I)V

    if-eqz v2, :cond_3

    .line 1152
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 1153
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 1150
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string p2, "requirement failed: "

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    new-instance p2, Lscala/StringContext;

    sget-object p3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "start "

    const-string v4, " out of range "

    const-string v5, ""

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p3

    invoke-direct {p2, p3}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object p3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, v3, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v3, v3, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p3, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static corresponds(Lscala/collection/Iterator;Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z
    .locals 3

    .line 434
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 435
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
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

    .line 438
    :cond_1
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 325
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 2

    .line 622
    invoke-interface {p0}, Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;

    move-result-object v0

    .line 623
    new-instance v1, Lscala/collection/Iterator$$anon$18;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/Iterator$$anon$18;-><init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/Function1;)V

    return-object v1
.end method

.method public static duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;
    .locals 5

    .line 1063
    new-instance v0, Lscala/collection/mutable/Queue;

    invoke-direct {v0}, Lscala/collection/mutable/Queue;-><init>()V

    const/4 v1, 0x0

    .line 1064
    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 1086
    new-instance v2, Lscala/Tuple2;

    new-instance v3, Lscala/collection/Iterator$Partner$1;

    invoke-direct {v3, p0, v0, v1}, Lscala/collection/Iterator$Partner$1;-><init>(Lscala/collection/Iterator;Lscala/collection/mutable/Queue;Lscala/runtime/ObjectRef;)V

    new-instance v4, Lscala/collection/Iterator$Partner$1;

    invoke-direct {v4, p0, v0, v1}, Lscala/collection/Iterator$Partner$1;-><init>(Lscala/collection/Iterator;Lscala/collection/mutable/Queue;Lscala/runtime/ObjectRef;)V

    invoke-direct {v2, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static exists(Lscala/collection/Iterator;Lscala/Function1;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 768
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1

    .line 407
    new-instance v0, Lscala/collection/Iterator$$anon$13;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$13;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1

    .line 461
    new-instance v0, Lscala/collection/Iterator$$anonfun$filterNot$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anonfun$filterNot$1;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static find(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Option;
    .locals 3

    .line 792
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    .line 793
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 795
    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lscala/Some;

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1

    .line 393
    new-instance v0, Lscala/collection/Iterator$$anon$12;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$12;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static forall(Lscala/collection/Iterator;Lscala/Function1;)Z
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 754
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static foreach(Lscala/collection/Iterator;Lscala/Function1;)V
    .locals 1

    .line 742
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;
    .locals 1

    .line 1018
    new-instance v0, Lscala/collection/Iterator$GroupedIterator;

    invoke-direct {v0, p0, p0, p1, p1}, Lscala/collection/Iterator$GroupedIterator;-><init>(Lscala/collection/Iterator;Lscala/collection/Iterator;II)V

    return-object v0
.end method

.method public static hasDefiniteSize(Lscala/collection/Iterator;)Z
    .locals 0

    .line 305
    invoke-interface {p0}, Lscala/collection/Iterator;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/Iterator;Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 833
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 834
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_2
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Character;

    invoke-static {v4, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, -0x1

    :goto_2
    return v3
.end method

.method public static indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 811
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static isEmpty(Lscala/collection/Iterator;)Z
    .locals 0

    .line 291
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTraversableAgain(Lscala/collection/Iterator;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static length(Lscala/collection/Iterator;)I
    .locals 0

    .line 1047
    invoke-interface {p0}, Lscala/collection/Iterator;->size()I

    move-result p0

    return p0
.end method

.method public static map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1

    .line 368
    new-instance v0, Lscala/collection/Iterator$$anon$11;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$11;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static padTo(Lscala/collection/Iterator;ILjava/lang/Object;)Lscala/collection/Iterator;
    .locals 1

    .line 665
    new-instance v0, Lscala/collection/Iterator$$anon$20;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/Iterator$$anon$20;-><init>(Lscala/collection/Iterator;ILjava/lang/Object;)V

    return-object v0
.end method

.method public static partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;
    .locals 4

    .line 554
    invoke-interface {p0}, Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;

    move-result-object v0

    .line 566
    new-instance v1, Lscala/collection/Iterator$PartitionIterator$1;

    invoke-direct {v1, p0, p1, v0}, Lscala/collection/Iterator$PartitionIterator$1;-><init>(Lscala/collection/Iterator;Lscala/Function1;Lscala/collection/BufferedIterator;)V

    .line 567
    new-instance v2, Lscala/collection/Iterator$PartitionIterator$1;

    new-instance v3, Lscala/collection/Iterator$$anonfun$1;

    invoke-direct {v3, p0, p1}, Lscala/collection/Iterator$$anonfun$1;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    invoke-direct {v2, p0, v3, v0}, Lscala/collection/Iterator$PartitionIterator$1;-><init>(Lscala/collection/Iterator;Lscala/Function1;Lscala/collection/BufferedIterator;)V

    .line 568
    invoke-virtual {v1, v2}, Lscala/collection/Iterator$PartitionIterator$1;->other_$eq(Lscala/collection/Iterator$PartitionIterator$1;)V

    .line 569
    invoke-virtual {v2, v1}, Lscala/collection/Iterator$PartitionIterator$1;->other_$eq(Lscala/collection/Iterator$PartitionIterator$1;)V

    .line 570
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 1

    .line 1099
    new-instance v0, Lscala/collection/Iterator$$anon$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/Iterator$$anon$23;-><init>(Lscala/collection/Iterator;ILscala/collection/Iterator;I)V

    return-object v0
.end method

.method public static sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z
    .locals 4

    .line 1170
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1171
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    return v2

    .line 1174
    :cond_5
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 v1, 0x0

    :cond_7
    return v1
.end method

.method public static scanLeft(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 1

    .line 494
    new-instance v0, Lscala/collection/Iterator$$anon$15;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/Iterator$$anon$15;-><init>(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)V

    return-object v0
.end method

.method public static scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 1

    .line 520
    invoke-interface {p0}, Lscala/collection/Iterator;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    sget-object v0, Lscala/collection/mutable/Buffer$;->MODULE$:Lscala/collection/mutable/Buffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/Buffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lscala/collection/mutable/Buffer;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0

    return-object p0
.end method

.method public static slice(Lscala/collection/Iterator;II)Lscala/collection/Iterator;
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 341
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    move v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 343
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Lscala/collection/Iterator$$anon$10;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/Iterator$$anon$10;-><init>(Lscala/collection/Iterator;II)V

    return-object v0
.end method

.method public static sliding(Lscala/collection/Iterator;II)Lscala/collection/Iterator$GroupedIterator;
    .locals 1

    .line 1040
    new-instance v0, Lscala/collection/Iterator$GroupedIterator;

    invoke-direct {v0, p0, p0, p1, p2}, Lscala/collection/Iterator$GroupedIterator;-><init>(Lscala/collection/Iterator;Lscala/collection/Iterator;II)V

    return-object v0
.end method

.method public static sliding$default$2(Lscala/collection/Iterator;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;
    .locals 2

    .line 581
    invoke-interface {p0}, Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;

    move-result-object v0

    .line 600
    new-instance v1, Lscala/collection/Iterator$Leading$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/Iterator$Leading$1;-><init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/Function1;)V

    .line 601
    new-instance p1, Lscala/collection/Iterator$$anon$17;

    invoke-direct {p1, p0, v0, v1}, Lscala/collection/Iterator$$anon$17;-><init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/collection/Iterator$Leading$1;)V

    .line 611
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static take(Lscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-interface {p0, v0, p1}, Lscala/collection/Iterator;->slice(II)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1

    .line 530
    new-instance v0, Lscala/collection/Iterator$$anon$16;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$16;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0

    return-object p0
.end method

.method public static toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 1180
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/Iterator$$anonfun$toStream$1;

    invoke-direct {v1, p0}, Lscala/collection/Iterator$$anonfun$toStream$1;-><init>(Lscala/collection/Iterator;)V

    new-instance p0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 1181
    :cond_0
    sget-object p0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    return-object p0
.end method

.method public static toString(Lscala/collection/Iterator;)Ljava/lang/String;
    .locals 1

    .line 1190
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "non-empty"

    goto :goto_0

    :cond_0
    const-string p0, "empty"

    :goto_0
    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v0, " iterator"

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;
    .locals 0

    .line 1177
    invoke-interface {p0}, Lscala/collection/Iterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 452
    invoke-interface {p0, p1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/collection/Iterator;Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 1

    .line 648
    new-instance v0, Lscala/collection/Iterator$$anon$19;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$19;-><init>(Lscala/collection/Iterator;Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public static zipAll(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1

    .line 716
    new-instance v0, Lscala/collection/Iterator$$anon$22;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/Iterator$$anon$22;-><init>(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 1

    .line 683
    new-instance v0, Lscala/collection/Iterator$$anon$21;

    invoke-direct {v0, p0}, Lscala/collection/Iterator$$anon$21;-><init>(Lscala/collection/Iterator;)V

    return-object v0
.end method

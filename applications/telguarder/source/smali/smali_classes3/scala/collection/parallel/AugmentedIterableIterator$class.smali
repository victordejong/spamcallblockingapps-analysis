.class public abstract Lscala/collection/parallel/AugmentedIterableIterator$class;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/AugmentedIterableIterator;)V
    .locals 0

    return-void
.end method

.method public static collect2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 121
    new-instance v0, Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;

    invoke-direct {v0, p0, p2}, Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;-><init>(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/Combiner;)V

    invoke-interface {p1, v0}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    .line 122
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static copy2builder(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 140
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 141
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static copyToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;II)V
    .locals 2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 94
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static count(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;)I
    .locals 2

    const/4 v0, 0x0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static drop2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 181
    invoke-interface {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator;->drop(I)Lscala/collection/Iterator;

    .line 182
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result p1

    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 183
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static filter2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 146
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static filterNot2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 154
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static flatmap2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 131
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lscala/collection/Iterable;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/Iterable;

    invoke-interface {v0}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static fold(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 57
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static map2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 114
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 115
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static max(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 3

    .line 83
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-interface {p1, v1, v0}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static min(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 3

    .line 74
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-interface {p1, v1, v0}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static partition2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 2

    .line 162
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p3, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 167
    :cond_1
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static product(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 2

    .line 68
    invoke-interface {p1}, Lscala/math/Numeric;->one()Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/math/Numeric;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reduce(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function2;)Ljava/lang/Object;
    .locals 2

    .line 50
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reduceLeft(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/Function2;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 102
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-lez p1, :cond_0

    .line 103
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static scanToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V
    .locals 1

    .line 238
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p3, p4, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 258
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 259
    invoke-interface {p4, p2}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method public static scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 247
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 249
    invoke-interface {p3, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static slice2combiner(Lscala/collection/parallel/AugmentedIterableIterator;IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 188
    invoke-interface {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator;->drop(I)Lscala/collection/Iterator;

    .line 189
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Lscala/math/package$;->max(II)I

    move-result p1

    .line 190
    invoke-interface {p3, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    :goto_0
    if-lez p1, :cond_0

    .line 192
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 222
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 223
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 224
    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p3, v1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 227
    :cond_1
    invoke-interface {p3, v2}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    const/4 v1, 0x0

    .line 225
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 231
    :cond_2
    :goto_1
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 232
    :cond_3
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static splitAt2combiners(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 1

    .line 199
    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 200
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p3, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 203
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 206
    :cond_1
    :goto_1
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 207
    :cond_2
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static sum(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 2

    .line 62
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static take2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 171
    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    :goto_0
    if-lez p1, :cond_0

    .line 174
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static takeWhile2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 3

    const/4 v0, 0x1

    .line 212
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 213
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 217
    :cond_1
    new-instance p0, Lscala/Tuple2;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static zip2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 3

    .line 266
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->remaining()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 267
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 3

    .line 274
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->remaining()I

    move-result v1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->remaining()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    invoke-interface {p4, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 275
    :cond_0
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 276
    :cond_1
    :goto_1
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedIterableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 277
    :cond_2
    :goto_2
    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lscala/Tuple2;

    invoke-interface {p1}, Lscala/collection/parallel/RemainsIterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_2

    :cond_3
    return-object p4
.end method

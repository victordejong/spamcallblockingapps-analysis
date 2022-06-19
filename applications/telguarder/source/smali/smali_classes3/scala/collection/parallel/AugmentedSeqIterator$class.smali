.class public abstract Lscala/collection/parallel/AugmentedSeqIterator$class;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/AugmentedSeqIterator;)V
    .locals 0

    return-void
.end method

.method public static corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z
    .locals 3

    .line 324
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 327
    :cond_1
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result p0

    invoke-interface {p2}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static indexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, -0x1

    :cond_2
    return v2
.end method

.method public static lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static reverse2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 333
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->remaining()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 334
    :cond_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    .line 335
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    :goto_1
    sget-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    .line 337
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 338
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_1
.end method

.method public static reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 345
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->remaining()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 346
    :cond_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    .line 347
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    :goto_1
    sget-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p2

    .line 349
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 350
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_1
.end method

.method public static updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2

    .line 357
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->isRemainingCheap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->remaining()I

    move-result v0

    invoke-interface {p3, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    :cond_0
    const/4 v0, 0x0

    .line 359
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_1

    .line 361
    invoke-interface {p3, p2}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 362
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 363
    :cond_1
    invoke-interface {p0}, Lscala/collection/parallel/AugmentedSeqIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

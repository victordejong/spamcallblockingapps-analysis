.class public abstract Lscala/collection/SeqViewLike$Filtered$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Filtered;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Filtered;I)Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->index()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-interface {v0, p0}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static index(Lscala/collection/SeqViewLike$Filtered;)[I
    .locals 12

    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 102
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/SeqViewLike;->length()I

    move-result v2

    new-array v2, v2, [I

    .line 103
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/SeqViewLike;->length()I

    move-result v3

    sget-object v4, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v4, Lscala/collection/immutable/Range;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v3, v5}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    const/high16 v6, -0x80000000

    if-ne v3, v6, :cond_1

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->end()I

    move-result v3

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4}, Lscala/collection/immutable/Range;->start()I

    move-result v6

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v7

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->step()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-eqz v3, :cond_2

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v10

    if-ge v9, v10, :cond_3

    :goto_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_5

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->pred()Lscala/Function1;

    move-result-object v10

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v11

    invoke-interface {v11, v6}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, v1, Lscala/runtime/IntRef;->elem:I

    aput v6, v2, v10

    iget v10, v1, Lscala/runtime/IntRef;->elem:I

    add-int/2addr v10, v5

    iput v10, v1, Lscala/runtime/IntRef;->elem:I

    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v6, v8

    goto :goto_2

    .line 108
    :cond_5
    sget-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance p0, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {p0, v2}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    iget v0, v1, Lscala/runtime/IntRef;->elem:I

    invoke-static {p0, v0}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Filtered;)I
    .locals 0

    .line 110
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Filtered;->index()[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

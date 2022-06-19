.class public abstract Lscala/collection/SeqViewLike$FlatMapped$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$FlatMapped;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$FlatMapped;I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    .line 86
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 87
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqViewLike;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, p1, v0, v1}, Lscala/collection/SeqViewLike$FlatMapped;->findRow(III)I

    move-result v0

    .line 88
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->mapping()Lscala/Function1;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v2

    invoke-interface {v2, v0}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenTraversableOnce;

    invoke-interface {v1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/TraversableOnce;->toSeq()Lscala/collection/Seq;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->index()[I

    move-result-object p0

    aget p0, p0, v0

    sub-int/2addr p1, p0

    invoke-interface {v1, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findRow(Lscala/collection/SeqViewLike$FlatMapped;III)I
    .locals 2

    add-int v0, p2, p3

    .line 79
    div-int/lit8 v0, v0, 0x2

    .line 80
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->index()[I

    move-result-object v1

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, p1, p2, v0}, Lscala/collection/SeqViewLike$FlatMapped;->findRow(III)I

    move-result v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->index()[I

    move-result-object p2

    add-int/lit8 v1, v0, 0x1

    aget p2, p2, v1

    if-lt p1, p2, :cond_1

    invoke-interface {p0, p1, v1, p3}, Lscala/collection/SeqViewLike$FlatMapped;->findRow(III)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static index(Lscala/collection/SeqViewLike$FlatMapped;)[I
    .locals 13

    .line 72
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 73
    aput v2, v0, v2

    .line 74
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/SeqViewLike;->length()I

    move-result v3

    sget-object v4, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v4, Lscala/collection/immutable/Range;

    invoke-direct {v4, v2, v3, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_1

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->end()I

    move-result v3

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v4}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v3, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    add-int/lit8 v9, v5, 0x1

    aget v10, v0, v5

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->mapping()Lscala/Function1;

    move-result-object v11

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v12

    invoke-interface {v12, v5}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscala/collection/GenTraversableOnce;

    invoke-interface {v11}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v11

    invoke-interface {v11}, Lscala/collection/TraversableOnce;->size()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v0, v9

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static length(Lscala/collection/SeqViewLike$FlatMapped;)I
    .locals 1

    .line 84
    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->index()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$FlatMapped;->scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

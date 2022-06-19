.class public abstract Lscala/collection/BitSetLike$class;
.super Ljava/lang/Object;
.source "BitSetLike.scala"


# direct methods
.method public static $amp(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 13

    .line 158
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/BitSet;->nwords()I

    move-result v1

    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 159
    new-array v1, v0, [J

    .line 160
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {p0, v5}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v9

    invoke-interface {p1, v5}, Lscala/collection/BitSet;->word(I)J

    move-result-wide v11

    and-long/2addr v9, v11

    aput-wide v9, v1, v5

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    .line 162
    :cond_4
    invoke-interface {p0, v1}, Lscala/collection/BitSetLike;->fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;

    move-result-object p0

    return-object p0
.end method

.method public static $amp$tilde(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 13

    .line 173
    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    .line 174
    new-array v1, v0, [J

    .line 175
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {p0, v5}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v9

    invoke-interface {p1, v5}, Lscala/collection/BitSet;->word(I)J

    move-result-wide v11

    not-long v11, v11

    and-long/2addr v9, v11

    aput-wide v9, v1, v5

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    .line 177
    :cond_4
    invoke-interface {p0, v1}, Lscala/collection/BitSetLike;->fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;

    move-result-object p0

    return-object p0
.end method

.method public static $bar(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 13

    .line 144
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/BitSet;->nwords()I

    move-result v1

    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    new-array v1, v0, [J

    .line 146
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {p0, v5}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v9

    invoke-interface {p1, v5}, Lscala/collection/BitSet;->word(I)J

    move-result-wide v11

    or-long/2addr v9, v11

    aput-wide v9, v1, v5

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    .line 148
    :cond_4
    invoke-interface {p0, v1}, Lscala/collection/BitSetLike;->fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/BitSetLike;)V
    .locals 0

    return-void
.end method

.method public static $up(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 13

    .line 188
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/BitSet;->nwords()I

    move-result v1

    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 189
    new-array v1, v0, [J

    .line 190
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {p0, v5}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v9

    invoke-interface {p1, v5}, Lscala/collection/BitSet;->word(I)J

    move-result-wide v11

    xor-long/2addr v9, v11

    aput-wide v9, v1, v5

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    .line 192
    :cond_4
    invoke-interface {p0, v1}, Lscala/collection/BitSetLike;->fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/BitSetLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 3

    .line 208
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 210
    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result p2

    mul-int/lit8 p2, p2, 0x40

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p2, :cond_1

    .line 213
    invoke-interface {p0, v1}, Lscala/collection/BitSetLike;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-object v0, p3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lscala/collection/BitSetLike;I)Z
    .locals 4

    if-ltz p1, :cond_0

    shr-int/lit8 v0, p1, 0x6

    .line 196
    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static foreach(Lscala/collection/BitSetLike;Lscala/Function1;)V
    .locals 9

    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 125
    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v1

    mul-int/lit8 v3, v0, 0x40

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    const-wide/16 v4, 0x1

    and-long v6, v1, v4

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    .line 128
    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_2
    const/4 v4, 0x1

    ushr-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static isEmpty(Lscala/collection/BitSetLike;)Z
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 73
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v0

    new-instance v1, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;

    invoke-direct {v1, p0}, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;-><init>(Lscala/collection/BitSetLike;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Range;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static iterator(Lscala/collection/BitSetLike;)Lscala/collection/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static keysIteratorFrom(Lscala/collection/BitSetLike;I)Lscala/collection/AbstractIterator;
    .locals 1

    .line 106
    new-instance v0, Lscala/collection/BitSetLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/BitSetLike$$anon$1;-><init>(Lscala/collection/BitSetLike;I)V

    return-object v0
.end method

.method public static ordering(Lscala/collection/BitSetLike;)Lscala/math/Ordering;
    .locals 0

    .line 75
    sget-object p0, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    return-object p0
.end method

.method public static rangeImpl(Lscala/collection/BitSetLike;Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;
    .locals 12

    .line 78
    invoke-interface {p0}, Lscala/collection/BitSetLike;->toBitMask()[J

    move-result-object v0

    .line 79
    array-length v1, v0

    .line 80
    invoke-virtual {p1}, Lscala/Option;->isDefined()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0x40

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-lt p1, v7, :cond_0

    if-ge v2, v1, :cond_0

    add-int/lit8 p1, p1, -0x40

    .line 85
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    if-ge v2, v1, :cond_1

    .line 88
    aget-wide v8, v0, v2

    shl-long v10, v5, p1

    sub-long/2addr v10, v5

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v0, v2

    .line 90
    :cond_1
    invoke-virtual {p2}, Lscala/Option;->isDefined()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    .line 92
    div-int/lit8 p2, p1, 0x40

    .line 93
    rem-int/2addr p1, v7

    add-int/lit8 v2, p2, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 96
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ge p2, v1, :cond_3

    .line 99
    aget-wide v1, v0, p2

    shl-long v3, v5, p1

    sub-long/2addr v3, v5

    and-long/2addr v1, v3

    aput-wide v1, v0, p2

    .line 101
    :cond_3
    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;

    move-result-object p0

    return-object p0
.end method

.method public static size(Lscala/collection/BitSetLike;)I
    .locals 4

    .line 65
    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 68
    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static stringPrefix(Lscala/collection/BitSetLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "BitSet"

    return-object p0
.end method

.method public static subsetOf(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Z
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 205
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v0

    new-instance v1, Lscala/collection/BitSetLike$$anonfun$subsetOf$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/BitSetLike$$anonfun$subsetOf$1;-><init>(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Range;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static toBitMask(Lscala/collection/BitSetLike;)[J
    .locals 4

    .line 54
    invoke-interface {p0}, Lscala/collection/BitSetLike;->nwords()I

    move-result v0

    new-array v1, v0, [J

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 58
    invoke-interface {p0, v0}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

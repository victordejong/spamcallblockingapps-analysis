.class public abstract Lscala/collection/IndexedSeqOptimized$class;
.super Ljava/lang/Object;
.source "IndexedSeqOptimized.scala"


# direct methods
.method public static $init$(Lscala/collection/IndexedSeqOptimized;)V
    .locals 0

    return-void
.end method

.method public static copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V
    .locals 3

    .line 177
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 178
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 180
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 3

    .line 147
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-interface {p0, v2, v0}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static dropWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->prefixLength(Lscala/Function1;)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->drop(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z
    .locals 7

    .line 263
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_6

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 265
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 266
    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-gt v2, v0, :cond_5

    :goto_0
    if-ltz v2, :cond_7

    .line 270
    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_2
    instance-of v6, v4, Ljava/lang/Character;

    if-eqz v6, :cond_3

    check-cast v4, Ljava/lang/Character;

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 278
    :cond_6
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z

    move-result v1

    :cond_7
    :goto_2
    return v1
.end method

.method public static exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized$class;->prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I

    move-result p1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;
    .locals 1

    .line 50
    new-instance v0, Lscala/collection/IndexedSeqOptimized$$anonfun$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/IndexedSeqOptimized$$anonfun$1;-><init>(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->prefixLength(Lscala/Function1;)I

    move-result p1

    .line 51
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public static foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2

    .line 66
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldRight(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2

    .line 70
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldr(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-ne p1, p2, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 57
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move p1, v0

    goto :goto_0
.end method

.method private static foldr(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    :goto_0
    if-ne p1, p2, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 62
    invoke-interface {p0, p2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0, p3}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method public static forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized$class;->prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I

    move-result p1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V
    .locals 3

    .line 32
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 203
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p2

    .line 204
    new-instance v0, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;-><init>(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    invoke-interface {p0, v0, p2}, Lscala/collection/IndexedSeqOptimized;->segmentLength(Lscala/Function1;I)I

    move-result p1

    add-int/2addr p2, p1

    invoke-static {p0, p2}, Lscala/collection/IndexedSeqOptimized$class;->negLength(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p0

    return p0
.end method

.method public static init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 2

    .line 135
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v0, v1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isEmpty(Lscala/collection/IndexedSeqOptimized;)Z
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I
    .locals 2

    .line 209
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p2, v1}, Lscala/math/package$;->min(II)I

    move-result p2

    :goto_0
    if-ltz p2, :cond_0

    .line 210
    invoke-interface {p0, p2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I
    .locals 0

    .line 189
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method private static negLength(Lscala/collection/IndexedSeqOptimized;I)I
    .locals 0

    .line 199
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method private static prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 3

    .line 74
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lscala/collection/IndexedSeqOptimized$class;->foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 3

    .line 78
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lscala/collection/IndexedSeqOptimized$class;->foldr(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 3

    .line 216
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 218
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 221
    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;
    .locals 1

    .line 227
    new-instance v0, Lscala/collection/IndexedSeqOptimized$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;-><init>(Lscala/collection/IndexedSeqOptimized;)V

    return-object v0
.end method

.method public static sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z
    .locals 7

    .line 162
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_7

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 164
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    .line 165
    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 167
    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_2
    instance-of v6, v4, Ljava/lang/Character;

    if-eqz v6, :cond_3

    check-cast v4, Ljava/lang/Character;

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 171
    :cond_7
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z

    move-result v2

    :goto_3
    return v2
.end method

.method public static segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I
    .locals 3

    .line 193
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 195
    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    return v1
.end method

.method public static slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;
    .locals 3

    .line 111
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/math/package$;->max(II)I

    move-result p1

    .line 112
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v2, p2, v1}, Lscala/math/package$;->max(II)I

    move-result p2

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lscala/math/package$;->min(II)I

    move-result p2

    .line 113
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int v2, p2, p1

    invoke-virtual {v0, v2, v1}, Lscala/math/package$;->max(II)I

    move-result v0

    .line 114
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 115
    invoke-interface {v1, v0}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 119
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static span(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Tuple2;
    .locals 0

    .line 159
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->prefixLength(Lscala/Function1;)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->splitAt(I)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static splitAt(Lscala/collection/IndexedSeqOptimized;I)Lscala/Tuple2;
    .locals 2

    .line 150
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->take(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->drop(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z
    .locals 8

    .line 238
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 242
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    .line 243
    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge p2, v0, :cond_4

    if-ge v4, v3, :cond_4

    .line 244
    invoke-interface {p0, p2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_2

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    instance-of v7, v5, Ljava/lang/Character;

    if-eqz v7, :cond_3

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v4, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_4

    .line 251
    :cond_5
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    .line 252
    invoke-interface {p1}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    :goto_2
    if-ge p2, v0, :cond_b

    .line 253
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 254
    invoke-interface {p0, p2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_8
    instance-of v5, v3, Ljava/lang/Character;

    if-eqz v5, :cond_9

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_a

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    return v1

    .line 259
    :cond_b
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    :cond_c
    :goto_4
    return v1
.end method

.method public static tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 2

    .line 129
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-interface {p0, v0, p1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 3

    .line 144
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->prefixLength(Lscala/Function1;)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->take(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    .line 81
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 83
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 84
    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 85
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    .line 86
    invoke-interface {p2, v1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    new-instance v2, Lscala/Tuple2;

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    .line 98
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 99
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    .line 100
    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 103
    new-instance v2, Lscala/Tuple2;

    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

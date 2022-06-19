.class public abstract Lscala/collection/IterableLike$class;
.super Ljava/lang/Object;
.source "IterableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableLike;)V
    .locals 0

    return-void
.end method

.method public static canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V
    .locals 2

    .line 250
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 251
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/2addr p3, p2

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    .line 252
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 253
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 3

    .line 143
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 144
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lscala/math/package$;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 145
    invoke-interface {v0, p0, v1}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 147
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 148
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Builder;

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static dropRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 2

    .line 238
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-ltz p1, :cond_0

    neg-int v1, p1

    .line 239
    invoke-interface {v0, p0, v1}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 240
    :cond_0
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p1

    .line 241
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 242
    :goto_0
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 244
    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static exists(Lscala/collection/IterableLike;Lscala/Function1;)Z
    .locals 0

    .line 77
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static find(Lscala/collection/IterableLike;Lscala/Function1;)Lscala/Option;
    .locals 0

    .line 79
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->find(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static foldRight(Lscala/collection/IterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Iterator;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/collection/IterableLike;Lscala/Function1;)Z
    .locals 0

    .line 75
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static foreach(Lscala/collection/IterableLike;Lscala/Function1;)V
    .locals 0

    .line 72
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static grouped(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;
    .locals 1

    .line 174
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->grouped(I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    new-instance v0, Lscala/collection/IterableLike$$anonfun$grouped$1;

    invoke-direct {v0, p0}, Lscala/collection/IterableLike$$anonfun$grouped$1;-><init>(Lscala/collection/IterableLike;)V

    invoke-virtual {p1, v0}, Lscala/collection/Iterator$GroupedIterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static head(Lscala/collection/IterableLike;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/IterableLike;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z
    .locals 4

    .line 292
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 293
    invoke-interface {p1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 294
    :cond_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
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

    .line 298
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

.method public static slice(Lscala/collection/IterableLike;II)Ljava/lang/Object;
    .locals 2

    .line 110
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/math/package$;->max(II)I

    move-result p1

    sub-int/2addr p2, p1

    .line 112
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-gtz p2, :cond_0

    .line 113
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface {v0, p2, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 117
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 118
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static sliding(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;
    .locals 1

    const/4 v0, 0x1

    .line 190
    invoke-interface {p0, p1, v0}, Lscala/collection/IterableLike;->sliding(II)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static sliding(Lscala/collection/IterableLike;II)Lscala/collection/Iterator;
    .locals 1

    .line 204
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Iterator;->sliding(II)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    new-instance p2, Lscala/collection/IterableLike$$anonfun$sliding$1;

    invoke-direct {p2, p0}, Lscala/collection/IterableLike$$anonfun$sliding$1;-><init>(Lscala/collection/IterableLike;)V

    invoke-virtual {p1, p2}, Lscala/collection/Iterator$GroupedIterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static take(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 3

    .line 127
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-gtz p1, :cond_0

    .line 129
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 131
    :cond_0
    invoke-interface {v0, p1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    const/4 v1, 0x0

    .line 133
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 134
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static takeRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 2

    .line 218
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 219
    invoke-interface {v0, p1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 220
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p1

    .line 221
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 222
    :goto_0
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 224
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_0
    :goto_1
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 227
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/IterableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 3

    .line 156
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 157
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 158
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 163
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;
    .locals 0

    .line 54
    check-cast p0, Lscala/collection/Iterable;

    return-object p0
.end method

.method public static toCollection(Lscala/collection/IterableLike;Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 55
    check-cast p1, Lscala/collection/Iterable;

    return-object p1
.end method

.method public static toIterable(Lscala/collection/IterableLike;)Lscala/collection/Iterable;
    .locals 0

    .line 96
    invoke-interface {p0}, Lscala/collection/IterableLike;->thisCollection()Lscala/collection/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;
    .locals 0

    .line 104
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 301
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/IterableLike;)Lscala/collection/IterableView;
    .locals 1

    .line 311
    new-instance v0, Lscala/collection/IterableLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/IterableLike$$anon$1;-><init>(Lscala/collection/IterableLike;)V

    return-object v0
.end method

.method public static view(Lscala/collection/IterableLike;II)Lscala/collection/IterableView;
    .locals 0

    .line 316
    invoke-interface {p0}, Lscala/collection/IterableLike;->view()Lscala/collection/IterableView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/IterableView;->slice(II)Lscala/collection/TraversableView;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableView;

    return-object p0
.end method

.method public static zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 260
    invoke-interface {p0}, Lscala/collection/IterableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 261
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 262
    invoke-interface {p1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 263
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zipAll(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 269
    invoke-interface {p0}, Lscala/collection/IterableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p4

    .line 270
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    .line 271
    invoke-interface {p1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 272
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 274
    :cond_0
    :goto_1
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    .line 276
    :cond_1
    :goto_2
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 277
    new-instance p0, Lscala/Tuple2;

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_2

    .line 278
    :cond_2
    invoke-interface {p4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zipWithIndex(Lscala/collection/IterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 282
    invoke-interface {p0}, Lscala/collection/IterableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 283
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 284
    new-instance v1, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;

    invoke-direct {v1, p0, p1, v0}, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;-><init>(Lscala/collection/IterableLike;Lscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v1}, Lscala/collection/IterableLike;->foreach(Lscala/Function1;)V

    .line 288
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

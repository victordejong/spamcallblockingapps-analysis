.class public abstract Lscala/collection/TraversableOnce$class;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"


# direct methods
.method public static $colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableOnce;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/TraversableOnce;)V
    .locals 0

    return-void
.end method

.method public static addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    const-string v0, ""

    .line 413
    invoke-interface {p0, p1, v0}, Lscala/collection/TraversableOnce;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    const-string v0, ""

    .line 391
    invoke-interface {p0, p1, v0, p2, v0}, Lscala/collection/TraversableOnce;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 352
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 354
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 355
    new-instance p2, Lscala/collection/TraversableOnce$$anonfun$addString$1;

    invoke-direct {p2, p0, v0, p1, p3}, Lscala/collection/TraversableOnce$$anonfun$addString$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 365
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    return-object p1
.end method

.method public static aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 133
    :try_start_0
    instance-of v1, p0, Lscala/collection/Iterator;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lscala/collection/Iterator;

    goto :goto_0

    .line 134
    :cond_0
    instance-of v1, p0, Lscala/collection/GenIterable;

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 132
    :goto_0
    new-instance v2, Lscala/collection/TraversableOnce$$anon$2;

    invoke-direct {v2, p0}, Lscala/collection/TraversableOnce$$anon$2;-><init>(Lscala/collection/TraversableOnce;)V

    .line 142
    :cond_1
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 143
    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v2, :cond_1

    .line 144
    new-instance p1, Lscala/Some;

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 146
    :cond_2
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 136
    :cond_3
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableOnce$$anonfun$1;-><init>(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 137
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Option;

    :goto_1
    return-object p0

    :cond_4
    throw p0
.end method

.method public static copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V
    .locals 2

    .line 279
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lscala/collection/TraversableOnce;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V
    .locals 1

    .line 276
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p0, p1, p2, v0}, Lscala/collection/TraversableOnce;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V
    .locals 0

    .line 273
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static count(Lscala/collection/TraversableOnce;Lscala/Function1;)I
    .locals 2

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 113
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$count$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableOnce$$anonfun$count$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/IntRef;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 116
    iget p0, v0, Lscala/runtime/IntRef;->elem:I

    return p0
.end method

.method public static fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 154
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 155
    new-instance v0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 156
    iget-object p0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0
.end method

.method public static foldRight(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2

    .line 160
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->reversed()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$foldRight$1;

    invoke-direct {v1, p0, p2}, Lscala/collection/TraversableOnce$$anonfun$foldRight$1;-><init>(Lscala/collection/TraversableOnce;Lscala/Function2;)V

    invoke-virtual {v0, p1, v1}, Lscala/collection/immutable/List;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1

    .line 226
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lscala/collection/TraversableOnce$$anonfun$max$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$max$1;-><init>(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.max"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 9

    .line 233
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v3

    .line 237
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    const/4 v1, 0x1

    .line 238
    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v5

    .line 240
    new-instance v8, Lscala/collection/TraversableOnce$$anonfun$maxBy$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lscala/collection/TraversableOnce$$anonfun$maxBy$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;Lscala/Function1;Lscala/math/Ordering;)V

    invoke-interface {p0, v8}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 248
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.maxBy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1

    .line 219
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lscala/collection/TraversableOnce$$anonfun$min$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$min$1;-><init>(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.min"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 9

    .line 251
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 254
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v3

    .line 255
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    const/4 v1, 0x1

    .line 256
    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v5

    .line 258
    new-instance v8, Lscala/collection/TraversableOnce$$anonfun$minBy$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lscala/collection/TraversableOnce$$anonfun$minBy$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;Lscala/Function1;Lscala/math/Ordering;)V

    invoke-interface {p0, v8}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 266
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.minBy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 325
    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 323
    invoke-interface {p0, v0, p1, v0}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 321
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0, v0, p1, p2, p3}, Lscala/collection/TraversableOnce;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonEmpty(Lscala/collection/TraversableOnce;)Z
    .locals 0

    .line 109
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 2

    .line 216
    invoke-interface {p1}, Lscala/math/Numeric;->one()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$product$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$product$1;-><init>(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)V

    invoke-interface {p0, v0, v1}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;
    .locals 3

    .line 177
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 180
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 183
    new-instance v2, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 190
    iget-object p0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.reduceLeft"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;
    .locals 1

    .line 201
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 208
    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRight(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;
    .locals 2

    .line 194
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->reversed()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$reduceRight$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$reduceRight$1;-><init>(Lscala/collection/TraversableOnce;Lscala/Function2;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.reduceRight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;
    .locals 1

    .line 204
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;
    .locals 2

    .line 98
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 99
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$reversed$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableOnce$$anonfun$reversed$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 100
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/collection/immutable/List;

    return-object p0
.end method

.method public static size(Lscala/collection/TraversableOnce;)I
    .locals 2

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 105
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$size$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableOnce$$anonfun$size$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 106
    iget p0, v0, Lscala/runtime/IntRef;->elem:I

    return p0
.end method

.method public static sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 2

    .line 214
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$sum$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$sum$1;-><init>(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)V

    invoke-interface {p0, v0, v1}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 308
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p0

    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 309
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1

    .line 282
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isTraversableAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 284
    invoke-interface {p0, p1, v0}, Lscala/collection/TraversableOnce;->copyToArray(Ljava/lang/Object;I)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 300
    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;
    .locals 1

    .line 298
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->fallbackStringCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/IndexedSeq;

    return-object p0
.end method

.method public static toIterable(Lscala/collection/TraversableOnce;)Lscala/collection/Iterable;
    .locals 0

    .line 294
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;
    .locals 1

    .line 292
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/List;

    return-object p0
.end method

.method public static toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 2

    .line 313
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v0}, Lscala/collection/immutable/Map$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 314
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$toMap$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableOnce$$anonfun$toMap$1;-><init>(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Builder;Lscala/Predef$$less$colon$less;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 317
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Map;

    return-object p0
.end method

.method public static toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;
    .locals 0

    .line 296
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;
    .locals 1

    .line 302
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Set;

    return-object p0
.end method

.method public static toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;
    .locals 1

    .line 304
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Vector;

    return-object p0
.end method

.class public abstract Lscala/collection/LinearSeqOptimized$class;
.super Ljava/lang/Object;
.source "LinearSeqOptimized.scala"


# direct methods
.method public static $init$(Lscala/collection/LinearSeqOptimized;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 65
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z
    .locals 3

    .line 102
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    return v2

    .line 104
    :cond_5
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static drop(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 173
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    .line 175
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 176
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static dropRight(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;
    .locals 2

    .line 195
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 197
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    .line 198
    :goto_0
    invoke-interface {p1}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    return-object p0

    .line 199
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 200
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    .line 201
    invoke-interface {p1}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z
    .locals 1

    .line 92
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_1
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static find(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Option;
    .locals 1

    .line 112
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p0

    .line 113
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 114
    :cond_1
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static foldLeft(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 123
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 124
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static foldRight(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    invoke-interface {p0, p1, p2}, Lscala/collection/LinearSeqOptimized;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z
    .locals 1

    .line 82
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 83
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static foreach(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)V
    .locals 1

    .line 72
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I
    .locals 1

    .line 297
    invoke-interface {p0, p2}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p0

    .line 298
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 303
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 281
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->lengthCompare(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;
    .locals 3

    .line 148
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    :goto_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    .line 151
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    .line 148
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static lastIndexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 313
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-gt v0, p2, :cond_1

    .line 314
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 315
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static length(Lscala/collection/LinearSeqOptimized;)I
    .locals 2

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static lengthCompare(Lscala/collection/LinearSeqOptimized;I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 277
    invoke-static {p0, v0, p0, p1}, Lscala/collection/LinearSeqOptimized$class;->loop$1(Lscala/collection/LinearSeqOptimized;ILscala/collection/LinearSeqOptimized;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final loop$1(Lscala/collection/LinearSeqOptimized;ILscala/collection/LinearSeqOptimized;I)I
    .locals 0

    :goto_0
    if-ne p1, p3, :cond_1

    .line 270
    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    :goto_1
    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 274
    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lscala/collection/LinearSeqOptimized;

    goto :goto_0
.end method

.method public static reduceLeft(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lscala/collection/LinearSeqOptimized;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "empty.reduceLeft"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reduceRight(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    invoke-interface {v0}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Nil.reduceRight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z
    .locals 5

    .line 250
    instance-of v0, p1, Lscala/collection/LinearSeq;

    if-eqz v0, :cond_7

    check-cast p1, Lscala/collection/LinearSeq;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_6

    .line 256
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lscala/collection/LinearSeq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lscala/collection/LinearSeq;->head()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    instance-of v4, v2, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    .line 257
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    .line 258
    invoke-interface {p1}, Lscala/collection/LinearSeq;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/LinearSeq;

    goto :goto_0

    .line 260
    :cond_4
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lscala/collection/LinearSeq;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_8

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 263
    :cond_7
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z

    move-result v0

    :cond_8
    :goto_3
    return v0
.end method

.method public static segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I
    .locals 1

    .line 286
    invoke-interface {p0, p2}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p0

    const/4 p2, 0x0

    .line 287
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 289
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static slice(Lscala/collection/LinearSeqOptimized;II)Lscala/collection/LinearSeqOptimized;
    .locals 3

    .line 208
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 209
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    if-gt p2, p1, :cond_0

    .line 211
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    return-object p0

    .line 213
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    sub-int/2addr p2, p1

    .line 215
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p1, :cond_1

    .line 216
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 221
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 222
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    goto :goto_1

    .line 224
    :cond_2
    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    return-object p0
.end method

.method public static span(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Tuple2;
    .locals 2

    .line 240
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    .line 241
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    .line 242
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 244
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static take(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;
    .locals 3

    .line 160
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 162
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-ge v1, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 165
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 166
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/collection/LinearSeqOptimized;
    .locals 2

    .line 229
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 231
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 233
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/LinearSeqOptimized;

    return-object p0
.end method

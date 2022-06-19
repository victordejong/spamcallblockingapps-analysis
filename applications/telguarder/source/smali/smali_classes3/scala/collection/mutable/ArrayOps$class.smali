.class public abstract Lscala/collection/mutable/ArrayOps$class;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 8

    .line 57
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p2}, Lscala/Array$;->ofDim(ILscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p2

    .line 58
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v3

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p2, p0, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p2
.end method

.method public static $init$(Lscala/collection/mutable/ArrayOps;)V
    .locals 0

    return-void
.end method

.method public static $plus$colon(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 8

    .line 64
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p2}, Lscala/Array$;->ofDim(ILscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v3

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static copyToArray(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;II)V
    .locals 6

    .line 43
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lscala/math/package$;->min(II)I

    move-result p3

    .line 44
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    sget-object p3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p3

    :cond_0
    move v5, p3

    .line 45
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;
    .locals 1

    .line 40
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static flatten(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 4

    .line 80
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {v0, p2}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p2

    .line 81
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;-><init>(Lscala/collection/mutable/ArrayOps;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v3}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    sget-object v1, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    .line 82
    new-instance v0, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;

    invoke-direct {v0, p0, p2, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;-><init>(Lscala/collection/mutable/ArrayOps;Lscala/collection/mutable/ArrayBuilder;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 84
    invoke-virtual {p2}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final mkRowBuilder$1(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/ArrayBuilder;
    .locals 3

    .line 97
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static par(Lscala/collection/mutable/ArrayOps;)Lscala/collection/parallel/mutable/ParArray;
    .locals 1

    .line 70
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/parallel/mutable/ParArray$;->handoff(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParArray;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 174
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Lscala/collection/mutable/ArrayOps;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2

    .line 49
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 51
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/ArrayOps;->scala$collection$mutable$ArrayOps$$super$toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static transpose(Lscala/collection/mutable/ArrayOps;Lscala/Function1;)[Ljava/lang/Object;
    .locals 6

    .line 94
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    .line 95
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/ArrayOps$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/collection/mutable/ArrayOps$$anonfun$1;-><init>(Lscala/collection/mutable/ArrayOps;)V

    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v5, Lscala/collection/mutable/ArrayBuilder;

    invoke-virtual {v4, v5}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lscala/collection/mutable/ArrayBuilder;

    .line 99
    new-instance v2, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;

    invoke-direct {v2, p0, v1, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;-><init>(Lscala/collection/mutable/ArrayOps;[Lscala/collection/mutable/ArrayBuilder;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 106
    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance v1, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;

    invoke-direct {v1, p0, v0}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;-><init>(Lscala/collection/mutable/ArrayOps;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 107
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public static unzip(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple2;
    .locals 4

    .line 127
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p2

    .line 128
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v0

    invoke-interface {p3, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-interface {p0, v0}, Lscala/collection/mutable/ArrayOps;->apply(I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple2;

    invoke-virtual {v3}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v0, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 133
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple2;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p3, v0, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Lscala/Tuple2;

    invoke-direct {p0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static unzip3(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple3;
    .locals 4

    .line 159
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p2

    .line 160
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v0

    invoke-interface {p3, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p3

    .line 161
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v0

    invoke-interface {p4, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    invoke-interface {p0, v0}, Lscala/collection/mutable/ArrayOps;->apply(I)Ljava/lang/Object;

    move-result-object v1

    .line 165
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    invoke-virtual {v3}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v0, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 166
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    invoke-virtual {v3}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p3, v0, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 167
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p4, v0, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    new-instance p0, Lscala/Tuple3;

    invoke-direct {p0, p2, p3, p4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

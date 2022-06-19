.class public Lscala/collection/SeqLike$CombinationsItr;
.super Lscala/collection/AbstractIterator;
.source "SeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CombinationsItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TRepr;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike;

.field private _hasNext:Z

.field private final n:I

.field private final scala$collection$SeqLike$CombinationsItr$$cnts:[I

.field private final scala$collection$SeqLike$CombinationsItr$$elms:Lscala/collection/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/IndexedSeq<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scala$collection$SeqLike$CombinationsItr$$nums:[I

.field private final scala$collection$SeqLike$CombinationsItr$$offs:[I

.field private final synthetic x$4:Lscala/Tuple3;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;I)V"
        }
    .end annotation

    .line 208
    iput p2, p0, Lscala/collection/SeqLike$CombinationsItr;->n:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr;->$outer:Lscala/collection/SeqLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 212
    invoke-direct {p0}, Lscala/collection/SeqLike$CombinationsItr;->init()Lscala/Tuple3;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lscala/collection/SeqLike$CombinationsItr;->x$4:Lscala/Tuple3;

    invoke-virtual {p2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IndexedSeq;

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$elms:Lscala/collection/IndexedSeq;

    invoke-virtual {p2}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$cnts:[I

    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums:[I

    .line 213
    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$cnts()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$1;

    invoke-direct {v0, p0}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$1;-><init>(Lscala/collection/SeqLike$CombinationsItr;)V

    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v2}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lscala/collection/mutable/ArrayOps;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$offs:[I

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lscala/collection/SeqLike$CombinationsItr;->_hasNext:Z

    return-void

    .line 212
    :cond_0
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private _hasNext()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lscala/collection/SeqLike$CombinationsItr;->_hasNext:Z

    return v0
.end method

.method private _hasNext_$eq(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lscala/collection/SeqLike$CombinationsItr;->_hasNext:Z

    return-void
.end method

.method private init()Lscala/Tuple3;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple3<",
            "Lscala/collection/IndexedSeq<",
            "TA;>;[I[I>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 254
    sget-object v1, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    new-instance v2, Lscala/collection/mutable/HashMap;

    invoke-direct {v2}, Lscala/collection/mutable/HashMap;-><init>()V

    check-cast v2, Lscala/collection/mutable/Builder;

    invoke-interface {v2, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Builder;

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenMap;

    check-cast v1, Lscala/collection/mutable/HashMap;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$$outer()Lscala/collection/SeqLike;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v2

    new-instance v3, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;

    invoke-direct {v3, v0, v1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;-><init>(Lscala/collection/SeqLike$CombinationsItr;Lscala/collection/mutable/HashMap;)V

    sget-object v4, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v4}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/SeqLike;

    new-instance v3, Lscala/collection/SeqLike$CombinationsItr$$anonfun$5;

    invoke-direct {v3, v0}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$5;-><init>(Lscala/collection/SeqLike$CombinationsItr;)V

    sget-object v4, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    invoke-interface {v2, v3, v4}, Lscala/collection/SeqLike;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/generic/GenericTraversableTemplate;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v3}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/generic/GenericTraversableTemplate;->unzip(Lscala/Function1;)Lscala/Tuple2;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lscala/Tuple2;

    invoke-virtual {v2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/Seq;

    invoke-virtual {v3}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/Seq;

    .line 258
    invoke-virtual {v1}, Lscala/collection/mutable/HashMap;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 259
    new-instance v5, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;

    invoke-direct {v5, v0, v4}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;-><init>(Lscala/collection/SeqLike$CombinationsItr;[I)V

    invoke-interface {v3, v5}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 260
    new-array v3, v1, [I

    .line 262
    iget v5, v0, Lscala/collection/SeqLike$CombinationsItr;->n:I

    invoke-static {v5}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 263
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v6, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v6, Lscala/collection/immutable/Range;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v1, v8}, Lscala/collection/immutable/Range;-><init>(III)V

    new-instance v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;

    invoke-direct {v1, v0, v4, v3, v5}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;-><init>(Lscala/collection/SeqLike$CombinationsItr;[I[ILscala/runtime/IntRef;)V

    invoke-virtual {v6}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v6}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    const/high16 v9, -0x80000000

    if-ne v5, v9, :cond_1

    invoke-virtual {v6}, Lscala/collection/immutable/Range;->end()I

    move-result v5

    if-eq v5, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6}, Lscala/collection/immutable/Range;->start()I

    move-result v9

    invoke-virtual {v6}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v10

    invoke-virtual {v6}, Lscala/collection/immutable/Range;->step()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-eqz v5, :cond_2

    if-eq v9, v10, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v13

    if-ge v12, v13, :cond_3

    :goto_3
    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_4

    iget-object v13, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->ns$1:[I

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v14, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    iget v14, v14, Lscala/runtime/IntRef;->elem:I

    iget-object v15, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->cs$1:[I

    aget v15, v15, v9

    sget-object v16, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v13, v9

    iget-object v13, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    iget-object v14, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    iget v14, v14, Lscala/runtime/IntRef;->elem:I

    iget-object v15, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->ns$1:[I

    aget v15, v15, v9

    sub-int/2addr v14, v15

    iput v14, v13, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v9, v11

    goto :goto_2

    .line 267
    :cond_4
    new-instance v1, Lscala/Tuple3;

    invoke-interface {v2}, Lscala/collection/Seq;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v2

    invoke-direct {v1, v2, v4, v3}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 257
    :cond_5
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lscala/collection/SeqLike$CombinationsItr;->_hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 219
    :cond_0
    sget-object v1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v1}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 222
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$$outer()Lscala/collection/SeqLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 223
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v2

    array-length v2, v2

    sget-object v3, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v3, Lscala/collection/immutable/Range;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lscala/collection/immutable/Range;-><init>(III)V

    new-instance v2, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

    invoke-direct {v2, v0, v1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;-><init>(Lscala/collection/SeqLike$CombinationsItr;Lscala/collection/mutable/Builder;)V

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->start()I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_2

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->end()I

    move-result v6

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3}, Lscala/collection/immutable/Range;->start()I

    move-result v8

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v9

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->step()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-eqz v6, :cond_3

    if-eq v8, v9, :cond_4

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v12

    if-ge v11, v12, :cond_4

    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_b

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v12

    aget v12, v12, v8

    sget-object v13, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v13, Lscala/collection/immutable/Range;

    invoke-direct {v13, v4, v12, v5}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v13}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v13}, Lscala/collection/immutable/Range;->start()I

    move-result v12

    if-ne v12, v7, :cond_6

    invoke-virtual {v13}, Lscala/collection/immutable/Range;->end()I

    move-result v12

    if-eq v12, v7, :cond_5

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v12, 0x1

    :goto_7
    invoke-virtual {v13}, Lscala/collection/immutable/Range;->start()I

    move-result v14

    invoke-virtual {v13}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v15

    invoke-virtual {v13}, Lscala/collection/immutable/Range;->step()I

    move-result v16

    const/4 v7, 0x0

    :goto_8
    if-eqz v12, :cond_7

    if-eq v14, v15, :cond_9

    goto :goto_9

    :cond_7
    invoke-virtual {v13}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v4

    if-ge v7, v4, :cond_8

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    iget-object v4, v2, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    invoke-virtual {v4}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$elms()Lscala/collection/IndexedSeq;

    move-result-object v4

    iget-object v5, v2, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    invoke-virtual {v5}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$offs()[I

    move-result-object v5

    aget v5, v5, v8

    add-int/2addr v5, v14

    invoke-interface {v4, v5}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v7, v7, 0x1

    add-int v14, v14, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v8, v10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v7, -0x80000000

    goto :goto_3

    .line 225
    :cond_b
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    .line 228
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_c

    .line 229
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$cnts()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v3, v4, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 232
    :cond_c
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v3

    new-instance v4, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v4, v3}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    new-instance v3, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$2;

    invoke-direct {v3, v0}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$2;-><init>(Lscala/collection/SeqLike$CombinationsItr;)V

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-static {v4, v3, v2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v2

    if-gez v2, :cond_d

    const/4 v3, 0x0

    .line 235
    invoke-direct {v0, v3}, Lscala/collection/SeqLike$CombinationsItr;->_hasNext_$eq(Z)V

    goto/16 :goto_11

    :cond_d
    const/4 v3, 0x0

    .line 237
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v4

    new-instance v5, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v5, v4}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v4, v6}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    new-instance v6, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v6, v5}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    sget-object v5, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-static {v6, v5}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 238
    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v8

    aget v8, v8, v2

    sub-int/2addr v8, v6

    aput v8, v7, v2

    .line 239
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v2

    array-length v2, v2

    sget-object v7, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v7, Lscala/collection/immutable/Range;

    invoke-direct {v7, v4, v2, v6}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v7}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v7}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_f

    invoke-virtual {v7}, Lscala/collection/immutable/Range;->end()I

    move-result v2

    if-eq v2, v4, :cond_e

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v7}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v7}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v8

    invoke-virtual {v7}, Lscala/collection/immutable/Range;->step()I

    move-result v9

    const/4 v10, 0x0

    :goto_e
    if-eqz v2, :cond_10

    if-eq v4, v8, :cond_11

    goto :goto_f

    :cond_10
    invoke-virtual {v7}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v11

    if-ge v10, v11, :cond_11

    :goto_f
    const/4 v11, 0x1

    goto :goto_10

    :cond_11
    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v11

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v12, v5, Lscala/runtime/IntRef;->elem:I

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$cnts()[I

    move-result-object v13

    aget v13, v13, v4

    sget-object v14, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, v11, v4

    iget v11, v5, Lscala/runtime/IntRef;->elem:I

    invoke-virtual/range {p0 .. p0}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v12

    aget v12, v12, v4

    sub-int/2addr v11, v12

    iput v11, v5, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v4, v9

    goto :goto_e

    :cond_12
    :goto_11
    return-object v1
.end method

.method public synthetic scala$collection$SeqLike$CombinationsItr$$$outer()Lscala/collection/SeqLike;
    .locals 1

    .line 208
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr;->$outer:Lscala/collection/SeqLike;

    return-object v0
.end method

.method public scala$collection$SeqLike$CombinationsItr$$cnts()[I
    .locals 1

    .line 212
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$cnts:[I

    return-object v0
.end method

.method public scala$collection$SeqLike$CombinationsItr$$elms()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$elms:Lscala/collection/IndexedSeq;

    return-object v0
.end method

.method public scala$collection$SeqLike$CombinationsItr$$nums()[I
    .locals 1

    .line 212
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums:[I

    return-object v0
.end method

.method public scala$collection$SeqLike$CombinationsItr$$offs()[I
    .locals 1

    .line 213
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$offs:[I

    return-object v0
.end method

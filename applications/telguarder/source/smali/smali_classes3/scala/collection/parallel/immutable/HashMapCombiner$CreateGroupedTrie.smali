.class public Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/immutable/HashMapCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateGroupedTrie"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/immutable/HashMapCombiner<",
        "TK;TV;>.CreateGroupedTrie<TRepr;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/immutable/HashMapCombiner;

.field private final bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final cbf:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TV;TRepr;>;>;"
        }
    .end annotation
.end field

.field private final howmany:I

.field private final offset:I

.field private volatile result:Lscala/runtime/BoxedUnit;

.field private final root:[Lscala/collection/immutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/HashMapCombiner;Lscala/Function0;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TV;TRepr;>;>;[",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;[",
            "Lscala/collection/immutable/HashMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 264
    iput-object p2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->cbf:Lscala/Function0;

    iput-object p3, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iput-object p4, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->root:[Lscala/collection/immutable/HashMap;

    iput p5, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->offset:I

    iput p6, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->$outer:Lscala/collection/parallel/immutable/HashMapCombiner;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 266
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private createGroupedTrie(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Lscala/collection/immutable/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TK;TRepr;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Lscala/collection/immutable/HashMap;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap;-><init>()V

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 282
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lscala/Tuple2;

    .line 283
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    move-object v4, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 285
    aget-object v0, v2, v1

    .line 286
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v6

    .line 289
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v7}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootbits()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object v5

    .line 290
    instance-of v7, v5, Lscala/Some;

    if-eqz v7, :cond_0

    check-cast v5, Lscala/Some;

    invoke-virtual {v5}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/collection/parallel/Combiner;

    goto :goto_2

    .line 291
    :cond_0
    sget-object v7, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 292
    iget-object v5, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->cbf:Lscala/Function0;

    invoke-interface {v5}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lscala/collection/parallel/Combiner;

    .line 293
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v7}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootbits()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v4

    move-object v5, v11

    .line 289
    :goto_2
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v5}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 300
    :cond_2
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    move-object v0, v4

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0, v0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->evaluateCombiners(Lscala/collection/immutable/HashMap;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private evaluateCombiners(Lscala/collection/immutable/HashMap;)Lscala/collection/immutable/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap<",
            "TK;",
            "Lscala/collection/parallel/Combiner<",
            "TV;TRepr;>;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TK;TRepr;>;"
        }
    .end annotation

    .line 305
    instance-of v0, p1, Lscala/collection/immutable/HashMap$HashMap1;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashMap$HashMap1;

    .line 307
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    .line 308
    new-instance v1, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    :goto_0
    move-object p1, v1

    goto :goto_2

    .line 309
    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/HashMap$HashMapCollision1;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/immutable/HashMap$HashMapCollision1;

    .line 310
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie$$anonfun$7;

    invoke-direct {v1, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie$$anonfun$7;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;)V

    sget-object v2, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    invoke-virtual {v2}, Lscala/collection/immutable/ListMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/ListMap;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListMap;

    .line 311
    new-instance v1, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 312
    :cond_1
    instance-of v0, p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-eqz v0, :cond_2

    check-cast p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    const/4 v0, 0x0

    .line 314
    :goto_1
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 315
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->evaluateCombiners(Lscala/collection/immutable/HashMap;)Lscala/collection/immutable/HashMap;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p1
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 264
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->offset:I

    .line 269
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->howmany:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 271
    iget-object v1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->root:[Lscala/collection/immutable/HashMap;

    iget-object v2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->createGroupedTrie(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Lscala/collection/immutable/HashMap;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result()V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 264
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public mergeThrowables(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation

    .line 264
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$immutable$HashMapCombiner$CreateGroupedTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1

    .line 264
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->$outer:Lscala/collection/parallel/immutable/HashMapCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 325
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    iget-object v2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->root:[Lscala/collection/immutable/HashMap;

    array-length v2, v2

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateGroupedTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/immutable/HashMapCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/parallel/TaskSupport;->parallelismLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/parallel/package$;->thresholdFromSize(II)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 264
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>.CreateGroupedTrie<TRepr;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 322
    iget v1, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->howmany:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 323
    sget-object v10, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;

    new-instance v12, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateGroupedTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v4

    iget-object v5, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->cbf:Lscala/Function0;

    iget-object v6, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v7, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->root:[Lscala/collection/immutable/HashMap;

    iget v8, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->offset:I

    move-object v3, v12

    move v9, v1

    invoke-direct/range {v3 .. v9}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;Lscala/Function0;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    const/4 v3, 0x0

    aput-object v12, v2, v3

    new-instance v3, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateGroupedTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v14

    iget-object v15, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->cbf:Lscala/Function0;

    iget-object v4, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v5, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->root:[Lscala/collection/immutable/HashMap;

    iget v6, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->offset:I

    add-int v18, v6, v1

    iget v6, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->howmany:I

    sub-int v19, v6, v1

    move-object v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;Lscala/Function0;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v11, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v10, v1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v1

    return-object v1
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 264
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 264
    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 264
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

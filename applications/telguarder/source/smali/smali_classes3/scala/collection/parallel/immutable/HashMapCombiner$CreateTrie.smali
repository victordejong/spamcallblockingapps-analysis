.class public Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;
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
    name = "CreateTrie"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/immutable/HashMapCombiner<",
        "TK;TV;>.CreateTrie;>;"
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

.field private final howmany:I

.field private final offset:I

.field private volatile result:Lscala/runtime/BoxedUnit;

.field private final root:[Lscala/collection/immutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/HashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;[",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;[",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 225
    iput-object p2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iput-object p3, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->root:[Lscala/collection/immutable/HashMap;

    iput p4, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->offset:I

    iput p5, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->$outer:Lscala/collection/parallel/immutable/HashMapCombiner;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 227
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private createTrie(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Lscala/collection/immutable/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lscala/collection/immutable/HashMap;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap;-><init>()V

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lscala/Tuple2;

    .line 244
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    move-object v4, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 246
    aget-object v9, v2, v1

    .line 247
    invoke-virtual {v9}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v6

    .line 248
    invoke-virtual {v9}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v5

    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootbits()I

    move-result v7

    invoke-virtual {v9}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    move-object v0, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 225
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

    .line 229
    iget p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->offset:I

    .line 230
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->howmany:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 232
    iget-object v1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->root:[Lscala/collection/immutable/HashMap;

    iget-object v2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->createTrie(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Lscala/collection/immutable/HashMap;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result()V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 225
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

    .line 225
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$immutable$HashMapCombiner$CreateTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1

    .line 225
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->$outer:Lscala/collection/parallel/immutable/HashMapCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 261
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    iget-object v2, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->root:[Lscala/collection/immutable/HashMap;

    array-length v2, v2

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

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

    .line 225
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>.CreateTrie;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 258
    iget v1, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->howmany:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 259
    sget-object v9, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;

    new-instance v11, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v4

    iget-object v5, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v6, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->root:[Lscala/collection/immutable/HashMap;

    iget v7, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->offset:I

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    new-instance v3, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->scala$collection$parallel$immutable$HashMapCombiner$CreateTrie$$$outer()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v13

    iget-object v14, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->bucks:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v15, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->root:[Lscala/collection/immutable/HashMap;

    iget v4, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->offset:I

    add-int v16, v4, v1

    iget v4, v0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->howmany:I

    sub-int v17, v4, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v10, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v9, v1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v1

    return-object v1
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 225
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 225
    iput-object p1, p0, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;->throwable:Ljava/lang/Throwable;

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

    .line 225
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 225
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

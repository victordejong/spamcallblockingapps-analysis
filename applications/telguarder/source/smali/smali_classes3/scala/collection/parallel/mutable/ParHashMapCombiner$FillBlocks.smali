.class public Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashMapCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FillBlocks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
        "TK;TV;>.FillBlocks;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

.field private final buckets:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final howmany:I

.field private final offset:I

.field private result:I

.field private final table:Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>.AddingHashTable;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;[",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>.AddingHashTable;II)V"
        }
    .end annotation

    .line 254
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;

    iput p4, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->offset:I

    iput p5, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->$outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    const/high16 p1, -0x80000000

    .line 256
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result:I

    return-void
.end method

.method private fillBlock(ILscala/collection/mutable/UnrolledBuffer$Unrolled;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)I"
        }
    .end annotation

    .line 270
    iget-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 272
    invoke-virtual {p2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lscala/collection/mutable/DefaultEntry;

    .line 273
    invoke-virtual {p2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 275
    aget-object v5, v2, v4

    .line 276
    invoke-virtual {p1, v5}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->insertEntry(Lscala/collection/mutable/DefaultEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p2

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 254
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->offset:I

    .line 259
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->howmany:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result_$eq(I)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result()I

    move-result v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    aget-object v2, v2, p1

    invoke-direct {p0, p1, v2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->fillBlock(ILscala/collection/mutable/UnrolledBuffer$Unrolled;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result_$eq(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->merge(Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>.FillBlocks;)V"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result_$eq(I)V

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

    .line 254
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public result()I
    .locals 1

    .line 256
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result:I

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public result_$eq(I)V
    .locals 0

    .line 256
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result:I

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 254
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->result_$eq(I)V

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashMapCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 1

    .line 254
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->$outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 291
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    sget-object v2, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashMapCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

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

    .line 254
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>.FillBlocks;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 285
    iget v1, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->howmany:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 286
    sget-object v9, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;

    new-instance v11, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashMapCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v4

    iget-object v5, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v6, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;

    iget v7, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->offset:I

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;II)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    new-instance v3, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashMapCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v13

    iget-object v14, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iget-object v15, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;

    iget v4, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->offset:I

    add-int v16, v4, v1

    iget v4, v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->howmany:I

    sub-int v17, v4, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;II)V

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

    .line 254
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 254
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

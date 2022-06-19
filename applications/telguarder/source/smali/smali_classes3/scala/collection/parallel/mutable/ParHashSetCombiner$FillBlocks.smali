.class public Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;
.super Ljava/lang/Object;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FillBlocks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
        "TT;>.FillBlocks;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

.field private final blocksize:I

.field private final buckets:[Lscala/collection/mutable/UnrolledBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final howmany:I

.field private final offset:I

.field private result:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final table:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.AddingFlatHashTable;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;[Lscala/collection/mutable/UnrolledBuffer;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;[",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.AddingFlatHashTable;II)V"
        }
    .end annotation

    .line 237
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    iput p4, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset:I

    iput p5, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 239
    new-instance p1, Lscala/Tuple2;

    const/high16 p2, -0x80000000

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p4, Lscala/collection/mutable/UnrolledBuffer;

    sget-object p5, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p5}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object p5

    invoke-direct {p4, p5}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    invoke-direct {p1, p2, p4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result:Lscala/Tuple2;

    .line 253
    invoke-virtual {p3}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableLength()I

    move-result p1

    sget-object p2, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {p2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits()I

    move-result p2

    shr-int/2addr p1, p2

    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blocksize:I

    return-void
.end method

.method private blockStart(I)I
    .locals 1

    .line 254
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blocksize()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method

.method private blocksize()I
    .locals 1

    .line 253
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blocksize:I

    return v0
.end method

.method private fillBlock(ILscala/collection/mutable/UnrolledBuffer;Lscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->nextBlockStart(I)I

    move-result v0

    if-nez p2, :cond_0

    .line 260
    new-instance p2, Lscala/Tuple2;

    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    sget-object v3, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v4}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/mutable/UnrolledBuffer$;->apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Lscala/collection/Traversable;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0, p2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->insertAll(IILscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p2}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result p2

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/UnrolledBuffer;

    .line 263
    invoke-direct {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blockStart(I)I

    move-result p1

    invoke-direct {p0, p1, v0, p3}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->insertAll(IILscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p3, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result p1

    invoke-virtual {p3}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lscala/collection/mutable/UnrolledBuffer;

    .line 266
    new-instance v0, Lscala/Tuple2;

    add-int/2addr p2, p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3}, Lscala/collection/mutable/UnrolledBuffer;->concat(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 263
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 260
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private insertAll(IILscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 269
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    .line 272
    invoke-virtual {p3}, Lscala/collection/mutable/UnrolledBuffer;->headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p3

    .line 274
    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 276
    invoke-virtual {p3}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 277
    invoke-virtual {p3}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 279
    aget-object v7, v4, v6

    .line 280
    invoke-virtual {v1, p1, p2, v7}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->insertEntry(IILjava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_0

    add-int/2addr v3, v8

    .line 281
    sget-object v7, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 282
    :cond_0
    invoke-virtual {v0, v7}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 286
    :cond_1
    invoke-virtual {p3}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p3

    goto :goto_0

    .line 298
    :cond_2
    new-instance p1, Lscala/Tuple2;

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private nextBlockStart(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 255
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blocksize()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 237
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public howmany()I
    .locals 1

    .line 237
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany:I

    return v0
.end method

.method public leaf(Lscala/Option;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result p1

    .line 244
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    aget-object v2, v2, p1

    invoke-direct {p0, p1, v2, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->fillBlock(ILscala/collection/mutable/UnrolledBuffer;Lscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/UnrolledBuffer;

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 251
    :cond_1
    new-instance p1, Lscala/Tuple2;

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result_$eq(Lscala/Tuple2;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->merge(Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.FillBlocks;)V"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blockStart(I)I

    move-result v0

    .line 307
    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->blockStart(I)I

    move-result v1

    .line 308
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result()Lscala/Tuple2;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/UnrolledBuffer;

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->insertAll(IILscala/collection/mutable/UnrolledBuffer;)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/UnrolledBuffer;

    .line 313
    new-instance v2, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result()Lscala/Tuple2;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result()Lscala/Tuple2;

    move-result-object v4

    invoke-virtual {v4}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result()Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {v1, p1}, Lscala/collection/mutable/UnrolledBuffer;->concat(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result_$eq(Lscala/Tuple2;)V

    return-void

    .line 308
    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
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

    .line 237
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public offset()I
    .locals 1

    .line 237
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset:I

    return v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 237
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result:Lscala/Tuple2;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result_$eq(Lscala/Tuple2;)V

    return-void
.end method

.method public result_$eq(Lscala/Tuple2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->result:Lscala/Tuple2;

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashSetCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner;
    .locals 1

    .line 237
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 315
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    sget-object v2, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashSetCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

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

    .line 237
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.FillBlocks;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 301
    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 302
    sget-object v9, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;

    new-instance v11, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashSetCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v4

    iget-object v5, v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    iget-object v6, v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result v7

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;[Lscala/collection/mutable/UnrolledBuffer;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;II)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    new-instance v3, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->scala$collection$parallel$mutable$ParHashSetCombiner$FillBlocks$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v13

    iget-object v14, v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    iget-object v15, v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->table:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->offset()I

    move-result v4

    add-int v16, v4, v1

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->howmany()I

    move-result v4

    sub-int v17, v4, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;[Lscala/collection/mutable/UnrolledBuffer;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;II)V

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

    .line 237
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 237
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 237
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 237
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

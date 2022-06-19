.class public Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;
.super Ljava/lang/Object;
.source "ResizableParArrayCombiner.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyChainToArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
        "TT;>.CopyChainToArray;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

.field private final array:[Ljava/lang/Object;

.field private final howmany:I

.field private final offset:I

.field private result:Lscala/runtime/BoxedUnit;

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 47
    iput-object p2, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->array:[Ljava/lang/Object;

    iput p3, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->offset:I

    iput p4, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->$outer:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 48
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private copyChunk([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 6

    .line 70
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sub-int v5, p5, p2

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private findStart(I)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {v1}, Lscala/collection/SeqLike;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {v1}, Lscala/collection/SeqLike;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lscala/Tuple2$mcII$sp;

    invoke-direct {v1, v0, p1}, Lscala/Tuple2$mcII$sp;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 47
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget p1, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->howmany:I

    if-lez p1, :cond_2

    .line 51
    iget v0, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->offset:I

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->findStart(I)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lscala/Tuple2$mcII$sp;

    invoke-virtual {v0}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2$mcII$sp;-><init>(II)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v1

    .line 54
    iget v2, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->offset:I

    move v3, v1

    move v7, v2

    :goto_0
    if-lez p1, :cond_2

    .line 56
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    .line 57
    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    move v8, p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->size()I

    move-result v2

    sub-int/2addr v2, v3

    move v8, v2

    :goto_1
    add-int v6, v3, v8

    .line 60
    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->internalArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->array:[Ljava/lang/Object;

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->copyChunk([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    add-int/2addr v7, v8

    sub-int/2addr p1, v8

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 47
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

    .line 47
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
    .locals 1

    .line 47
    iget-object v0, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->$outer:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 85
    iget v0, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->size()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

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

    .line 47
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>.CopyChainToArray;>;"
        }
    .end annotation

    .line 82
    iget v0, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->howmany:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 83
    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;

    new-instance v4, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v5

    iget-object v6, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->array:[Ljava/lang/Object;

    iget v7, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->offset:I

    invoke-direct {v4, v5, v6, v7, v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;-><init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;[Ljava/lang/Object;II)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v5

    iget-object v6, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->array:[Ljava/lang/Object;

    iget v7, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->offset:I

    add-int/2addr v7, v0

    iget v8, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->howmany:I

    sub-int/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;-><init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;[Ljava/lang/Object;II)V

    const/4 v0, 0x1

    aput-object v4, v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 47
    iget-object v0, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 47
    iput-object p1, p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;->throwable:Ljava/lang/Throwable;

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

    .line 47
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

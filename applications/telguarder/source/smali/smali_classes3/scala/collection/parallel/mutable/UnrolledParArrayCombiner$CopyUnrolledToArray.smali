.class public Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;
.super Ljava/lang/Object;
.source "UnrolledParArrayCombiner.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyUnrolledToArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
        "TT;>.CopyUnrolledToArray;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

.field private final array:[Ljava/lang/Object;

.field private final howmany:I

.field private final offset:I

.field private result:Lscala/runtime/BoxedUnit;

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 72
    iput-object p2, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->array:[Ljava/lang/Object;

    iput p3, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    iput p4, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->$outer:Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 74
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private findStart(I)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    .line 95
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 97
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lscala/Tuple2;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 72
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

    .line 76
    iget p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    if-lez p1, :cond_1

    .line 78
    iget v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->findStart(I)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v1

    .line 81
    iget v2, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    move v3, v1

    move v7, v2

    :goto_0
    if-lez p1, :cond_1

    .line 83
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->min(II)I

    move-result v8

    .line 84
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->array:[Ljava/lang/Object;

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p1, v8

    add-int/2addr v7, v8

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 72
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

    .line 72
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
    .locals 1

    .line 72
    iget-object v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->$outer:Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 105
    iget v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->size()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

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

    .line 72
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>.CopyUnrolledToArray;>;"
        }
    .end annotation

    .line 102
    iget v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 103
    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;

    new-instance v4, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object v5

    iget-object v6, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->array:[Ljava/lang/Object;

    iget v7, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    invoke-direct {v4, v5, v6, v7, v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;-><init>(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;[Ljava/lang/Object;II)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$CopyUnrolledToArray$$$outer()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object v5

    iget-object v6, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->array:[Ljava/lang/Object;

    iget v7, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    add-int/2addr v7, v0

    iget v8, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    sub-int/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;-><init>(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;[Ljava/lang/Object;II)V

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

    .line 72
    iget-object v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 72
    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "CopyUnrolledToArray("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->offset:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;->howmany:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 72
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

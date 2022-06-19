.class public abstract Lscala/collection/parallel/mutable/ResizableParArrayCombiner$class;
.super Ljava/lang/Object;
.source "ResizableParArrayCombiner.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V
    .locals 0

    return-void
.end method

.method public static allocateAndCopy(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)Lscala/collection/parallel/mutable/ParArray;
    .locals 6

    .line 32
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 33
    new-instance v0, Lscala/collection/mutable/ArraySeq;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lscala/collection/mutable/ArraySeq;-><init>(I)V

    .line 34
    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v2

    .line 36
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v3

    new-instance v4, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->size()I

    move-result v5

    invoke-direct {v4, p0, v2, v1, v5}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray;-><init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;[Ljava/lang/Object;II)V

    invoke-interface {v3, v4}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 38
    new-instance p0, Lscala/collection/parallel/mutable/ParArray;

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParArray;-><init>(Lscala/collection/mutable/ArraySeq;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lscala/collection/parallel/mutable/ParArray;

    new-instance v2, Lscala/collection/parallel/mutable/ExposedArraySeq;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->internalArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->size()I

    move-result p0

    invoke-direct {v2, v1, p0}, Lscala/collection/parallel/mutable/ExposedArraySeq;-><init>([Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Lscala/collection/parallel/mutable/ParArray;-><init>(Lscala/collection/mutable/ArraySeq;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final newLazyCombiner(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
    .locals 0

    .line 30
    sget-object p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object p0

    return-object p0
.end method

.method public static sizeHint(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;I)V
    .locals 2

    .line 27
    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->sizeHint(I)V

    :cond_0
    return-void
.end method

.method public static toString(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "ResizableParArrayCombiner("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->size()I

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v0, "): "

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;
.super Ljava/lang/Object;
.source "UnrolledParArrayCombiner.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V
    .locals 2

    .line 35
    new-instance v0, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->Any()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->scala$collection$parallel$mutable$UnrolledParArrayCombiner$_setter_$buff_$eq(Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;)V

    return-void
.end method

.method public static $plus$eq(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
    .locals 1

    .line 38
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    return-object p0
.end method

.method public static clear(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->clear()V

    return-void
.end method

.method public static combine(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    if-eq p1, p0, :cond_1

    .line 62
    instance-of v0, p1, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    .line 63
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->concat(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    const-string p1, "Cannot combine with combiner of different type."

    invoke-virtual {p0, p1}, Lscala/collection/parallel/package$;->unsupportedop(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static result(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)Lscala/collection/parallel/mutable/ParArray;
    .locals 6

    .line 43
    new-instance v0, Lscala/collection/mutable/ArraySeq;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArraySeq;-><init>(I)V

    .line 44
    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v2

    new-instance v3, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v1, v5, v4}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;-><init>(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;[Ljava/lang/Object;II)V

    invoke-interface {v2, v3}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 48
    new-instance p0, Lscala/collection/parallel/mutable/ParArray;

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParArray;-><init>(Lscala/collection/mutable/ArraySeq;)V

    return-object p0
.end method

.method public static size(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)I
    .locals 0

    .line 68
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->size()I

    move-result p0

    return p0
.end method

.method public static sizeHint(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;I)V
    .locals 8

    .line 56
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    new-instance v7, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    new-array v3, p1, [Ljava/lang/Object;

    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v5

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Any()Lscala/reflect/ClassTag;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    invoke-virtual {v0, v7}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 57
    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p1

    invoke-interface {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p0

    invoke-virtual {p1, p0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    return-void
.end method

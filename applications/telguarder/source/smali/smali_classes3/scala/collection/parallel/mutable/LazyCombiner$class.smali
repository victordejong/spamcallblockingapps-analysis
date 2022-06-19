.class public abstract Lscala/collection/parallel/mutable/LazyCombiner$class;
.super Ljava/lang/Object;
.source "LazyCombiner.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/LazyCombiner;)V
    .locals 1

    .line 28
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-interface {p0, v0}, Lscala/collection/parallel/mutable/LazyCombiner;->scala$collection$parallel$mutable$LazyCombiner$_setter_$lastbuff_$eq(Lscala/collection/generic/Growable;)V

    return-void
.end method

.method public static $plus$eq(Lscala/collection/parallel/mutable/LazyCombiner;Ljava/lang/Object;)Lscala/collection/parallel/mutable/LazyCombiner;
    .locals 1

    .line 29
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public static clear(Lscala/collection/parallel/mutable/LazyCombiner;)V
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->clear()V

    return-void
.end method

.method public static combine(Lscala/collection/parallel/mutable/LazyCombiner;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1

    if-eq p0, p1, :cond_1

    .line 34
    instance-of v0, p1, Lscala/collection/parallel/mutable/LazyCombiner;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lscala/collection/parallel/mutable/LazyCombiner;

    .line 36
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/parallel/mutable/LazyCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/parallel/mutable/LazyCombiner;->newLazyCombiner(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/LazyCombiner;

    move-result-object p0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot combine with combiner of different type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static result(Lscala/collection/parallel/mutable/LazyCombiner;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->allocateAndCopy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static size(Lscala/collection/parallel/mutable/LazyCombiner;)I
    .locals 3

    .line 39
    invoke-interface {p0}, Lscala/collection/parallel/mutable/LazyCombiner;->chain()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/mutable/LazyCombiner$$anonfun$size$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/LazyCombiner$$anonfun$size$1;-><init>(Lscala/collection/parallel/mutable/LazyCombiner;)V

    invoke-virtual {v0, v1, v2}, Lscala/collection/mutable/ArrayBuffer;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

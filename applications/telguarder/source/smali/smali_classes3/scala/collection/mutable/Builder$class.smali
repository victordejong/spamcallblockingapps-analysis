.class public abstract Lscala/collection/mutable/Builder$class;
.super Ljava/lang/Object;
.source "Builder.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Builder;)V
    .locals 0

    return-void
.end method

.method public static mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 117
    new-instance v0, Lscala/collection/mutable/Builder$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/Builder$$anon$1;-><init>(Lscala/collection/mutable/Builder;Lscala/Function1;)V

    return-object v0
.end method

.method public static sizeHint(Lscala/collection/mutable/Builder;I)V
    .locals 0

    return-void
.end method

.method public static sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V
    .locals 1

    .line 68
    instance-of v0, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1}, Lscala/collection/TraversableLike;->size()I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    :cond_0
    return-void
.end method

.method public static sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V
    .locals 1

    .line 87
    instance-of v0, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p1}, Lscala/collection/TraversableLike;->size()I

    move-result p1

    add-int/2addr p1, p2

    invoke-interface {p0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    :cond_0
    return-void
.end method

.method public static sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V
    .locals 2

    .line 105
    instance-of v0, p2, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p2}, Lscala/collection/TraversableLike;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    :cond_0
    return-void
.end method

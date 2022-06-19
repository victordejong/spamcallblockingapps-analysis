.class public abstract Lscala/collection/mutable/IndexedSeqView$class;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqView;)V
    .locals 0

    return-void
.end method

.method public static drop(Lscala/collection/mutable/IndexedSeqView;I)Lscala/collection/mutable/IndexedSeqView;
    .locals 2

    .line 88
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static dropWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0

    .line 91
    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0

    .line 86
    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;
    .locals 3

    .line 87
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/IndexedSeqView;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newDroppedWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1

    .line 82
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$3;-><init>(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFiltered(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1

    .line 80
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$1;-><init>(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)V

    return-object v0
.end method

.method public static newReversed(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1

    .line 84
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$5;

    invoke-direct {v0, p0}, Lscala/collection/mutable/IndexedSeqView$$anon$5;-><init>(Lscala/collection/mutable/IndexedSeqView;)V

    return-object v0
.end method

.method public static newSliced(Lscala/collection/mutable/IndexedSeqView;Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1

    .line 81
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$2;-><init>(Lscala/collection/mutable/IndexedSeqView;Lscala/collection/generic/SliceInterval;)V

    return-object v0
.end method

.method public static newTakenWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1

    .line 83
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$4;-><init>(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)V

    return-object v0
.end method

.method public static reverse(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0

    .line 95
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->newReversed()Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static slice(Lscala/collection/mutable/IndexedSeqView;II)Lscala/collection/mutable/IndexedSeqView;
    .locals 3

    .line 90
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static span(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/Tuple2;
    .locals 2

    .line 93
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object v1

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static splitAt(Lscala/collection/mutable/IndexedSeqView;I)Lscala/Tuple2;
    .locals 2

    .line 94
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->take(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v1

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->drop(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static tail(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;
    .locals 2

    .line 96
    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->scala$collection$mutable$IndexedSeqView$$super$tail()Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lscala/collection/mutable/IndexedSeqView;->slice(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static take(Lscala/collection/mutable/IndexedSeqView;I)Lscala/collection/mutable/IndexedSeqView;
    .locals 3

    .line 89
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/IndexedSeqView;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0

    .line 92
    invoke-interface {p0, p1}, Lscala/collection/mutable/IndexedSeqView;->newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p0

    return-object p0
.end method

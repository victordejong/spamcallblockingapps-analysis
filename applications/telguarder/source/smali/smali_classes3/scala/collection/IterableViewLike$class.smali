.class public abstract Lscala/collection/IterableViewLike$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike;)V
    .locals 0

    return-void
.end method

.method public static drop(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;
    .locals 0

    .line 127
    invoke-interface {p0, p1}, Lscala/collection/IterableViewLike;->newDropped(I)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->scala$collection$IterableViewLike$$asThis(Lscala/collection/IterableViewLike;Lscala/collection/IterableViewLike$Transformed;)Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static dropRight(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;
    .locals 3

    .line 153
    invoke-interface {p0}, Lscala/collection/IterableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->length()I

    move-result v0

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Lscala/collection/IterableViewLike;->take(I)Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static grouped(Lscala/collection/IterableViewLike;I)Lscala/collection/Iterator;
    .locals 1

    .line 144
    invoke-interface {p0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->grouped(I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    new-instance v0, Lscala/collection/IterableViewLike$$anonfun$grouped$1;

    invoke-direct {v0, p0}, Lscala/collection/IterableViewLike$$anonfun$grouped$1;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-virtual {p1, v0}, Lscala/collection/Iterator$GroupedIterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static newAppended(Lscala/collection/IterableViewLike;Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 112
    new-instance v0, Lscala/collection/IterableViewLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$2;-><init>(Lscala/collection/IterableViewLike;Lscala/collection/GenTraversable;)V

    return-object v0
.end method

.method public static newDropped(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableViewLike$Transformed;
    .locals 2

    .line 126
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/IterableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newDroppedWhile(Lscala/collection/IterableViewLike;Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 117
    new-instance v0, Lscala/collection/IterableViewLike$$anon$7;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$7;-><init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFiltered(Lscala/collection/IterableViewLike;Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 115
    new-instance v0, Lscala/collection/IterableViewLike$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$5;-><init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFlatMapped(Lscala/collection/IterableViewLike;Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 114
    new-instance v0, Lscala/collection/IterableViewLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$4;-><init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newForced(Lscala/collection/IterableViewLike;Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 111
    new-instance v0, Lscala/collection/IterableViewLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$1;-><init>(Lscala/collection/IterableViewLike;Lscala/Function0;)V

    return-object v0
.end method

.method public static newMapped(Lscala/collection/IterableViewLike;Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 113
    new-instance v0, Lscala/collection/IterableViewLike$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$3;-><init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newSliced(Lscala/collection/IterableViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 116
    new-instance v0, Lscala/collection/IterableViewLike$$anon$6;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$6;-><init>(Lscala/collection/IterableViewLike;Lscala/collection/generic/SliceInterval;)V

    return-object v0
.end method

.method public static newTaken(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableViewLike$Transformed;
    .locals 2

    .line 125
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/IterableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newTakenWhile(Lscala/collection/IterableViewLike;Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 118
    new-instance v0, Lscala/collection/IterableViewLike$$anon$8;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$8;-><init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newZipped(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 105
    new-instance v0, Lscala/collection/IterableViewLike$$anon$9;

    invoke-direct {v0, p0, p1}, Lscala/collection/IterableViewLike$$anon$9;-><init>(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;)V

    return-object v0
.end method

.method public static newZippedAll(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
    .locals 1

    .line 106
    new-instance v0, Lscala/collection/IterableViewLike$$anon$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/IterableViewLike$$anon$10;-><init>(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static scala$collection$IterableViewLike$$asThis(Lscala/collection/IterableViewLike;Lscala/collection/IterableViewLike$Transformed;)Lscala/collection/IterableView;
    .locals 0

    return-object p1
.end method

.method public static sliding(Lscala/collection/IterableViewLike;I)Lscala/collection/Iterator;
    .locals 1

    const/4 v0, 0x1

    .line 150
    invoke-interface {p0, p1, v0}, Lscala/collection/IterableViewLike;->sliding(II)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static sliding(Lscala/collection/IterableViewLike;II)Lscala/collection/Iterator;
    .locals 1

    .line 147
    invoke-interface {p0}, Lscala/collection/IterableViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Iterator;->sliding(II)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    new-instance p2, Lscala/collection/IterableViewLike$$anonfun$sliding$1;

    invoke-direct {p2, p0}, Lscala/collection/IterableViewLike$$anonfun$sliding$1;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-virtual {p1, p2}, Lscala/collection/Iterator$GroupedIterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/IterableViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "IterableView"

    return-object p0
.end method

.method public static take(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;
    .locals 0

    .line 128
    invoke-interface {p0, p1}, Lscala/collection/IterableViewLike;->newTaken(I)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->scala$collection$IterableViewLike$$asThis(Lscala/collection/IterableViewLike;Lscala/collection/IterableViewLike$Transformed;)Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static takeRight(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;
    .locals 3

    .line 156
    invoke-interface {p0}, Lscala/collection/IterableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->length()I

    move-result v0

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Lscala/collection/IterableViewLike;->drop(I)Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-interface {p0, p1}, Lscala/collection/IterableViewLike;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static zipAll(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-interface {p0, p1, p2, p3}, Lscala/collection/IterableViewLike;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static zipWithIndex(Lscala/collection/IterableViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2

    .line 138
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream$;->from(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lscala/collection/IterableViewLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

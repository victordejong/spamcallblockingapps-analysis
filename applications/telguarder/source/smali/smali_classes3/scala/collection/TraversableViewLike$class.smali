.class public abstract Lscala/collection/TraversableViewLike$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$plus(Lscala/collection/TraversableViewLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 226
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toTraversable()Lscala/collection/Traversable;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Lscala/collection/TraversableViewLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 239
    new-instance v0, Lscala/collection/TraversableViewLike$$anonfun$collect$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$collect$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/PartialFunction;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableViewLike;->filter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableView;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static drop(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableView;
    .locals 0

    .line 270
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newDropped(I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static dropWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 273
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 266
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static filterNot(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 1

    .line 295
    new-instance v0, Lscala/collection/TraversableViewLike$$anonfun$filterNot$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$filterNot$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v0}, Lscala/collection/TraversableViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static flatMap(Lscala/collection/TraversableViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static flatten(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 248
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static force(Lscala/collection/TraversableViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->underlying()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 88
    invoke-interface {p1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 89
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static groupBy(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 1

    .line 286
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    new-instance v0, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;-><init>(Lscala/collection/TraversableViewLike;)V

    invoke-interface {p1, v0}, Lscala/collection/immutable/Map;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;
    .locals 3

    .line 269
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static inits(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;
    .locals 2

    .line 298
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->inits()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableViewLike$$anonfun$inits$1;

    invoke-direct {v1, p0}, Lscala/collection/TraversableViewLike$$anonfun$inits$1;-><init>(Lscala/collection/TraversableViewLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static map(Lscala/collection/TraversableViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newAppended(Lscala/collection/TraversableViewLike;Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 255
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$2;-><init>(Lscala/collection/TraversableViewLike;Lscala/collection/GenTraversable;)V

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/TraversableViewLike;)Lscala/collection/mutable/Builder;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p0}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, ".newBuilder"

    invoke-virtual {v1, p0, v2}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newDropped(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 2

    .line 264
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newDroppedWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 260
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$7;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$7;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFiltered(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 258
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$5;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFlatMapped(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 257
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$4;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newForced(Lscala/collection/TraversableViewLike;Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 254
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function0;)V

    return-object v0
.end method

.method public static newMapped(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 256
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$3;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newSliced(Lscala/collection/TraversableViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 259
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$6;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$6;-><init>(Lscala/collection/TraversableViewLike;Lscala/collection/generic/SliceInterval;)V

    return-object v0
.end method

.method public static newTaken(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 2

    .line 263
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newTakenWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 1

    .line 261
    new-instance v0, Lscala/collection/TraversableViewLike$$anon$8;

    invoke-direct {v0, p0, p1}, Lscala/collection/TraversableViewLike$$anon$8;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static partition(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 3

    .line 268
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v1

    invoke-static {p0, v1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableViewLike$$anonfun$partition$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$partition$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;
    .locals 0

    return-object p1
.end method

.method public static scanLeft(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 279
    new-instance p3, Lscala/collection/TraversableViewLike$$anonfun$scanLeft$1;

    invoke-direct {p3, p0, p1, p2}, Lscala/collection/TraversableViewLike$$anonfun$scanLeft$1;-><init>(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;)V

    invoke-interface {p0, p3}, Lscala/collection/TraversableViewLike;->newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static scanRight(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 283
    new-instance p3, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;

    invoke-direct {p3, p0, p1, p2}, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;-><init>(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;)V

    invoke-interface {p0, p3}, Lscala/collection/TraversableViewLike;->newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static slice(Lscala/collection/TraversableViewLike;II)Lscala/collection/TraversableView;
    .locals 1

    .line 272
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    invoke-virtual {v0, p1, p2}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static span(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 2

    .line 275
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v1

    invoke-static {p0, v1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object v1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static splitAt(Lscala/collection/TraversableViewLike;I)Lscala/Tuple2;
    .locals 2

    .line 276
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newTaken(I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v1

    invoke-static {p0, v1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object v1

    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newDropped(I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static stringPrefix(Lscala/collection/TraversableViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "TraversableView"

    return-object p0
.end method

.method public static tail(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;
    .locals 1

    .line 305
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->scala$collection$TraversableViewLike$$super$tail()Lscala/collection/TraversableView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/TraversableViewLike;->newDropped(I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static tails(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;
    .locals 2

    .line 301
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->tails()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableViewLike$$anonfun$tails$1;

    invoke-direct {v1, p0}, Lscala/collection/TraversableViewLike$$anonfun$tails$1;-><init>(Lscala/collection/TraversableViewLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static take(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableView;
    .locals 0

    .line 271
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newTaken(I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 274
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;
    .locals 0

    .line 307
    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->viewToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 3

    .line 289
    new-instance v0, Lscala/Tuple2;

    new-instance v1, Lscala/collection/TraversableViewLike$$anonfun$unzip$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$unzip$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableViewLike$$anonfun$unzip$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$unzip$2;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static unzip3(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple3;
    .locals 4

    .line 292
    new-instance v0, Lscala/Tuple3;

    new-instance v1, Lscala/collection/TraversableViewLike$$anonfun$unzip3$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$unzip3$1;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableViewLike$$anonfun$unzip3$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$unzip3$2;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object v2

    new-instance v3, Lscala/collection/TraversableViewLike$$anonfun$unzip3$3;

    invoke-direct {v3, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$unzip3$3;-><init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V

    invoke-interface {p0, v3}, Lscala/collection/TraversableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static viewIdString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static viewIdentifier(Lscala/collection/TraversableViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static viewToString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->stringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->viewIdString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v0, "(...)"

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static withFilter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 267
    invoke-interface {p0, p1}, Lscala/collection/TraversableViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

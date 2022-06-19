.class public abstract Lscala/collection/SeqViewLike$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/SeqViewLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 248
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0, p1}, Lscala/collection/Iterator$;->single(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqViewLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/SeqViewLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$colon(Lscala/collection/SeqViewLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->newPrepended(Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static combinations(Lscala/collection/SeqViewLike;I)Lscala/collection/Iterator;
    .locals 1

    .line 269
    invoke-interface {p0}, Lscala/collection/SeqViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->combinations(I)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$combinations$1;

    invoke-direct {v0, p0}, Lscala/collection/SeqViewLike$$anonfun$combinations$1;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static diff(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)Lscala/collection/SeqView;
    .locals 1

    .line 254
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$diff$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$diff$1;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static distinct(Lscala/collection/SeqViewLike;)Lscala/collection/SeqView;
    .locals 1

    .line 275
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$distinct$1;

    invoke-direct {v0, p0}, Lscala/collection/SeqViewLike$$anonfun$distinct$1;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static intersect(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)Lscala/collection/SeqView;
    .locals 1

    .line 257
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$intersect$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$intersect$1;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newAppended(Lscala/collection/SeqViewLike;Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 196
    new-instance v0, Lscala/collection/SeqViewLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$2;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenTraversable;)V

    return-object v0
.end method

.method public static newDropped(Lscala/collection/SeqViewLike;I)Lscala/collection/SeqViewLike$Transformed;
    .locals 2

    .line 219
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newDroppedWhile(Lscala/collection/SeqViewLike;Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 201
    new-instance v0, Lscala/collection/SeqViewLike$$anon$7;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$7;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFiltered(Lscala/collection/SeqViewLike;Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 199
    new-instance v0, Lscala/collection/SeqViewLike$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$5;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFlatMapped(Lscala/collection/SeqViewLike;Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 198
    new-instance v0, Lscala/collection/SeqViewLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$4;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newForced(Lscala/collection/SeqViewLike;Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 195
    new-instance v0, Lscala/collection/SeqViewLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$1;-><init>(Lscala/collection/SeqViewLike;Lscala/Function0;)V

    return-object v0
.end method

.method public static newMapped(Lscala/collection/SeqViewLike;Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 197
    new-instance v0, Lscala/collection/SeqViewLike$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$3;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newPatched(Lscala/collection/SeqViewLike;ILscala/collection/GenSeq;I)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 210
    new-instance v0, Lscala/collection/SeqViewLike$$anon$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/SeqViewLike$$anon$12;-><init>(Lscala/collection/SeqViewLike;ILscala/collection/GenSeq;I)V

    return-object v0
.end method

.method public static newPrepended(Lscala/collection/SeqViewLike;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 215
    new-instance v0, Lscala/collection/SeqViewLike$$anon$13;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$13;-><init>(Lscala/collection/SeqViewLike;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newReversed(Lscala/collection/SeqViewLike;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 209
    new-instance v0, Lscala/collection/SeqViewLike$$anon$11;

    invoke-direct {v0, p0}, Lscala/collection/SeqViewLike$$anon$11;-><init>(Lscala/collection/SeqViewLike;)V

    return-object v0
.end method

.method public static newSliced(Lscala/collection/SeqViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 200
    new-instance v0, Lscala/collection/SeqViewLike$$anon$6;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$6;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/generic/SliceInterval;)V

    return-object v0
.end method

.method public static newTaken(Lscala/collection/SeqViewLike;I)Lscala/collection/SeqViewLike$Transformed;
    .locals 2

    .line 218
    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static newTakenWhile(Lscala/collection/SeqViewLike;Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 202
    new-instance v0, Lscala/collection/SeqViewLike$$anon$8;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$8;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newZipped(Lscala/collection/SeqViewLike;Lscala/collection/GenIterable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 203
    new-instance v0, Lscala/collection/SeqViewLike$$anon$9;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anon$9;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenIterable;)V

    return-object v0
.end method

.method public static newZippedAll(Lscala/collection/SeqViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 204
    new-instance v0, Lscala/collection/SeqViewLike$$anon$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/SeqViewLike$$anon$10;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static padTo(Lscala/collection/SeqViewLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3

    .line 234
    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result v2

    sub-int/2addr p1, v2

    new-instance v2, Lscala/collection/SeqViewLike$$anonfun$padTo$1;

    invoke-direct {v2, p0, p2}, Lscala/collection/SeqViewLike$$anonfun$padTo$1;-><init>(Lscala/collection/SeqViewLike;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lscala/collection/Seq$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/GenSeq;

    const/4 p2, 0x0

    invoke-interface {p0, v0, p1, p2, p3}, Lscala/collection/SeqViewLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Lscala/collection/SeqViewLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1

    .line 225
    sget-object p4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p1}, Lscala/math/package$;->max(II)I

    move-result p1

    .line 226
    sget-object p4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p4, v0, p3}, Lscala/math/package$;->max(II)I

    move-result p3

    .line 227
    invoke-interface {p0, p1, p2, p3}, Lscala/collection/SeqViewLike;->newPatched(ILscala/collection/GenSeq;I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static permutations(Lscala/collection/SeqViewLike;)Lscala/collection/Iterator;
    .locals 2

    .line 272
    invoke-interface {p0}, Lscala/collection/SeqViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->permutations()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/SeqViewLike$$anonfun$permutations$1;

    invoke-direct {v1, p0}, Lscala/collection/SeqViewLike$$anonfun$permutations$1;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static reverse(Lscala/collection/SeqViewLike;)Lscala/collection/SeqView;
    .locals 0

    .line 221
    invoke-interface {p0}, Lscala/collection/SeqViewLike;->newReversed()Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static reverseMap(Lscala/collection/SeqViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-interface {p0}, Lscala/collection/SeqViewLike;->reverse()Lscala/collection/SeqView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqView;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sortBy(Lscala/collection/SeqViewLike;Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;
    .locals 1

    .line 266
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$sortBy$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/SeqViewLike$$anonfun$sortBy$1;-><init>(Lscala/collection/SeqViewLike;Lscala/Function1;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static sortWith(Lscala/collection/SeqViewLike;Lscala/Function2;)Lscala/collection/SeqView;
    .locals 1

    .line 263
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$sortWith$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$sortWith$1;-><init>(Lscala/collection/SeqViewLike;Lscala/Function2;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static sorted(Lscala/collection/SeqViewLike;Lscala/math/Ordering;)Lscala/collection/SeqView;
    .locals 1

    .line 260
    new-instance v0, Lscala/collection/SeqViewLike$$anonfun$sorted$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$sorted$1;-><init>(Lscala/collection/SeqViewLike;Lscala/math/Ordering;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/SeqViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "SeqView"

    return-object p0
.end method

.method public static union(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 251
    new-instance p2, Lscala/collection/SeqViewLike$$anonfun$union$1;

    invoke-direct {p2, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$union$1;-><init>(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)V

    invoke-interface {p0, p2}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/SeqViewLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5

    .line 240
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lscala/Predef$;->require(Z)V

    .line 241
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {v3, v4}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p2

    invoke-interface {p0, p1, p2, v2, p3}, Lscala/collection/SeqViewLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

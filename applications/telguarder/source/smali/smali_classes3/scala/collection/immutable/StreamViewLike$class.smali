.class public abstract Lscala/collection/immutable/StreamViewLike$class;
.super Ljava/lang/Object;
.source "StreamViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/StreamViewLike;)V
    .locals 0

    return-void
.end method

.method public static force(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-interface {p0}, Lscala/collection/immutable/StreamViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static newAppended(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 55
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$2;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenTraversable;)V

    return-object v0
.end method

.method public static newDroppedWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 60
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$7;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$7;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFiltered(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 58
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$5;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newFlatMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 57
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$4;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newForced(Lscala/collection/immutable/StreamViewLike;Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 54
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$1;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function0;)V

    return-object v0
.end method

.method public static newMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 56
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$3;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newPatched(Lscala/collection/immutable/StreamViewLike;ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 68
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$$anon$11;-><init>(Lscala/collection/immutable/StreamViewLike;ILscala/collection/GenSeq;I)V

    return-object v0
.end method

.method public static newPrepended(Lscala/collection/immutable/StreamViewLike;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 70
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$12;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$12;-><init>(Lscala/collection/immutable/StreamViewLike;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newReversed(Lscala/collection/immutable/StreamViewLike;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 66
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$13;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StreamViewLike$$anon$13;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    return-object v0
.end method

.method public static newSliced(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 59
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$6;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$6;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/SliceInterval;)V

    return-object v0
.end method

.method public static newTakenWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 61
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$8;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$8;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newZipped(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 62
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$9;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$9;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;)V

    return-object v0
.end method

.method public static newZippedAll(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1

    .line 64
    new-instance v0, Lscala/collection/immutable/StreamViewLike$$anon$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$$anon$10;-><init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static stringPrefix(Lscala/collection/immutable/StreamViewLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "StreamView"

    return-object p0
.end method

.class public abstract Lscala/collection/mutable/FlatHashTable$HashUtils$class;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V
    .locals 0

    return-void
.end method

.method public static final elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 438
    sget-object p1, Lscala/collection/mutable/FlatHashTable$NullSentinel$;->MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    :cond_0
    return-object p1
.end method

.method public static final entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    sget-object p0, Lscala/collection/mutable/FlatHashTable$NullSentinel$;->MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public static final improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I
    .locals 0

    .line 424
    sget-object p0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {p0, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result p0

    .line 428
    rem-int/lit8 p2, p2, 0x20

    ushr-int p1, p0, p2

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static final sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public static final sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I
    .locals 1

    .line 416
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils;->sizeMapBucketBitSize()I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

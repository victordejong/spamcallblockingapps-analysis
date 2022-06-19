.class public abstract Lscala/collection/mutable/HashTable$HashUtils$class;
.super Ljava/lang/Object;
.source "HashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/HashTable$HashUtils;)V
    .locals 0

    return-void
.end method

.method public static elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 409
    invoke-virtual {p0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final improve(Lscala/collection/mutable/HashTable$HashUtils;II)I
    .locals 0

    .line 437
    sget-object p0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {p0, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result p0

    .line 460
    rem-int/lit8 p2, p2, 0x20

    ushr-int p1, p0, p2

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static final sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public static final sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I
    .locals 1

    .line 407
    invoke-interface {p0}, Lscala/collection/mutable/HashTable$HashUtils;->sizeMapBucketBitSize()I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

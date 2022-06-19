.class public abstract Lscala/collection/generic/BitOperations$Long$class;
.super Ljava/lang/Object;
.source "BitOperations.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/BitOperations$Long;)V
    .locals 0

    return-void
.end method

.method public static bitString(Lscala/collection/generic/BitOperations$Long;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-interface {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long;->bits(J)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    new-instance p2, Lscala/collection/generic/BitOperations$Long$$anonfun$bitString$2;

    invoke-direct {p2, p0}, Lscala/collection/generic/BitOperations$Long$$anonfun$bitString$2;-><init>(Lscala/collection/generic/BitOperations$Long;)V

    sget-object p0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p0}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lscala/collection/immutable/IndexedSeq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    invoke-interface {p0, p3}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitString$default$2(Lscala/collection/generic/BitOperations$Long;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static bits(Lscala/collection/generic/BitOperations$Long;J)Lscala/collection/immutable/IndexedSeq;
    .locals 3

    .line 50
    new-instance v0, Lscala/runtime/RichLong;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-wide/16 v1, 0x3f

    invoke-direct {v0, v1, v2}, Lscala/runtime/RichLong;-><init>(J)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/RichLong;->to(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/NumericRange$Inclusive;->by(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;

    move-result-object v0

    new-instance v1, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;-><init>(Lscala/collection/generic/BitOperations$Long;J)V

    sget-object p0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p0}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lscala/collection/immutable/NumericRange;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/IndexedSeq;

    return-object p0
.end method

.method public static complement(Lscala/collection/generic/BitOperations$Long;J)J
    .locals 2

    const-wide/16 v0, -0x1

    xor-long p0, p1, v0

    return-wide p0
.end method

.method public static hasMatch(Lscala/collection/generic/BitOperations$Long;JJJ)Z
    .locals 0

    .line 46
    invoke-interface {p0, p1, p2, p5, p6}, Lscala/collection/generic/BitOperations$Long;->mask(JJ)J

    move-result-wide p0

    cmp-long p2, p0, p3

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static highestOneBit(Lscala/collection/generic/BitOperations$Long;J)J
    .locals 2

    const/4 p0, 0x1

    shr-long v0, p1, p0

    or-long/2addr p1, v0

    const/4 v0, 0x2

    shr-long v0, p1, v0

    or-long/2addr p1, v0

    const/4 v0, 0x4

    shr-long v0, p1, v0

    or-long/2addr p1, v0

    const/16 v0, 0x8

    shr-long v0, p1, v0

    or-long/2addr p1, v0

    const/16 v0, 0x10

    shr-long v0, p1, v0

    or-long/2addr p1, v0

    const/16 v0, 0x20

    shr-long v0, p1, v0

    or-long/2addr p1, v0

    ushr-long v0, p1, p0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public static mask(Lscala/collection/generic/BitOperations$Long;JJ)J
    .locals 2

    const-wide/16 v0, 0x1

    sub-long v0, p3, v0

    .line 45
    invoke-interface {p0, v0, v1}, Lscala/collection/generic/BitOperations$Long;->complement(J)J

    move-result-wide v0

    xor-long/2addr p3, v0

    and-long p0, p1, p3

    return-wide p0
.end method

.method public static shorter(Lscala/collection/generic/BitOperations$Long;JJ)Z
    .locals 0

    .line 48
    invoke-interface {p0, p3, p4, p1, p2}, Lscala/collection/generic/BitOperations$Long;->unsignedCompare(JJ)Z

    move-result p0

    return p0
.end method

.method public static unsignedCompare(Lscala/collection/generic/BitOperations$Long;JJ)Z
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    cmp-long p2, p3, v2

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    xor-int/2addr p0, p1

    return p0
.end method

.method public static zero(Lscala/collection/generic/BitOperations$Long;JJ)Z
    .locals 0

    and-long p0, p1, p3

    const-wide/16 p2, 0x0

    cmp-long p4, p0, p2

    if-nez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

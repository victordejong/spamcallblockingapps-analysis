.class public abstract Lscala/collection/generic/BitOperations$Int$class;
.super Ljava/lang/Object;
.source "BitOperations.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/BitOperations$Int;)V
    .locals 0

    return-void
.end method

.method public static bitString(Lscala/collection/generic/BitOperations$Int;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-interface {p0, p1}, Lscala/collection/generic/BitOperations$Int;->bits(I)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    new-instance v0, Lscala/collection/generic/BitOperations$Int$$anonfun$bitString$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/BitOperations$Int$$anonfun$bitString$1;-><init>(Lscala/collection/generic/BitOperations$Int;)V

    sget-object p0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p0}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lscala/collection/immutable/IndexedSeq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    invoke-interface {p0, p2}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitString$default$2(Lscala/collection/generic/BitOperations$Int;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static bits(Lscala/collection/generic/BitOperations$Int;I)Lscala/collection/immutable/IndexedSeq;
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 27
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Range$Inclusive;->by(I)Lscala/collection/immutable/Range;

    move-result-object v0

    new-instance v1, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;-><init>(Lscala/collection/generic/BitOperations$Int;I)V

    sget-object p0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p0}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lscala/collection/immutable/Range;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/IndexedSeq;

    return-object p0
.end method

.method public static complement(Lscala/collection/generic/BitOperations$Int;I)I
    .locals 0

    xor-int/lit8 p0, p1, -0x1

    return p0
.end method

.method public static hasMatch(Lscala/collection/generic/BitOperations$Int;III)Z
    .locals 0

    .line 23
    invoke-interface {p0, p1, p3}, Lscala/collection/generic/BitOperations$Int;->mask(II)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static highestOneBit(Lscala/collection/generic/BitOperations$Int;I)I
    .locals 0

    shr-int/lit8 p0, p1, 0x1

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x2

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x4

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x8

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static mask(Lscala/collection/generic/BitOperations$Int;II)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    .line 22
    invoke-interface {p0, v0}, Lscala/collection/generic/BitOperations$Int;->complement(I)I

    move-result p0

    xor-int/2addr p0, p2

    and-int/2addr p0, p1

    return p0
.end method

.method public static shorter(Lscala/collection/generic/BitOperations$Int;II)Z
    .locals 0

    .line 25
    invoke-interface {p0, p2, p1}, Lscala/collection/generic/BitOperations$Int;->unsignedCompare(II)Z

    move-result p0

    return p0
.end method

.method public static unsignedCompare(Lscala/collection/generic/BitOperations$Int;II)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    xor-int/2addr p0, p1

    return p0
.end method

.method public static zero(Lscala/collection/generic/BitOperations$Int;II)Z
    .locals 0

    and-int p0, p1, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

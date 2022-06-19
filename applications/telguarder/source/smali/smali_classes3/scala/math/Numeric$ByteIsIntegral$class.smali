.class public abstract Lscala/math/Numeric$ByteIsIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$ByteIsIntegral;)V
    .locals 0

    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$ByteIsIntegral;I)B
    .locals 0

    int-to-byte p0, p1

    return p0
.end method

.method public static minus(Lscala/math/Numeric$ByteIsIntegral;BB)B
    .locals 0

    sub-int/2addr p1, p2

    int-to-byte p0, p1

    return p0
.end method

.method public static negate(Lscala/math/Numeric$ByteIsIntegral;B)B
    .locals 0

    neg-int p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static plus(Lscala/math/Numeric$ByteIsIntegral;BB)B
    .locals 0

    add-int/2addr p1, p2

    int-to-byte p0, p1

    return p0
.end method

.method public static quot(Lscala/math/Numeric$ByteIsIntegral;BB)B
    .locals 0

    .line 79
    div-int/2addr p1, p2

    int-to-byte p0, p1

    return p0
.end method

.method public static rem(Lscala/math/Numeric$ByteIsIntegral;BB)B
    .locals 0

    .line 80
    rem-int/2addr p1, p2

    int-to-byte p0, p1

    return p0
.end method

.method public static times(Lscala/math/Numeric$ByteIsIntegral;BB)B
    .locals 0

    mul-int p1, p1, p2

    int-to-byte p0, p1

    return p0
.end method

.method public static toDouble(Lscala/math/Numeric$ByteIsIntegral;B)D
    .locals 0

    int-to-double p0, p1

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$ByteIsIntegral;B)F
    .locals 0

    int-to-float p0, p1

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$ByteIsIntegral;B)I
    .locals 0

    return p1
.end method

.method public static toLong(Lscala/math/Numeric$ByteIsIntegral;B)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

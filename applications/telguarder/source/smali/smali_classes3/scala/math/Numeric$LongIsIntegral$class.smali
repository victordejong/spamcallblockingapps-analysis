.class public abstract Lscala/math/Numeric$LongIsIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$LongIsIntegral;)V
    .locals 0

    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$LongIsIntegral;I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public static minus(Lscala/math/Numeric$LongIsIntegral;JJ)J
    .locals 0

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public static negate(Lscala/math/Numeric$LongIsIntegral;J)J
    .locals 0

    neg-long p0, p1

    return-wide p0
.end method

.method public static plus(Lscala/math/Numeric$LongIsIntegral;JJ)J
    .locals 0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public static quot(Lscala/math/Numeric$LongIsIntegral;JJ)J
    .locals 0

    .line 109
    div-long/2addr p1, p3

    return-wide p1
.end method

.method public static rem(Lscala/math/Numeric$LongIsIntegral;JJ)J
    .locals 0

    .line 110
    rem-long/2addr p1, p3

    return-wide p1
.end method

.method public static times(Lscala/math/Numeric$LongIsIntegral;JJ)J
    .locals 0

    mul-long p1, p1, p3

    return-wide p1
.end method

.method public static toDouble(Lscala/math/Numeric$LongIsIntegral;J)D
    .locals 0

    long-to-double p0, p1

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$LongIsIntegral;J)F
    .locals 0

    long-to-float p0, p1

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$LongIsIntegral;J)I
    .locals 0

    long-to-int p0, p1

    return p0
.end method

.method public static toLong(Lscala/math/Numeric$LongIsIntegral;J)J
    .locals 0

    return-wide p1
.end method

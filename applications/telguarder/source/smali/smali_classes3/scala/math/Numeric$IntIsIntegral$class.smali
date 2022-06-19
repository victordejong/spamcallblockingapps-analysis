.class public abstract Lscala/math/Numeric$IntIsIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$IntIsIntegral;)V
    .locals 0

    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$IntIsIntegral;I)I
    .locals 0

    return p1
.end method

.method public static minus(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 0

    sub-int/2addr p1, p2

    return p1
.end method

.method public static negate(Lscala/math/Numeric$IntIsIntegral;I)I
    .locals 0

    neg-int p0, p1

    return p0
.end method

.method public static plus(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 0

    add-int/2addr p1, p2

    return p1
.end method

.method public static quot(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 0

    .line 49
    div-int/2addr p1, p2

    return p1
.end method

.method public static rem(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 0

    .line 50
    rem-int/2addr p1, p2

    return p1
.end method

.method public static times(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 0

    mul-int p1, p1, p2

    return p1
.end method

.method public static toDouble(Lscala/math/Numeric$IntIsIntegral;I)D
    .locals 0

    int-to-double p0, p1

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$IntIsIntegral;I)F
    .locals 0

    int-to-float p0, p1

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$IntIsIntegral;I)I
    .locals 0

    return p1
.end method

.method public static toLong(Lscala/math/Numeric$IntIsIntegral;I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

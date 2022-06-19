.class public abstract Lscala/math/Numeric$DoubleIsConflicted$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$DoubleIsConflicted;)V
    .locals 0

    return-void
.end method

.method public static abs(Lscala/math/Numeric$DoubleIsConflicted;D)D
    .locals 0

    .line 155
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1, p2}, Lscala/math/package$;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static fromInt(Lscala/math/Numeric$DoubleIsConflicted;I)D
    .locals 0

    int-to-double p0, p1

    return-wide p0
.end method

.method public static minus(Lscala/math/Numeric$DoubleIsConflicted;DD)D
    .locals 0

    sub-double/2addr p1, p3

    return-wide p1
.end method

.method public static negate(Lscala/math/Numeric$DoubleIsConflicted;D)D
    .locals 0

    neg-double p0, p1

    return-wide p0
.end method

.method public static plus(Lscala/math/Numeric$DoubleIsConflicted;DD)D
    .locals 0

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public static times(Lscala/math/Numeric$DoubleIsConflicted;DD)D
    .locals 0

    mul-double p1, p1, p3

    return-wide p1
.end method

.method public static toDouble(Lscala/math/Numeric$DoubleIsConflicted;D)D
    .locals 0

    return-wide p1
.end method

.method public static toFloat(Lscala/math/Numeric$DoubleIsConflicted;D)F
    .locals 0

    double-to-float p0, p1

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$DoubleIsConflicted;D)I
    .locals 0

    double-to-int p0, p1

    return p0
.end method

.method public static toLong(Lscala/math/Numeric$DoubleIsConflicted;D)J
    .locals 0

    double-to-long p0, p1

    return-wide p0
.end method

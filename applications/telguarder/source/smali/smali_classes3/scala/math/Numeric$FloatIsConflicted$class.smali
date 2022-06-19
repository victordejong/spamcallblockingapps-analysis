.class public abstract Lscala/math/Numeric$FloatIsConflicted$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$FloatIsConflicted;)V
    .locals 0

    return-void
.end method

.method public static abs(Lscala/math/Numeric$FloatIsConflicted;F)F
    .locals 0

    .line 131
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1}, Lscala/math/package$;->abs(F)F

    move-result p0

    return p0
.end method

.method public static fromInt(Lscala/math/Numeric$FloatIsConflicted;I)F
    .locals 0

    int-to-float p0, p1

    return p0
.end method

.method public static minus(Lscala/math/Numeric$FloatIsConflicted;FF)F
    .locals 0

    sub-float/2addr p1, p2

    return p1
.end method

.method public static negate(Lscala/math/Numeric$FloatIsConflicted;F)F
    .locals 0

    neg-float p0, p1

    return p0
.end method

.method public static plus(Lscala/math/Numeric$FloatIsConflicted;FF)F
    .locals 0

    add-float/2addr p1, p2

    return p1
.end method

.method public static times(Lscala/math/Numeric$FloatIsConflicted;FF)F
    .locals 0

    mul-float p1, p1, p2

    return p1
.end method

.method public static toDouble(Lscala/math/Numeric$FloatIsConflicted;F)D
    .locals 0

    float-to-double p0, p1

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$FloatIsConflicted;F)F
    .locals 0

    return p1
.end method

.method public static toInt(Lscala/math/Numeric$FloatIsConflicted;F)I
    .locals 0

    float-to-int p0, p1

    return p0
.end method

.method public static toLong(Lscala/math/Numeric$FloatIsConflicted;F)J
    .locals 0

    float-to-long p0, p1

    return-wide p0
.end method

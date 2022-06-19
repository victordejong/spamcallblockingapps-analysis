.class public abstract Lscala/math/Numeric$BigIntIsIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$BigIntIsIntegral;)V
    .locals 0

    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$BigIntIsIntegral;I)Lscala/math/BigInt;
    .locals 0

    .line 37
    sget-object p0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    invoke-virtual {p0, p1}, Lscala/math/BigInt$;->apply(I)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static minus(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 32
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->$minus(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 36
    invoke-virtual {p1}, Lscala/math/BigInt;->unary_$minus()Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static plus(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->$plus(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static quot(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 34
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->$div(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static rem(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 35
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->$percent(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static times(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 33
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->$times(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p0

    return-object p0
.end method

.method public static toDouble(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)D
    .locals 0

    .line 41
    invoke-virtual {p1}, Lscala/math/BigInt;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)F
    .locals 0

    .line 40
    invoke-virtual {p1}, Lscala/math/BigInt;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)I
    .locals 0

    .line 38
    invoke-virtual {p1}, Lscala/math/BigInt;->intValue()I

    move-result p0

    return p0
.end method

.method public static toLong(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)J
    .locals 0

    .line 39
    invoke-virtual {p1}, Lscala/math/BigInt;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

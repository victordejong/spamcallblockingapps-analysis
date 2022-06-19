.class public abstract Lscala/math/Numeric$BigDecimalIsConflicted$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$BigDecimalIsConflicted;)V
    .locals 0

    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$BigDecimalIsConflicted;I)Lscala/math/BigDecimal;
    .locals 0

    .line 170
    sget-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(I)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static minus(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 167
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->$minus(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 169
    invoke-virtual {p1}, Lscala/math/BigDecimal;->unary_$minus()Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static plus(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 166
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->$plus(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static times(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 168
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->$times(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toDouble(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)D
    .locals 0

    .line 174
    invoke-virtual {p1}, Lscala/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static toFloat(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)F
    .locals 0

    .line 173
    invoke-virtual {p1}, Lscala/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toInt(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)I
    .locals 0

    .line 171
    invoke-virtual {p1}, Lscala/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public static toLong(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)J
    .locals 0

    .line 172
    invoke-virtual {p1}, Lscala/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

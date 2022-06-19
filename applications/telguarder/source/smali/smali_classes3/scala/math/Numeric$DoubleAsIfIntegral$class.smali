.class public abstract Lscala/math/Numeric$DoubleAsIfIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$DoubleAsIfIntegral;)V
    .locals 0

    return-void
.end method

.method public static quot(Lscala/math/Numeric$DoubleAsIfIntegral;DD)D
    .locals 0

    .line 161
    sget-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(D)Lscala/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p1, p3, p4}, Lscala/math/BigDecimal$;->apply(D)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->quot(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static rem(Lscala/math/Numeric$DoubleAsIfIntegral;DD)D
    .locals 0

    .line 162
    sget-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(D)Lscala/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p1, p3, p4}, Lscala/math/BigDecimal$;->apply(D)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->remainder(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

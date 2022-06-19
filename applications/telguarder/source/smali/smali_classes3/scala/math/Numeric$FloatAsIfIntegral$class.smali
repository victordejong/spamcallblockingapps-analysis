.class public abstract Lscala/math/Numeric$FloatAsIfIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$FloatAsIfIntegral;)V
    .locals 0

    return-void
.end method

.method public static quot(Lscala/math/Numeric$FloatAsIfIntegral;FF)F
    .locals 0

    .line 137
    sget-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(F)Lscala/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p1, p2}, Lscala/math/BigDecimal$;->apply(F)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->quot(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public static rem(Lscala/math/Numeric$FloatAsIfIntegral;FF)F
    .locals 0

    .line 138
    sget-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(F)Lscala/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {p1, p2}, Lscala/math/BigDecimal$;->apply(F)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->remainder(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

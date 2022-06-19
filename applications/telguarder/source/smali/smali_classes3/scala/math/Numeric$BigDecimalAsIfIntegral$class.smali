.class public abstract Lscala/math/Numeric$BigDecimalAsIfIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$BigDecimalAsIfIntegral;)V
    .locals 0

    return-void
.end method

.method public static quot(Lscala/math/Numeric$BigDecimalAsIfIntegral;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 181
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->quot(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static rem(Lscala/math/Numeric$BigDecimalAsIfIntegral;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 182
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->remainder(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

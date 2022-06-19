.class public abstract Lscala/math/Ordering$BigDecimalOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$BigDecimalOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$BigDecimalOrdering;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)I
    .locals 0

    .line 327
    invoke-virtual {p1, p2}, Lscala/math/BigDecimal;->compare(Lscala/math/BigDecimal;)I

    move-result p0

    return p0
.end method

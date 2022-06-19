.class public abstract Lscala/math/Integral$class;
.super Ljava/lang/Object;
.source "Integral.scala"


# direct methods
.method public static $init$(Lscala/math/Integral;)V
    .locals 0

    return-void
.end method

.method public static mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;
    .locals 1

    .line 28
    new-instance v0, Lscala/math/Integral$IntegralOps;

    invoke-direct {v0, p0, p1}, Lscala/math/Integral$IntegralOps;-><init>(Lscala/math/Integral;Ljava/lang/Object;)V

    return-object v0
.end method

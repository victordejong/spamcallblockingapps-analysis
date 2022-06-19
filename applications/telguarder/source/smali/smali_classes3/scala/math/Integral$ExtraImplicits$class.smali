.class public abstract Lscala/math/Integral$ExtraImplicits$class;
.super Ljava/lang/Object;
.source "Integral.scala"


# direct methods
.method public static $init$(Lscala/math/Integral$ExtraImplicits;)V
    .locals 0

    return-void
.end method

.method public static infixIntegralOps(Lscala/math/Integral$ExtraImplicits;Ljava/lang/Object;Lscala/math/Integral;)Lscala/math/Integral$IntegralOps;
    .locals 0

    .line 37
    new-instance p0, Lscala/math/Integral$IntegralOps;

    invoke-direct {p0, p2, p1}, Lscala/math/Integral$IntegralOps;-><init>(Lscala/math/Integral;Ljava/lang/Object;)V

    return-object p0
.end method

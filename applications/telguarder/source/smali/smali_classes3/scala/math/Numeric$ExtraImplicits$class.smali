.class public abstract Lscala/math/Numeric$ExtraImplicits$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$ExtraImplicits;)V
    .locals 0

    return-void
.end method

.method public static infixNumericOps(Lscala/math/Numeric$ExtraImplicits;Ljava/lang/Object;Lscala/math/Numeric;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 26
    new-instance p0, Lscala/math/Numeric$Ops;

    invoke-direct {p0, p2, p1}, Lscala/math/Numeric$Ops;-><init>(Lscala/math/Numeric;Ljava/lang/Object;)V

    return-object p0
.end method

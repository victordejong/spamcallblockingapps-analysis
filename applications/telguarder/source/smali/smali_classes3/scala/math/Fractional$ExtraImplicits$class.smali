.class public abstract Lscala/math/Fractional$ExtraImplicits$class;
.super Ljava/lang/Object;
.source "Fractional.scala"


# direct methods
.method public static $init$(Lscala/math/Fractional$ExtraImplicits;)V
    .locals 0

    return-void
.end method

.method public static infixFractionalOps(Lscala/math/Fractional$ExtraImplicits;Ljava/lang/Object;Lscala/math/Fractional;)Lscala/math/Fractional$FractionalOps;
    .locals 0

    .line 29
    new-instance p0, Lscala/math/Fractional$FractionalOps;

    invoke-direct {p0, p2, p1}, Lscala/math/Fractional$FractionalOps;-><init>(Lscala/math/Fractional;Ljava/lang/Object;)V

    return-object p0
.end method

.class public abstract Lscala/math/Fractional$class;
.super Ljava/lang/Object;
.source "Fractional.scala"


# direct methods
.method public static $init$(Lscala/math/Fractional;)V
    .locals 0

    return-void
.end method

.method public static mkNumericOps(Lscala/math/Fractional;Ljava/lang/Object;)Lscala/math/Fractional$FractionalOps;
    .locals 1

    .line 24
    new-instance v0, Lscala/math/Fractional$FractionalOps;

    invoke-direct {v0, p0, p1}, Lscala/math/Fractional$FractionalOps;-><init>(Lscala/math/Fractional;Ljava/lang/Object;)V

    return-object v0
.end method

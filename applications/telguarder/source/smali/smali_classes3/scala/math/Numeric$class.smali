.class public abstract Lscala/math/Numeric$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric;)V
    .locals 0

    return-void
.end method

.method public static abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 208
    invoke-interface {p0}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/math/Numeric;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lscala/math/Numeric;->negate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static mkNumericOps(Lscala/math/Numeric;Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 1

    .line 226
    new-instance v0, Lscala/math/Numeric$Ops;

    invoke-direct {v0, p0, p1}, Lscala/math/Numeric$Ops;-><init>(Lscala/math/Numeric;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static one(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 206
    invoke-interface {p0, v0}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static signum(Lscala/math/Numeric;Ljava/lang/Object;)I
    .locals 1

    .line 210
    invoke-interface {p0}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/math/Numeric;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {p0}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/math/Numeric;->gt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static zero(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-interface {p0, v0}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

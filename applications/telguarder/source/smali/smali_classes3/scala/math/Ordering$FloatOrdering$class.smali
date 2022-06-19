.class public abstract Lscala/math/Ordering$FloatOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$FloatOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$FloatOrdering;FF)I
    .locals 0

    .line 269
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static equiv(Lscala/math/Ordering$FloatOrdering;FF)Z
    .locals 0

    cmpl-float p0, p1, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gt(Lscala/math/Ordering$FloatOrdering;FF)Z
    .locals 0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gteq(Lscala/math/Ordering$FloatOrdering;FF)Z
    .locals 0

    cmpl-float p0, p1, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lt(Lscala/math/Ordering$FloatOrdering;FF)Z
    .locals 0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lteq(Lscala/math/Ordering$FloatOrdering;FF)Z
    .locals 0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static max(Lscala/math/Ordering$FloatOrdering;FF)F
    .locals 0

    .line 276
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1, p2}, Lscala/math/package$;->max(FF)F

    move-result p0

    return p0
.end method

.method public static min(Lscala/math/Ordering$FloatOrdering;FF)F
    .locals 0

    .line 277
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1, p2}, Lscala/math/package$;->min(FF)F

    move-result p0

    return p0
.end method

.method public static reverse(Lscala/math/Ordering$FloatOrdering;)Lscala/math/Ordering;
    .locals 1

    .line 279
    new-instance v0, Lscala/math/Ordering$FloatOrdering$$anon$1;

    invoke-direct {v0, p0}, Lscala/math/Ordering$FloatOrdering$$anon$1;-><init>(Lscala/math/Ordering$FloatOrdering;)V

    return-object v0
.end method

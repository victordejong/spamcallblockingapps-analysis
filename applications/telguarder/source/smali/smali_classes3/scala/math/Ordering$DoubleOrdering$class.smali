.class public abstract Lscala/math/Ordering$DoubleOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$DoubleOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$DoubleOrdering;DD)I
    .locals 0

    .line 297
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static equiv(Lscala/math/Ordering$DoubleOrdering;DD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gt(Lscala/math/Ordering$DoubleOrdering;DD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gteq(Lscala/math/Ordering$DoubleOrdering;DD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lt(Lscala/math/Ordering$DoubleOrdering;DD)Z
    .locals 0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lteq(Lscala/math/Ordering$DoubleOrdering;DD)Z
    .locals 0

    cmpg-double p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static max(Lscala/math/Ordering$DoubleOrdering;DD)D
    .locals 0

    .line 304
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/math/package$;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static min(Lscala/math/Ordering$DoubleOrdering;DD)D
    .locals 0

    .line 305
    sget-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/math/package$;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static reverse(Lscala/math/Ordering$DoubleOrdering;)Lscala/math/Ordering;
    .locals 1

    .line 307
    new-instance v0, Lscala/math/Ordering$DoubleOrdering$$anon$2;

    invoke-direct {v0, p0}, Lscala/math/Ordering$DoubleOrdering$$anon$2;-><init>(Lscala/math/Ordering$DoubleOrdering;)V

    return-object v0
.end method

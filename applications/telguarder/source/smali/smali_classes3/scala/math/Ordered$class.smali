.class public abstract Lscala/math/Ordered$class;
.super Ljava/lang/Object;
.source "Ordered.scala"


# direct methods
.method public static $greater(Lscala/math/Ordered;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $init$(Lscala/math/Ordered;)V
    .locals 0

    return-void
.end method

.method public static $less(Lscala/math/Ordered;Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z
    .locals 0

    .line 84
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I
    .locals 0

    .line 92
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

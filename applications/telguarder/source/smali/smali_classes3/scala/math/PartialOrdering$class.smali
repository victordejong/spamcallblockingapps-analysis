.class public abstract Lscala/math/PartialOrdering$class;
.super Ljava/lang/Object;
.source "PartialOrdering.scala"


# direct methods
.method public static $init$(Lscala/math/PartialOrdering;)V
    .locals 0

    return-void
.end method

.method public static equiv(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 73
    invoke-interface {p0, p1, p2}, Lscala/math/PartialOrdering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2, p1}, Lscala/math/PartialOrdering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gt(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 69
    invoke-interface {p0, p1, p2}, Lscala/math/PartialOrdering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Lscala/math/PartialOrdering;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gteq(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 59
    invoke-interface {p0, p2, p1}, Lscala/math/PartialOrdering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static lt(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 64
    invoke-interface {p0, p1, p2}, Lscala/math/PartialOrdering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Lscala/math/PartialOrdering;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static reverse(Lscala/math/PartialOrdering;)Lscala/math/PartialOrdering;
    .locals 1

    .line 75
    new-instance v0, Lscala/math/PartialOrdering$$anon$1;

    invoke-direct {v0, p0}, Lscala/math/PartialOrdering$$anon$1;-><init>(Lscala/math/PartialOrdering;)V

    return-object v0
.end method

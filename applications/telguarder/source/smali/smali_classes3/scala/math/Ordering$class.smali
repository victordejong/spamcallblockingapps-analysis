.class public abstract Lscala/math/Ordering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering;)V
    .locals 0

    return-void
.end method

.method public static equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 100
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 97
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 91
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 94
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;
    .locals 1

    .line 139
    new-instance v0, Lscala/math/Ordering$Ops;

    invoke-direct {v0, p0, p1}, Lscala/math/Ordering$Ops;-><init>(Lscala/math/Ordering;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;
    .locals 1

    .line 121
    new-instance v0, Lscala/math/Ordering$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/math/Ordering$$anon$5;-><init>(Lscala/math/Ordering;Lscala/Function1;)V

    return-object v0
.end method

.method public static reverse(Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1

    .line 109
    new-instance v0, Lscala/math/Ordering$$anon$4;

    invoke-direct {v0, p0}, Lscala/math/Ordering$$anon$4;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method

.method public static tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 1

    .line 75
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

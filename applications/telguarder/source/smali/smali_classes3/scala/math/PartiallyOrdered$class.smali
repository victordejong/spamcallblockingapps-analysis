.class public abstract Lscala/math/PartiallyOrdered$class;
.super Ljava/lang/Object;
.source "PartiallyOrdered.scala"


# direct methods
.method public static $greater(Lscala/math/PartiallyOrdered;Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 36
    invoke-interface {p0, p1, p2}, Lscala/math/PartiallyOrdered;->tryCompareTo(Ljava/lang/Object;Lscala/Function1;)Lscala/Option;

    move-result-object p0

    .line 37
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $greater$eq(Lscala/math/PartiallyOrdered;Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 46
    invoke-interface {p0, p1, p2}, Lscala/math/PartiallyOrdered;->tryCompareTo(Ljava/lang/Object;Lscala/Function1;)Lscala/Option;

    move-result-object p0

    .line 47
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $init$(Lscala/math/PartiallyOrdered;)V
    .locals 0

    return-void
.end method

.method public static $less(Lscala/math/PartiallyOrdered;Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 31
    invoke-interface {p0, p1, p2}, Lscala/math/PartiallyOrdered;->tryCompareTo(Ljava/lang/Object;Lscala/Function1;)Lscala/Option;

    move-result-object p0

    .line 32
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $less$eq(Lscala/math/PartiallyOrdered;Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 41
    invoke-interface {p0, p1, p2}, Lscala/math/PartiallyOrdered;->tryCompareTo(Ljava/lang/Object;Lscala/Function1;)Lscala/Option;

    move-result-object p0

    .line 42
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

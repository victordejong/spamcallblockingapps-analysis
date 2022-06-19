.class public abstract Lscala/Product1$class;
.super Ljava/lang/Object;
.source "Product1.scala"


# direct methods
.method public static $init$(Lscala/Product1;)V
    .locals 0

    return-void
.end method

.method public static _1$mcD$sp(Lscala/Product1;)D
    .locals 2

    .line 44
    invoke-interface {p0}, Lscala/Product1;->_1()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static _1$mcI$sp(Lscala/Product1;)I
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/Product1;->_1()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static _1$mcJ$sp(Lscala/Product1;)J
    .locals 2

    .line 44
    invoke-interface {p0}, Lscala/Product1;->_1()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static productArity(Lscala/Product1;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static productElement(Lscala/Product1;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 37
    invoke-interface {p0}, Lscala/Product1;->_1()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

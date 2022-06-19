.class public abstract Lscala/Product3$class;
.super Ljava/lang/Object;
.source "Product3.scala"


# direct methods
.method public static $init$(Lscala/Product3;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product3;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public static productElement(Lscala/Product3;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 39
    invoke-interface {p0}, Lscala/Product3;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_1
    invoke-interface {p0}, Lscala/Product3;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {p0}, Lscala/Product3;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

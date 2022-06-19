.class public abstract Lscala/math/Ordering$BooleanOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$BooleanOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$BooleanOrdering;ZZ)I
    .locals 0

    .line 227
    new-instance p0, Lscala/Tuple2$mcZZ$sp;

    invoke-direct {p0, p1, p2}, Lscala/Tuple2$mcZZ$sp;-><init>(ZZ)V

    .line 228
    invoke-virtual {p0}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

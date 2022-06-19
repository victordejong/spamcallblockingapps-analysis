.class public abstract Lscala/math/Ordering$IntOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$IntOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$IntOrdering;II)I
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.class public abstract Lscala/math/Ordering$LongOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$LongOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$LongOrdering;JJ)I
    .locals 0

    cmp-long p0, p1, p3

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.class public abstract Lscala/math/Ordering$BigIntOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$BigIntOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$BigIntOrdering;Lscala/math/BigInt;Lscala/math/BigInt;)I
    .locals 0

    .line 322
    invoke-virtual {p1, p2}, Lscala/math/BigInt;->compare(Lscala/math/BigInt;)I

    move-result p0

    return p0
.end method

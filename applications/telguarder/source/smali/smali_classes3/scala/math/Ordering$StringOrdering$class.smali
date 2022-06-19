.class public abstract Lscala/math/Ordering$StringOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$StringOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$StringOrdering;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 332
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

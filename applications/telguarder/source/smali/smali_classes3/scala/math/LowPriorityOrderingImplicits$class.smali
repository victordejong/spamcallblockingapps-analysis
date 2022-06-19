.class public abstract Lscala/math/LowPriorityOrderingImplicits$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/LowPriorityOrderingImplicits;)V
    .locals 0

    return-void
.end method

.method public static comparatorToOrdering(Lscala/math/LowPriorityOrderingImplicits;Ljava/util/Comparator;)Lscala/math/Ordering;
    .locals 1

    .line 152
    new-instance v0, Lscala/math/LowPriorityOrderingImplicits$$anon$7;

    invoke-direct {v0, p0, p1}, Lscala/math/LowPriorityOrderingImplicits$$anon$7;-><init>(Lscala/math/LowPriorityOrderingImplicits;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static ordered(Lscala/math/LowPriorityOrderingImplicits;Lscala/Function1;)Lscala/math/Ordering;
    .locals 1

    .line 149
    new-instance v0, Lscala/math/LowPriorityOrderingImplicits$$anon$6;

    invoke-direct {v0, p0, p1}, Lscala/math/LowPriorityOrderingImplicits$$anon$6;-><init>(Lscala/math/LowPriorityOrderingImplicits;Lscala/Function1;)V

    return-object v0
.end method

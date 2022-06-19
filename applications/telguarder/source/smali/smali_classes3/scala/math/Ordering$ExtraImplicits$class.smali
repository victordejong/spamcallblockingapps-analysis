.class public abstract Lscala/math/Ordering$ExtraImplicits$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$ExtraImplicits;)V
    .locals 0

    return-void
.end method

.method public static infixOrderingOps(Lscala/math/Ordering$ExtraImplicits;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordering$Ops;
    .locals 0

    .line 192
    new-instance p0, Lscala/math/Ordering$Ops;

    invoke-direct {p0, p2, p1}, Lscala/math/Ordering$Ops;-><init>(Lscala/math/Ordering;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static seqDerivedOrdering(Lscala/math/Ordering$ExtraImplicits;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1

    .line 170
    new-instance v0, Lscala/math/Ordering$ExtraImplicits$$anon$8;

    invoke-direct {v0, p0, p1}, Lscala/math/Ordering$ExtraImplicits$$anon$8;-><init>(Lscala/math/Ordering$ExtraImplicits;Lscala/math/Ordering;)V

    return-object v0
.end method

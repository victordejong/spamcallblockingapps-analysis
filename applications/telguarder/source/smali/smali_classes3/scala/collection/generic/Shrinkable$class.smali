.class public abstract Lscala/collection/generic/Shrinkable$class;
.super Ljava/lang/Object;
.source "Shrinkable.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/Shrinkable;)V
    .locals 0

    return-void
.end method

.method public static $minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 39
    invoke-interface {p0, p1}, Lscala/collection/generic/Shrinkable;->$minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;

    .line 40
    invoke-interface {p0, p2}, Lscala/collection/generic/Shrinkable;->$minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;

    .line 41
    invoke-interface {p0, p3}, Lscala/collection/generic/Shrinkable;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    return-object p0
.end method

.method public static $minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 1

    .line 49
    new-instance v0, Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;-><init>(Lscala/collection/generic/Shrinkable;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    return-object p0
.end method

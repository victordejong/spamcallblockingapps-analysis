.class public abstract Lscala/collection/generic/Subtractable$class;
.super Ljava/lang/Object;
.source "Subtractable.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/Subtractable;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/generic/Subtractable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lscala/collection/generic/Subtractable;->$minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/generic/Subtractable;->$minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/generic/Subtractable;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;

    move-result-object p0

    return-object p0
.end method

.method public static $minus$minus(Lscala/collection/generic/Subtractable;Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 2

    .line 60
    invoke-interface {p0}, Lscala/collection/generic/Subtractable;->repr()Lscala/collection/generic/Subtractable;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/generic/Subtractable$$anonfun$$minus$minus$1;

    invoke-direct {v1, p0}, Lscala/collection/generic/Subtractable$$anonfun$$minus$minus$1;-><init>(Lscala/collection/generic/Subtractable;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/generic/Subtractable;

    return-object p0
.end method

.class public abstract Lscala/collection/TraversableViewLike$DroppedWhile$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$DroppedWhile;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$DroppedWhile;Lscala/Function1;)V
    .locals 3

    const/4 v0, 0x0

    .line 216
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$DroppedWhile;->scala$collection$TraversableViewLike$DroppedWhile$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;-><init>(Lscala/collection/TraversableViewLike$DroppedWhile;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    invoke-interface {v1, v2}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$DroppedWhile;)Ljava/lang/String;
    .locals 0

    const-string p0, "D"

    return-object p0
.end method

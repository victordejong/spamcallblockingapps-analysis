.class public abstract Lscala/collection/TraversableViewLike$Filtered$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Filtered;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$Filtered;Lscala/Function1;)V
    .locals 2

    .line 196
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Filtered;->scala$collection$TraversableViewLike$Filtered$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableViewLike$Filtered$$anonfun$foreach$4;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$Filtered$$anonfun$foreach$4;-><init>(Lscala/collection/TraversableViewLike$Filtered;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$Filtered;)Ljava/lang/String;
    .locals 0

    const-string p0, "F"

    return-object p0
.end method

.class public abstract Lscala/collection/TraversableViewLike$FlatMapped$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$FlatMapped;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$FlatMapped;Lscala/Function1;)V
    .locals 2

    .line 177
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$FlatMapped;->scala$collection$TraversableViewLike$FlatMapped$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;-><init>(Lscala/collection/TraversableViewLike$FlatMapped;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$FlatMapped;)Ljava/lang/String;
    .locals 0

    const-string p0, "N"

    return-object p0
.end method

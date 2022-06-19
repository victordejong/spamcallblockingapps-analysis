.class public abstract Lscala/collection/TraversableViewLike$Mapped$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Mapped;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$Mapped;Lscala/Function1;)V
    .locals 2

    .line 168
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Mapped;->scala$collection$TraversableViewLike$Mapped$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;-><init>(Lscala/collection/TraversableViewLike$Mapped;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$Mapped;)Ljava/lang/String;
    .locals 0

    const-string p0, "M"

    return-object p0
.end method

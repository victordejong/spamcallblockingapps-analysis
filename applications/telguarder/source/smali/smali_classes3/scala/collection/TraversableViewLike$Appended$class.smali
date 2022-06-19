.class public abstract Lscala/collection/TraversableViewLike$Appended$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Appended;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$Appended;Lscala/Function1;)V
    .locals 1

    .line 187
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Appended;->scala$collection$TraversableViewLike$Appended$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V

    .line 188
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Appended;->rest()Lscala/collection/GenTraversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/GenTraversable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$Appended;)Ljava/lang/String;
    .locals 0

    const-string p0, "A"

    return-object p0
.end method

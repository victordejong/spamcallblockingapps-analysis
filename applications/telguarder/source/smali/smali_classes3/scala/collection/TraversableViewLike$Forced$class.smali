.class public abstract Lscala/collection/TraversableViewLike$Forced$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Forced;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$Forced;Lscala/Function1;)V
    .locals 0

    .line 141
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Forced;->forced()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/GenSeq;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$Forced;)Ljava/lang/String;
    .locals 0

    const-string p0, "C"

    return-object p0
.end method

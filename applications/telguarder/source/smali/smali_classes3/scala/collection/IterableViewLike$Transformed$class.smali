.class public abstract Lscala/collection/IterableViewLike$Transformed$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$Transformed;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/IterableViewLike$Transformed;Lscala/Function1;)V
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Transformed;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static isEmpty(Lscala/collection/IterableViewLike$Transformed;)Z
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Transformed;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static toString(Lscala/collection/IterableViewLike$Transformed;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/IterableViewLike$Transformed;->viewToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

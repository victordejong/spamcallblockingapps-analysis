.class public abstract Lscala/collection/generic/IterableForwarder$class;
.super Ljava/lang/Object;
.source "IterableForwarder.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/IterableForwarder;)V
    .locals 0

    return-void
.end method

.method public static iterator(Lscala/collection/generic/IterableForwarder;)Lscala/collection/Iterator;
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/generic/IterableForwarder;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static sameElements(Lscala/collection/generic/IterableForwarder;Lscala/collection/GenIterable;)Z
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/generic/IterableForwarder;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterable;->sameElements(Lscala/collection/GenIterable;)Z

    move-result p0

    return p0
.end method

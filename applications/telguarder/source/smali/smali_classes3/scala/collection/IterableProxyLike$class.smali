.class public abstract Lscala/collection/IterableProxyLike$class;
.super Ljava/lang/Object;
.source "IterableProxyLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableProxyLike;)V
    .locals 0

    return-void
.end method

.method public static dropRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->dropRight(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Iterable;

    return-object p0
.end method

.method public static grouped(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->grouped(I)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Lscala/collection/IterableProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static sameElements(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;)Z
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->sameElements(Lscala/collection/GenIterable;)Z

    move-result p0

    return p0
.end method

.method public static sliding(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->sliding(I)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static sliding(Lscala/collection/IterableProxyLike;II)Lscala/collection/Iterator;
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/IterableLike;->sliding(II)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static takeRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->takeRight(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Iterable;

    return-object p0
.end method

.method public static view(Lscala/collection/IterableProxyLike;)Lscala/collection/IterableView;
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0}, Lscala/collection/IterableLike;->view()Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/IterableProxyLike;II)Lscala/collection/IterableView;
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/IterableLike;->view(II)Lscala/collection/IterableView;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/IterableLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zipAll(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/IterableLike;->zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zipWithIndex(Lscala/collection/IterableProxyLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/IterableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p1}, Lscala/collection/IterableLike;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

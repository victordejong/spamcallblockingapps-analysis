.class public abstract Lscala/collection/SortedMap$class;
.super Ljava/lang/Object;
.source "SortedMap.scala"


# direct methods
.method public static $init$(Lscala/collection/SortedMap;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/SortedMap;)Lscala/collection/SortedMap;
    .locals 1

    .line 24
    sget-object v0, Lscala/collection/SortedMap$;->MODULE$:Lscala/collection/SortedMap$;

    invoke-interface {p0}, Lscala/collection/SortedMap;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/SortedMap$;->empty(Lscala/math/Ordering;)Lscala/collection/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lscala/collection/SortedMap;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 27
    sget-object v0, Lscala/collection/immutable/SortedMap$;->MODULE$:Lscala/collection/immutable/SortedMap$;

    invoke-interface {p0}, Lscala/collection/SortedMap;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/immutable/SortedMap$;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

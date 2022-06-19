.class public abstract Lscala/collection/immutable/SortedSet$class;
.super Ljava/lang/Object;
.source "SortedSet.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/SortedSet;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/immutable/SortedSet;)Lscala/collection/immutable/SortedSet;
    .locals 1

    .line 30
    sget-object v0, Lscala/collection/immutable/SortedSet$;->MODULE$:Lscala/collection/immutable/SortedSet$;

    invoke-interface {p0}, Lscala/collection/immutable/SortedSet;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/immutable/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;

    move-result-object p0

    return-object p0
.end method

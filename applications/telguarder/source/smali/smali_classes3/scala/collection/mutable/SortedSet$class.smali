.class public abstract Lscala/collection/mutable/SortedSet$class;
.super Ljava/lang/Object;
.source "SortedSet.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SortedSet;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/mutable/SortedSet;)Lscala/collection/mutable/SortedSet;
    .locals 1

    .line 28
    sget-object v0, Lscala/collection/mutable/SortedSet$;->MODULE$:Lscala/collection/mutable/SortedSet$;

    invoke-interface {p0}, Lscala/collection/mutable/SortedSet;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/mutable/SortedSet;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lscala/collection/SortedSet$class;
.super Ljava/lang/Object;
.source "SortedSet.scala"


# direct methods
.method public static $init$(Lscala/collection/SortedSet;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/SortedSet;)Lscala/collection/SortedSet;
    .locals 1

    .line 23
    sget-object v0, Lscala/collection/SortedSet$;->MODULE$:Lscala/collection/SortedSet$;

    invoke-interface {p0}, Lscala/collection/SortedSet;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;

    move-result-object p0

    return-object p0
.end method

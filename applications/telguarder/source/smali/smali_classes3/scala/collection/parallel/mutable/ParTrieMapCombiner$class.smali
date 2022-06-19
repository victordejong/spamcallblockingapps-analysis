.class public abstract Lscala/collection/parallel/mutable/ParTrieMapCombiner$class;
.super Ljava/lang/Object;
.source "ParTrieMap.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/ParTrieMapCombiner;)V
    .locals 0

    return-void
.end method

.method public static canBeShared(Lscala/collection/parallel/mutable/ParTrieMapCombiner;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static combine(Lscala/collection/parallel/mutable/ParTrieMapCombiner;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0

    if-ne p0, p1, :cond_0

    return-object p0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This shouldn\'t have been called in the first place."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

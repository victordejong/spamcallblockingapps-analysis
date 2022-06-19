.class public abstract Lscala/collection/parallel/immutable/ParSet$class;
.super Ljava/lang/Object;
.source "ParSet.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/immutable/ParSet;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/parallel/immutable/ParSet;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 32
    sget-object p0, Lscala/collection/parallel/immutable/ParSet$;->MODULE$:Lscala/collection/parallel/immutable/ParSet$;

    return-object p0
.end method

.method public static empty(Lscala/collection/parallel/immutable/ParSet;)Lscala/collection/parallel/immutable/ParSet;
    .locals 1

    .line 30
    sget-object p0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/ParHashSet$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/immutable/ParSet;

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/parallel/immutable/ParSet;)Ljava/lang/String;
    .locals 0

    const-string p0, "ParSet"

    return-object p0
.end method

.method public static toSet(Lscala/collection/parallel/immutable/ParSet;)Lscala/collection/parallel/immutable/ParSet;
    .locals 0

    return-object p0
.end method

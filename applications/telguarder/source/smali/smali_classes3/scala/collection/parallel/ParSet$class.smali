.class public abstract Lscala/collection/parallel/ParSet$class;
.super Ljava/lang/Object;
.source "ParSet.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParSet;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/parallel/ParSet;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 35
    sget-object p0, Lscala/collection/parallel/ParSet$;->MODULE$:Lscala/collection/parallel/ParSet$;

    return-object p0
.end method

.method public static empty(Lscala/collection/parallel/ParSet;)Lscala/collection/parallel/ParSet;
    .locals 1

    .line 31
    sget-object p0, Lscala/collection/parallel/mutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashSet$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/ParSet;

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/parallel/ParSet;)Ljava/lang/String;
    .locals 0

    const-string p0, "ParSet"

    return-object p0
.end method

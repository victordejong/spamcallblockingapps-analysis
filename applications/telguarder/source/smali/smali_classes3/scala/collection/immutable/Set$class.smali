.class public abstract Lscala/collection/immutable/Set$class;
.super Ljava/lang/Object;
.source "Set.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/Set;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 35
    sget-object p0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 41
    sget-object p0, Lscala/collection/parallel/immutable/ParSet$;->MODULE$:Lscala/collection/parallel/immutable/ParSet$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParSet$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;
    .locals 0

    return-object p0
.end method

.method public static toSet(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;
    .locals 1

    .line 38
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/Set;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Set;

    return-object p0
.end method

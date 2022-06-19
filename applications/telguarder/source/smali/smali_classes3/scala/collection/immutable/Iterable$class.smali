.class public abstract Lscala/collection/immutable/Iterable$class;
.super Ljava/lang/Object;
.source "Iterable.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/Iterable;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 32
    sget-object p0, Lscala/collection/immutable/Iterable$;->MODULE$:Lscala/collection/immutable/Iterable$;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/immutable/Iterable;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 33
    sget-object p0, Lscala/collection/parallel/immutable/ParIterable$;->MODULE$:Lscala/collection/parallel/immutable/ParIterable$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParIterable$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/Iterable;
    .locals 0

    return-object p0
.end method

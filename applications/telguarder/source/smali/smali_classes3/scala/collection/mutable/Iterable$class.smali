.class public abstract Lscala/collection/mutable/Iterable$class;
.super Ljava/lang/Object;
.source "Iterable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Iterable;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 25
    sget-object p0, Lscala/collection/mutable/Iterable$;->MODULE$:Lscala/collection/mutable/Iterable$;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/mutable/Iterable;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 26
    sget-object p0, Lscala/collection/parallel/mutable/ParIterable$;->MODULE$:Lscala/collection/parallel/mutable/ParIterable$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParIterable$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/Iterable;
    .locals 0

    return-object p0
.end method

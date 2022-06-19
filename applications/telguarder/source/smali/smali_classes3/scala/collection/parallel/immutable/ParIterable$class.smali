.class public abstract Lscala/collection/parallel/immutable/ParIterable$class;
.super Ljava/lang/Object;
.source "ParIterable.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/immutable/ParIterable;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 35
    sget-object p0, Lscala/collection/parallel/immutable/ParIterable$;->MODULE$:Lscala/collection/parallel/immutable/ParIterable$;

    return-object p0
.end method

.method public static toIterable(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParIterable;
    .locals 0

    return-object p0
.end method

.method public static toSeq(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParSeq;
    .locals 1

    .line 38
    new-instance v0, Lscala/collection/parallel/immutable/ParIterable$$anonfun$toSeq$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/immutable/ParIterable$$anonfun$toSeq$1;-><init>(Lscala/collection/parallel/immutable/ParIterable;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/immutable/ParIterable;->toParCollection(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/immutable/ParSeq;

    return-object p0
.end method

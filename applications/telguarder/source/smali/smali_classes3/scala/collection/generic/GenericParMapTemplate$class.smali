.class public abstract Lscala/collection/generic/GenericParMapTemplate$class;
.super Ljava/lang/Object;
.source "GenericParTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericParMapTemplate;)V
    .locals 0

    return-void
.end method

.method public static genericMapCombiner(Lscala/collection/generic/GenericParMapTemplate;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/generic/GenericParMapTemplate;->mapCompanion()Lscala/collection/generic/GenericParMapCompanion;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/GenericParMapCompanion;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static newCombiner(Lscala/collection/generic/GenericParMapTemplate;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/generic/GenericParMapTemplate;->mapCompanion()Lscala/collection/generic/GenericParMapCompanion;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/GenericParMapCompanion;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

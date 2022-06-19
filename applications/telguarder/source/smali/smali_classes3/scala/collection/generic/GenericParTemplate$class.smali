.class public abstract Lscala/collection/generic/GenericParTemplate$class;
.super Ljava/lang/Object;
.source "GenericParTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericParTemplate;)V
    .locals 0

    return-void
.end method

.method public static genericBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/generic/GenericParTemplate;->genericCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static genericCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/generic/GenericParTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object p0

    check-cast p0, Lscala/collection/generic/GenericParCompanion;

    invoke-interface {p0}, Lscala/collection/generic/GenericParCompanion;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/generic/GenericParTemplate;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static newCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/generic/GenericParTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object p0

    check-cast p0, Lscala/collection/generic/GenericParCompanion;

    invoke-interface {p0}, Lscala/collection/generic/GenericParCompanion;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

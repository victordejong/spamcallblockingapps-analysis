.class public abstract Lscala/collection/generic/GenericOrderedTraversableTemplate$class;
.super Ljava/lang/Object;
.source "GenericOrderedTraversableTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericOrderedTraversableTemplate;)V
    .locals 0

    return-void
.end method

.method public static genericOrderedBuilder(Lscala/collection/generic/GenericOrderedTraversableTemplate;Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/generic/GenericOrderedTraversableTemplate;->orderedCompanion()Lscala/collection/generic/GenericOrderedCompanion;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericOrderedCompanion;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

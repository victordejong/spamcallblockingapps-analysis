.class public abstract Lscala/collection/generic/GenericSetTemplate$class;
.super Ljava/lang/Object;
.source "GenericSetTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericSetTemplate;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/generic/GenericSetTemplate;)Lscala/collection/GenSet;
    .locals 0

    .line 17
    invoke-interface {p0}, Lscala/collection/generic/GenericSetTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->empty()Lscala/collection/GenTraversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSet;

    return-object p0
.end method

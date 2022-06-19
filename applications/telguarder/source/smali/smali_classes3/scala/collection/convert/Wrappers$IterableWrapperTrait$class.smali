.class public abstract Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;
.super Ljava/lang/Object;
.source "Wrappers.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)V
    .locals 0

    return-void
.end method

.method public static isEmpty(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Z
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static iterator(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Lscala/collection/convert/Wrappers$IteratorWrapper;
    .locals 2

    .line 25
    new-instance v0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->scala$collection$convert$Wrappers$IterableWrapperTrait$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public static size(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)I
    .locals 0

    .line 24
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->size()I

    move-result p0

    return p0
.end method

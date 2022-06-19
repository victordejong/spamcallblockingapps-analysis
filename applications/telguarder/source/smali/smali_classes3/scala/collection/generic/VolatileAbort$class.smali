.class public abstract Lscala/collection/generic/VolatileAbort$class;
.super Ljava/lang/Object;
.source "Signalling.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/VolatileAbort;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-interface {p0, v0}, Lscala/collection/generic/VolatileAbort;->scala$collection$generic$VolatileAbort$$abortflag_$eq(Z)V

    return-void
.end method

.method public static abort(Lscala/collection/generic/VolatileAbort;)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-interface {p0, v0}, Lscala/collection/generic/VolatileAbort;->scala$collection$generic$VolatileAbort$$abortflag_$eq(Z)V

    return-void
.end method

.method public static isAborted(Lscala/collection/generic/VolatileAbort;)Z
    .locals 0

    .line 117
    invoke-interface {p0}, Lscala/collection/generic/VolatileAbort;->scala$collection$generic$VolatileAbort$$abortflag()Z

    move-result p0

    return p0
.end method

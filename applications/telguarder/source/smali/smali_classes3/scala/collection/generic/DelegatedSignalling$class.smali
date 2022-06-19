.class public abstract Lscala/collection/generic/DelegatedSignalling$class;
.super Ljava/lang/Object;
.source "Signalling.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/DelegatedSignalling;)V
    .locals 0

    return-void
.end method

.method public static abort(Lscala/collection/generic/DelegatedSignalling;)V
    .locals 0

    .line 158
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/Signalling;->abort()V

    return-void
.end method

.method public static indexFlag(Lscala/collection/generic/DelegatedSignalling;)I
    .locals 0

    .line 160
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/Signalling;->indexFlag()I

    move-result p0

    return p0
.end method

.method public static isAborted(Lscala/collection/generic/DelegatedSignalling;)Z
    .locals 0

    .line 157
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/Signalling;->isAborted()Z

    move-result p0

    return p0
.end method

.method public static setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V
    .locals 0

    .line 161
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/generic/Signalling;->setIndexFlag(I)V

    return-void
.end method

.method public static setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V
    .locals 0

    .line 162
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/generic/Signalling;->setIndexFlagIfGreater(I)V

    return-void
.end method

.method public static setIndexFlagIfLesser(Lscala/collection/generic/DelegatedSignalling;I)V
    .locals 0

    .line 163
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/generic/Signalling;->setIndexFlagIfLesser(I)V

    return-void
.end method

.method public static tag(Lscala/collection/generic/DelegatedSignalling;)I
    .locals 0

    .line 165
    invoke-interface {p0}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/generic/Signalling;->tag()I

    move-result p0

    return p0
.end method

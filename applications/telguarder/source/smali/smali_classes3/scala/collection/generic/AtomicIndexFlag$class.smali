.class public abstract Lscala/collection/generic/AtomicIndexFlag$class;
.super Ljava/lang/Object;
.source "Signalling.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/AtomicIndexFlag;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p0, v0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$_setter_$scala$collection$generic$AtomicIndexFlag$$intflag_$eq(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public static indexFlag(Lscala/collection/generic/AtomicIndexFlag;)I
    .locals 0

    .line 128
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public static setIndexFlag(Lscala/collection/generic/AtomicIndexFlag;I)V
    .locals 0

    .line 129
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static setIndexFlagIfGreater(Lscala/collection/generic/AtomicIndexFlag;I)V
    .locals 4

    const/4 v0, 0x1

    .line 132
    :cond_0
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-gt p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    return-void
.end method

.method public static setIndexFlagIfLesser(Lscala/collection/generic/AtomicIndexFlag;I)V
    .locals 4

    const/4 v0, 0x1

    .line 140
    :cond_0
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :cond_1
    invoke-interface {p0}, Lscala/collection/generic/AtomicIndexFlag;->scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    return-void
.end method

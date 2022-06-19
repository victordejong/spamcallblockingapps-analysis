.class public final Lscala/collection/parallel/ParSeqLike$$anon$5;
.super Lscala/collection/generic/DefaultSignalling;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/generic/AtomicIndexFlag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->lastIndexWhere(Lscala/Function1;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final scala$collection$generic$AtomicIndexFlag$$intflag:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lscala/collection/generic/DefaultSignalling;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/AtomicIndexFlag$class;->$init$(Lscala/collection/generic/AtomicIndexFlag;)V

    return-void
.end method


# virtual methods
.method public indexFlag()I
    .locals 1

    .line 145
    invoke-static {p0}, Lscala/collection/generic/AtomicIndexFlag$class;->indexFlag(Lscala/collection/generic/AtomicIndexFlag;)I

    move-result v0

    return v0
.end method

.method public scala$collection$generic$AtomicIndexFlag$$intflag()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anon$5;->scala$collection$generic$AtomicIndexFlag$$intflag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public scala$collection$generic$AtomicIndexFlag$_setter_$scala$collection$generic$AtomicIndexFlag$$intflag_$eq(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anon$5;->scala$collection$generic$AtomicIndexFlag$$intflag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lscala/collection/generic/AtomicIndexFlag$class;->setIndexFlag(Lscala/collection/generic/AtomicIndexFlag;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lscala/collection/generic/AtomicIndexFlag$class;->setIndexFlagIfGreater(Lscala/collection/generic/AtomicIndexFlag;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lscala/collection/generic/AtomicIndexFlag$class;->setIndexFlagIfLesser(Lscala/collection/generic/AtomicIndexFlag;I)V

    return-void
.end method

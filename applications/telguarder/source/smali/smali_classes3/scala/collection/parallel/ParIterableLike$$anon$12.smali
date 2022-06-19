.class public final Lscala/collection/parallel/ParIterableLike$$anon$12;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$SignallingOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.SignallingOps<TPI;>;"
    }
.end annotation


# instance fields
.field private final it$1:Lscala/collection/generic/DelegatedSignalling;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 324
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$12;->it$1:Lscala/collection/generic/DelegatedSignalling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Lscala/collection/generic/Signalling;)Lscala/collection/generic/DelegatedSignalling;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/Signalling;",
            ")TPI;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$12;->it$1:Lscala/collection/generic/DelegatedSignalling;

    invoke-interface {v0, p1}, Lscala/collection/generic/DelegatedSignalling;->signalDelegate_$eq(Lscala/collection/generic/Signalling;)V

    .line 327
    iget-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$12;->it$1:Lscala/collection/generic/DelegatedSignalling;

    return-object p1
.end method

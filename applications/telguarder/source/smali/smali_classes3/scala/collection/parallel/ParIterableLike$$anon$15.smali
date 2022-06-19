.class public final Lscala/collection/parallel/ParIterableLike$$anon$15;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TSequential;TS;TThat;>;"
    }
.end annotation


# instance fields
.field private final bf$1:Lscala/collection/generic/CanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 341
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$15;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$15;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {v0}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 341
    check-cast p1, Lscala/collection/Iterable;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$15;->apply(Lscala/collection/Iterable;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Iterable;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSequential;)",
            "Lscala/collection/mutable/Builder<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$15;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {p1}, Lscala/collection/Iterable;->par()Lscala/collection/Parallel;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParIterable;

    invoke-interface {v0, p1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

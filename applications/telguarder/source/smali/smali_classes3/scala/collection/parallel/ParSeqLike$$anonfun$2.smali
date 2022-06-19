.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$2;
.super Lscala/runtime/AbstractFunction0;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final bf$2:Lscala/collection/generic/CanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/generic/CanBuildFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$2;->bf$2:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$2;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/parallel/Combiner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$2;->$outer:Lscala/collection/parallel/ParSeqLike;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$2;->bf$2:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {v0}, Lscala/collection/parallel/ParSeqLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParSeqLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->asCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

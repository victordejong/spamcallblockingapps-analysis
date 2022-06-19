.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction0;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;
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
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anonfun$scan$1;)V"
        }
    .end annotation

    .line 730
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 730
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;->apply()Lscala/collection/parallel/Combiner;

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

    .line 730
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;

    iget-object v0, v0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;

    iget-object v1, v1, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->bf$6:Lscala/collection/generic/CanBuildFrom;

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;

    iget-object v2, v2, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v2}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->asCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

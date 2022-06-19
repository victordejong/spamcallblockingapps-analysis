.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$6;
.super Lscala/runtime/AbstractFunction0;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final bf$5:Lscala/collection/generic/CanBuildFrom;

.field private final that$1:Lscala/collection/GenTraversableOnce;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->$outer:Lscala/collection/parallel/ParIterableLike;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->that$1:Lscala/collection/GenTraversableOnce;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->bf$5:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->apply()Lscala/collection/parallel/Combiner;

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

    .line 622
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->$outer:Lscala/collection/parallel/ParIterableLike;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->bf$5:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->asCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6;->that$1:Lscala/collection/GenTraversableOnce;

    invoke-interface {v1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;-><init>(Lscala/collection/parallel/ParIterableLike$$anonfun$6;Lscala/collection/parallel/Combiner;)V

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    return-object v0
.end method

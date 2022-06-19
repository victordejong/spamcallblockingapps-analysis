.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$2;
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

.field private final cfactory$1:Lscala/collection/parallel/CombinerFactory;

.field private final other$1:Lscala/collection/parallel/ParIterable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterable;Lscala/collection/parallel/CombinerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 610
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->$outer:Lscala/collection/parallel/ParIterableLike;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->other$1:Lscala/collection/parallel/ParIterable;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->cfactory$1:Lscala/collection/parallel/CombinerFactory;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 610
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/parallel/Combiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 611
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Copy;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->other$1:Lscala/collection/parallel/ParIterable;

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->cfactory$1:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v1}, Lscala/collection/parallel/ParIterable;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/parallel/ParIterableLike$Copy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    .line 612
    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$2;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v1}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/Combiner;

    return-object v0
.end method

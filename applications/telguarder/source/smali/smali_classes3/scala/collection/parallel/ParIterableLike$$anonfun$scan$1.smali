.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ScanTree<TU;>;TThat;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field public final bf$6:Lscala/collection/generic/CanBuildFrom;

.field private final op$1:Lscala/Function2;

.field private final z$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 730
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->z$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->op$1:Lscala/Function2;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->bf$6:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 730
    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->apply(Lscala/collection/parallel/ParIterableLike$ScanTree;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParIterableLike$ScanTree;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;)TThat;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    iget-object v7, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    new-instance v8, Lscala/collection/parallel/ParIterableLike$FromScanTree;

    iget-object v4, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->z$1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->op$1:Lscala/Function2;

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3;-><init>(Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;)V

    invoke-interface {v7, v1}, Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v6

    move-object v1, v8

    move-object v2, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParIterableLike$FromScanTree;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/CombinerFactory;)V

    invoke-interface {v7, v8}, Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    .line 731
    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$4;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$4;-><init>(Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;)V

    .line 730
    invoke-interface {p1, v1}, Lscala/collection/parallel/ParIterableLike$TaskOps;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$$anonfun$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 730
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$scan$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

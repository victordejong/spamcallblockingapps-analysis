.class public final Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray;->scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>;",
        "Lscala/collection/mutable/ArraySeq<",
        "TT;>;>.ScanTree<TU;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray;

.field private final op$1:Lscala/Function2;

.field private final targetarr$1:[Ljava/lang/Object;

.field private final z$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray;Ljava/lang/Object;Lscala/Function2;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 601
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->$outer:Lscala/collection/parallel/mutable/ParArray;

    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->z$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->op$1:Lscala/Function2;

    iput-object p4, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->targetarr$1:[Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 601
    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->apply(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParIterableLike$ScanTree;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>.ScanTree<TU;>;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->$outer:Lscala/collection/parallel/mutable/ParArray;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    new-instance v7, Lscala/collection/parallel/mutable/ParArray$ScanToArray;

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->$outer:Lscala/collection/parallel/mutable/ParArray;

    iget-object v4, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->z$1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->op$1:Lscala/Function2;

    iget-object v6, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$scan$1;->targetarr$1:[Ljava/lang/Object;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;-><init>(Lscala/collection/parallel/mutable/ParArray;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;[Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    return-void
.end method

.class public final Lscala/collection/parallel/FutureTasks$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/FutureTasks;->scala$collection$parallel$FutureTasks$$compute$1(Lscala/collection/parallel/Task;ILscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;",
        "Lscala/concurrent/Future<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/FutureTasks;

.field private final depth$1:I

.field private final ec$1:Lscala/concurrent/ExecutionContext;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/ExecutionContext;I)V
    .locals 0

    .line 485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->$outer:Lscala/collection/parallel/FutureTasks;

    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->ec$1:Lscala/concurrent/ExecutionContext;

    iput p3, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->depth$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 485
    check-cast p1, Lscala/collection/parallel/Task;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$1;->apply(Lscala/collection/parallel/Task;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/Task;)Lscala/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/concurrent/Future<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->$outer:Lscala/collection/parallel/FutureTasks;

    iget v1, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->depth$1:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$1;->ec$1:Lscala/concurrent/ExecutionContext;

    invoke-virtual {v0, p1, v1, v2}, Lscala/collection/parallel/FutureTasks;->scala$collection$parallel$FutureTasks$$compute$1(Lscala/collection/parallel/Task;ILscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

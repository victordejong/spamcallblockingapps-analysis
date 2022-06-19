.class public final Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;
.super Lscala/runtime/AbstractFunction2;
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
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/concurrent/Future<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;",
        "Lscala/concurrent/Future<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;",
        "Lscala/concurrent/Future<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final ec$1:Lscala/concurrent/ExecutionContext;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/ExecutionContext;)V
    .locals 0

    .line 486
    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;->ec$1:Lscala/concurrent/ExecutionContext;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 486
    check-cast p1, Lscala/concurrent/Future;

    check-cast p2, Lscala/concurrent/Future;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;->apply(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;",
            "Lscala/concurrent/Future<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;)",
            "Lscala/concurrent/Future<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;"
        }
    .end annotation

    .line 488
    new-instance v0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1;-><init>(Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;Lscala/concurrent/Future;)V

    iget-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;->ec$1:Lscala/concurrent/ExecutionContext;

    invoke-interface {p1, v0, p2}, Lscala/concurrent/Future;->flatMap(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

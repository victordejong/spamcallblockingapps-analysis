.class public final Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;
.super Lscala/runtime/AbstractPartialFunction;
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
        "Lscala/runtime/AbstractPartialFunction<",
        "Lscala/util/Try<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final task$1:Lscala/collection/parallel/Task;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;Lscala/collection/parallel/Task;)V
    .locals 0

    .line 494
    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->task$1:Lscala/collection/parallel/Task;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 494
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->applyOrElse(Lscala/util/Try;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final applyOrElse(Lscala/util/Try;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Lscala/util/Try<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 494
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Success;

    .line 496
    iget-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->task$1:Lscala/collection/parallel/Task;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/Task;

    invoke-interface {v0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    .line 497
    iget-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->task$1:Lscala/collection/parallel/Task;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Task;

    invoke-interface {p1}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lscala/collection/parallel/Task;->result_$eq(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 498
    :cond_0
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/Failure;

    .line 499
    iget-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->task$1:Lscala/collection/parallel/Task;

    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 494
    :cond_1
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 494
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;->isDefinedAt(Lscala/util/Try;)Z

    move-result p1

    return p1
.end method

.method public final isDefinedAt(Lscala/util/Try;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;)Z"
        }
    .end annotation

    .line 494
    instance-of v0, p1, Lscala/util/Success;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    instance-of p1, p1, Lscala/util/Failure;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

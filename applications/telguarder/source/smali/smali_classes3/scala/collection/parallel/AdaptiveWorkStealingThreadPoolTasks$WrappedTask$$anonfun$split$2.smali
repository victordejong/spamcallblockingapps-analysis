.class public final Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2;
.super Lscala/runtime/AbstractFunction1;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;->split()Lscala/collection/Seq;
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
        "Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask<",
        "TR;TTp;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 456
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2;->$outer:Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p1, Lscala/collection/parallel/Task;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2;->apply(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2;->$outer:Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    invoke-virtual {v0}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;->scala$collection$parallel$AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

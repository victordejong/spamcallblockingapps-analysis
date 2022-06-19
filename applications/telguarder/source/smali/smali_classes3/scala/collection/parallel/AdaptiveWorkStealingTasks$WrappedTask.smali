.class public interface abstract Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
.super Ljava/lang/Object;
.source "Tasks.scala"

# interfaces
.implements Lscala/collection/parallel/Tasks$WrappedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/AdaptiveWorkStealingTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "WrappedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Tasks$WrappedTask<",
        "TR;TTp;>;"
    }
.end annotation


# virtual methods
.method public abstract compute()V
.end method

.method public abstract internal()V
.end method

.method public abstract next()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation
.end method

.method public abstract next_$eq(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract printChain()V
.end method

.method public abstract synthetic scala$collection$parallel$AdaptiveWorkStealingTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingTasks;
.end method

.method public abstract shouldWaitFor()Z
.end method

.method public abstract shouldWaitFor_$eq(Z)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract spawnSubtasks()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation
.end method

.method public abstract split()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;>;"
        }
    .end annotation
.end method

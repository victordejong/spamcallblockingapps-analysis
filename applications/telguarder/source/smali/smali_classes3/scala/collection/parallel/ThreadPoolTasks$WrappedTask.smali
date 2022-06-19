.class public interface abstract Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;
.super Ljava/lang/Object;
.source "Tasks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/collection/parallel/Tasks$WrappedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ThreadPoolTasks;
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
        "Ljava/lang/Runnable;",
        "Lscala/collection/parallel/Tasks$WrappedTask<",
        "TR;TTp;>;"
    }
.end annotation


# virtual methods
.method public abstract completed()Z
.end method

.method public abstract completed_$eq(Z)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract owned()Z
.end method

.method public abstract owned_$eq(Z)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract run()V
.end method

.method public abstract synthetic scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;
.end method

.method public abstract start()V
.end method

.method public abstract sync()V
.end method

.method public abstract tryCancel()Z
.end method

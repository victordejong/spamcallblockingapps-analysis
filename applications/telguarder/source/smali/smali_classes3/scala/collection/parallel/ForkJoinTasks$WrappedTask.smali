.class public interface abstract Lscala/collection/parallel/ForkJoinTasks$WrappedTask;
.super Ljava/lang/Object;
.source "Tasks.scala"

# interfaces
.implements Lscala/collection/parallel/Tasks$WrappedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ForkJoinTasks;
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
.method public abstract synthetic scala$collection$parallel$ForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/ForkJoinTasks;
.end method

.method public abstract start()V
.end method

.method public abstract sync()V
.end method

.method public abstract tryCancel()Z
.end method

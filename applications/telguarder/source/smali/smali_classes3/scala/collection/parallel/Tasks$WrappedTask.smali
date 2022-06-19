.class public interface abstract Lscala/collection/parallel/Tasks$WrappedTask;
.super Ljava/lang/Object;
.source "Tasks.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/Tasks;
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
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract body()Lscala/collection/parallel/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;"
        }
    .end annotation
.end method

.method public abstract compute()V
.end method

.method public abstract release()V
.end method

.method public abstract synthetic scala$collection$parallel$Tasks$WrappedTask$$$outer()Lscala/collection/parallel/Tasks;
.end method

.method public abstract split()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Tasks$WrappedTask<",
            "TR;TTp;>;>;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract sync()V
.end method

.method public abstract tryCancel()Z
.end method

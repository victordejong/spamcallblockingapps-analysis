.class final Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/forkjoin/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .line 1337
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 1338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    .line 1340
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1344
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    .line 1345
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1343
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method

.class final Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lscala/concurrent/forkjoin/ForkJoinTask<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Lscala/concurrent/forkjoin/ForkJoinTask;Ljava/lang/Throwable;Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 400
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .line 401
    iput-object p3, p0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->thrower:J

    return-void
.end method

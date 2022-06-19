.class final Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    .locals 1

    .line 884
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V

    return-object v0
.end method

.class final Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL

.field private static final waiterOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 515
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 516
    const-class v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    const-string v2, "item"

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->itemOffset:J

    const-string v2, "next"

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->nextOffset:J

    const-string v2, "waiter"

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiterOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 3

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 441
    iput-boolean p2, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 3

    .line 488
    iget-boolean v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 490
    iget-object p1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 432
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z
    .locals 6

    .line 427
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final forgetContents()V
    .locals 4

    .line 462
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 463
    sget-wide v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiterOffset:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final forgetNext()V
    .locals 3

    .line 449
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->nextOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final isMatched()Z
    .locals 4

    .line 471
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    iget-boolean v3, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method final isUnmatchedRequest()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final tryMatchData()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

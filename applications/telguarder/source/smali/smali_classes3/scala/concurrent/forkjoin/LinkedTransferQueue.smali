.class public Lscala/concurrent/forkjoin/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Lscala/concurrent/forkjoin/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;,
        Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lscala/concurrent/forkjoin/TransferQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 382
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lscala/concurrent/forkjoin/LinkedTransferQueue;->MP:Z

    .line 1311
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 1312
    const-class v1, Lscala/concurrent/forkjoin/LinkedTransferQueue;

    const-string v2, "head"

    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue;->headOffset:J

    const-string v2, "tail"

    .line 1315
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tailOffset:J

    const-string v2, "sweepVotes"

    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->sweepVotesOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1320
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 999
    invoke-direct {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;-><init>()V

    .line 1000
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private awaitMatch(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;",
            "Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_0

    .line 669
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 670
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 675
    :cond_1
    :goto_1
    iget-object v7, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v7, p3, :cond_2

    .line 678
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->forgetContents()V

    .line 679
    invoke-static {v7}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 681
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p4, :cond_4

    cmp-long v7, p5, v0

    if-gtz v7, :cond_4

    :cond_3
    invoke-virtual {p1, p3, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 683
    invoke-virtual {p0, p2, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->unsplice(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V

    return-object p3

    :cond_4
    if-gez v6, :cond_5

    .line 688
    iget-boolean v6, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v6}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->spinsFor(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Z)I

    move-result v6

    if-lez v6, :cond_1

    .line 689
    invoke-static {}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->current()Lscala/concurrent/forkjoin/ThreadLocalRandom;

    move-result-object v5

    goto :goto_1

    :cond_5
    if-lez v6, :cond_6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x40

    .line 693
    invoke-virtual {v5, v7}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextInt(I)I

    move-result v7

    if-nez v7, :cond_1

    .line 694
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 696
    :cond_6
    iget-object v7, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_7

    .line 697
    iput-object v4, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    .line 700
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v2, v7, v2

    sub-long/2addr p5, v2

    cmp-long v2, p5, v0

    if-lez v2, :cond_8

    .line 702
    invoke-static {p0, p5, p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    :cond_8
    move-wide v2, v7

    goto :goto_1

    .line 706
    :cond_9
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private casHead(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z
    .locals 6

    .line 544
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private casSweepVotes(II)Z
    .locals 6

    .line 548
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue;->sweepVotesOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method private casTail(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z
    .locals 6

    .line 540
    sget-object v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4

    .line 774
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_1

    .line 776
    iget-boolean v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 781
    :cond_1
    iget-object v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq v3, v0, :cond_2

    move-object v0, v3

    goto :goto_1

    .line 786
    :cond_2
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 6

    if-eqz p1, :cond_3

    .line 961
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 962
    iget-object v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 963
    iget-boolean v4, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    if-eq v3, v0, :cond_1

    .line 964
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 966
    invoke-virtual {p0, v2, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->unsplice(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez v3, :cond_1

    goto :goto_2

    .line 973
    :cond_1
    iget-object v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-ne v2, v0, :cond_2

    .line 975
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_2
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 757
    iget-object v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 758
    iget-boolean v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 760
    invoke-static {v2}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    return-object v1

    .line 756
    :cond_1
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->succ(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private firstOfMode(Z)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;
    .locals 3

    .line 744
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    iget-boolean v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    .line 744
    :cond_1
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->succ(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 1332
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1295
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1299
    :cond_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Z)I
    .locals 1

    .line 716
    sget-boolean v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 717
    iget-boolean v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    const/16 p0, 0xc0

    return p0

    .line 719
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x80

    return p0

    .line 721
    :cond_1
    iget-object p0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez p0, :cond_2

    const/16 p0, 0x40

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private sweep()V
    .locals 3

    .line 942
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v1, :cond_3

    .line 943
    invoke-virtual {v1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 946
    :cond_0
    iget-object v2, v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 950
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_0

    .line 952
    :cond_2
    invoke-virtual {v0, v1, v2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private tryAppend(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Z)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;
    .locals 5

    .line 631
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tail:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-object v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0, v2, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casHead(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 637
    :cond_1
    invoke-virtual {v0, p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 639
    :cond_2
    iget-object v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v3, :cond_5

    if-eq v0, v1, :cond_3

    .line 640
    iget-object v4, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tail:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq v1, v4, :cond_3

    move-object v1, v4

    move-object v2, v1

    goto :goto_1

    :cond_3
    if-eq v0, v3, :cond_4

    move-object v2, v3

    :cond_4
    :goto_1
    move-object v0, v2

    goto :goto_0

    .line 642
    :cond_5
    invoke-virtual {v0, v2, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 643
    iget-object v0, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_6
    if-eq v0, v1, :cond_8

    .line 649
    :goto_2
    iget-object p2, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tail:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-ne p2, v1, :cond_7

    invoke-direct {p0, v1, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casTail(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tail:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v1, :cond_8

    iget-object p1, v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_8

    goto :goto_2

    :cond_8
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1278
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1279
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1281
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    move-object v7, p0

    move-object v3, p1

    move v0, p2

    move v1, p3

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    .line 583
    :goto_0
    iget-object v4, v7, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_1
    move-object v5, v4

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_9

    .line 584
    iget-boolean v9, v4, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    .line 585
    iget-object v10, v4, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v10, v4, :cond_7

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ne v11, v9, :cond_7

    if-ne v9, v0, :cond_2

    goto :goto_6

    .line 589
    :cond_2
    invoke-virtual {v4, v10, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v0, v4

    :cond_3
    if-eq v0, v5, :cond_6

    .line 591
    iget-object v1, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    .line 592
    iget-object v2, v7, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-ne v2, v5, :cond_5

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    invoke-direct {p0, v5, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casHead(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 593
    invoke-virtual {v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_5

    .line 596
    :cond_5
    iget-object v5, v7, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v5, :cond_6

    iget-object v0, v5, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_3

    .line 600
    :cond_6
    :goto_5
    iget-object v0, v4, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 601
    invoke-static {v10}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 604
    :cond_7
    iget-object v6, v4, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq v4, v6, :cond_8

    move-object v4, v6

    goto :goto_2

    .line 605
    :cond_8
    iget-object v4, v7, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_1

    :cond_9
    :goto_6
    if-eqz v1, :cond_d

    if-nez v2, :cond_a

    .line 610
    new-instance v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    invoke-direct {v2, p1, p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 611
    :cond_a
    invoke-direct {p0, v2, p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->tryAppend(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Z)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    if-eq v1, v8, :cond_d

    const/4 v0, 0x3

    if-ne v1, v0, :cond_c

    const/4 v6, 0x1

    :cond_c
    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v3, p1

    move v4, v6

    move-wide/from16 v5, p4

    .line 615
    invoke-direct/range {v0 .. v6}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->awaitMatch(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1049
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1244
    :cond_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_0
    if-eqz v1, :cond_3

    .line 1245
    iget-object v2, v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1246
    iget-boolean v3, v1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 1247
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    .line 1244
    :cond_2
    invoke-virtual {p0, v1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->succ(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    const/4 v0, 0x0

    .line 1137
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1138
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 1135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 1150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1154
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1155
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 1152
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    const/4 v0, 0x0

    .line 1216
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 2

    const/4 v0, 0x0

    .line 1196
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->firstOfMode(Z)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1188
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1189
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    iget-boolean v0, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    xor-int/2addr v0, v1

    return v0

    .line 1188
    :cond_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->succ(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1175
    new-instance v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;-><init>(Lscala/concurrent/forkjoin/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1036
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1024
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1179
    invoke-direct {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 1124
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1118
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1010
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1231
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    .line 1212
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;
    .locals 1

    .line 735
    iget-object v0, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-ne p1, v0, :cond_0

    .line 736
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 1109
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1112
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1113
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1079
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1080
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1081
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1064
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1101
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1103
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1105
    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final unsplice(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V
    .locals 2

    .line 896
    invoke-virtual {p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->forgetContents()V

    if-eqz p1, :cond_6

    if-eq p1, p2, :cond_6

    .line 904
    iget-object v0, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-ne v0, p2, :cond_6

    .line 905
    iget-object v0, p2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_6

    .line 906
    invoke-virtual {p1, p2, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 909
    :cond_0
    :goto_0
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq v0, p1, :cond_6

    if-eq v0, p2, :cond_6

    if-nez v0, :cond_1

    goto :goto_1

    .line 912
    :cond_1
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_4

    .line 920
    iget-object v0, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq v0, p1, :cond_6

    iget-object p1, p2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eq p1, p2, :cond_6

    .line 922
    :cond_2
    iget p1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->sweepVotes:I

    const/16 p2, 0x20

    if-ge p1, p2, :cond_3

    add-int/lit8 p2, p1, 0x1

    .line 924
    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 927
    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 928
    invoke-direct {p0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->sweep()V

    goto :goto_1

    .line 914
    :cond_4
    iget-object v1, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-nez v1, :cond_5

    return-void

    :cond_5
    if-eq v1, v0, :cond_0

    .line 917
    invoke-direct {p0, v0, v1}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->casHead(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

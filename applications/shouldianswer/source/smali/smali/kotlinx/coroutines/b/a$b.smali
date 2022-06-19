.class public final Lkotlinx/coroutines/b/a$b;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field final synthetic a:Lkotlinx/coroutines/b/a;

.field private final b:Lkotlinx/coroutines/b/o;

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile spins:I

.field private volatile state:Lkotlinx/coroutines/b/a$c;

.field private volatile terminationState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/b/a$b;

    const-string v1, "terminationState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 603
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->setDaemon(Z)V

    .line 622
    new-instance v0, Lkotlinx/coroutines/b/o;

    invoke-direct {v0}, Lkotlinx/coroutines/b/o;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    .line 629
    sget-object v0, Lkotlinx/coroutines/b/a$c;->d:Lkotlinx/coroutines/b/a$c;

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->terminationState:I

    .line 660
    invoke-static {}, Lkotlinx/coroutines/b/a;->e()Lkotlinx/coroutines/internal/u;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 717
    invoke-static {}, Lkotlinx/coroutines/b/a;->d()I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    .line 719
    invoke-static {p1}, Lkotlinx/coroutines/b/a;->j(Lkotlinx/coroutines/b/a;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/b/a$b;->g:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/b/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 616
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;-><init>(Lkotlinx/coroutines/b/a;)V

    .line 617
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/b/a$b;->a(I)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/b/l;)V
    .locals 3

    .line 778
    sget-object v0, Lkotlinx/coroutines/b/l;->a:Lkotlinx/coroutines/b/l;

    if-eq p1, v0, :cond_3

    .line 779
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    .line 1024
    sget-object v0, Lkotlinx/coroutines/b/a;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 780
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    .line 782
    sget-object v0, Lkotlinx/coroutines/b/a$c;->e:Lkotlinx/coroutines/b/a$c;

    if-eq p1, v0, :cond_3

    .line 783
    sget-object v0, Lkotlinx/coroutines/b/a$c;->b:Lkotlinx/coroutines/b/a$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lkotlin/p;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BLOCKING state, but has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 784
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/b/a$c;->d:Lkotlinx/coroutines/b/a$c;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    :cond_3
    return-void
.end method

.method private final a(Lkotlinx/coroutines/b/l;J)V
    .locals 6

    .line 750
    sget-object v0, Lkotlinx/coroutines/b/l;->a:Lkotlinx/coroutines/b/l;

    if-eq p1, v0, :cond_1

    .line 755
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    .line 1023
    sget-object p2, Lkotlinx/coroutines/b/a;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v0, 0x200000

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 756
    sget-object p1, Lkotlinx/coroutines/b/a$c;->b:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {p1}, Lkotlinx/coroutines/b/a;->d(Lkotlinx/coroutines/b/a;)V

    :cond_0
    return-void

    .line 765
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {p1}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 768
    :cond_2
    sget-object p1, Lkotlinx/coroutines/b/m;->g:Lkotlinx/coroutines/b/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/n;->a()J

    move-result-wide v0

    sub-long p1, v0, p2

    .line 769
    sget-wide v2, Lkotlinx/coroutines/b/m;->a:J

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    .line 770
    iget-wide p1, p0, Lkotlinx/coroutines/b/a$b;->e:J

    sub-long p1, v0, p1

    sget-wide v2, Lkotlinx/coroutines/b/m;->a:J

    const/4 p3, 0x5

    int-to-long v4, p3

    mul-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    .line 772
    iput-wide v0, p0, Lkotlinx/coroutines/b/a$b;->e:J

    .line 773
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {p1}, Lkotlinx/coroutines/b/a;->d(Lkotlinx/coroutines/b/a;)V

    :cond_3
    return-void
.end method

.method private final a(J)Z
    .locals 1

    .line 848
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0, p0}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Lkotlinx/coroutines/b/a$b;)V

    .line 849
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 850
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private final b(Lkotlinx/coroutines/b/l;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 927
    iput-wide v0, p0, Lkotlinx/coroutines/b/a$b;->d:J

    const/4 v0, 0x0

    .line 928
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->h:I

    .line 929
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v2, Lkotlinx/coroutines/b/a$c;->c:Lkotlinx/coroutines/b/a$c;

    if-ne v1, v2, :cond_3

    .line 930
    sget-object v1, Lkotlinx/coroutines/b/l;->b:Lkotlinx/coroutines/b/l;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sget-boolean v1, Lkotlin/p;->a:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 931
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/b/a$c;->b:Lkotlinx/coroutines/b/a$c;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    .line 932
    invoke-static {}, Lkotlinx/coroutines/b/a;->d()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/b/a$b;->f:I

    .line 934
    :cond_3
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->spins:I

    return-void
.end method

.method private final l()V
    .locals 2

    .line 814
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->spins:I

    .line 815
    invoke-static {}, Lkotlinx/coroutines/b/a;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 816
    iput v1, p0, Lkotlinx/coroutines/b/a$b;->spins:I

    .line 817
    invoke-static {}, Lkotlinx/coroutines/b/a;->b()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 819
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    invoke-static {}, Lkotlinx/coroutines/b/a;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 820
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    mul-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {}, Lkotlinx/coroutines/b/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/f/d;->d(II)I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    .line 822
    :cond_1
    sget-object v0, Lkotlinx/coroutines/b/a$c;->c:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    .line 823
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/b/a$b;->a(J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final m()V
    .locals 6

    .line 828
    sget-object v0, Lkotlinx/coroutines/b/a$c;->c:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    .line 829
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 830
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->terminationState:I

    .line 832
    iget-wide v0, p0, Lkotlinx/coroutines/b/a$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v4}, Lkotlinx/coroutines/b/a;->e(Lkotlinx/coroutines/b/a;)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/b/a$b;->d:J

    .line 834
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->e(Lkotlinx/coroutines/b/a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/b/a$b;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 837
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/b/a$b;->d:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 838
    iput-wide v2, p0, Lkotlinx/coroutines/b/a$b;->d:J

    .line 839
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->n()V

    :cond_3
    return-void
.end method

.method private final n()V
    .locals 6

    .line 858
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->f(Lkotlinx/coroutines/b/a;)[Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    .line 1025
    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->c(Lkotlinx/coroutines/b/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 862
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->g(Lkotlinx/coroutines/b/a;)I

    move-result v1

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v2}, Lkotlinx/coroutines/b/a;->h(Lkotlinx/coroutines/b/a;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 864
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->o()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 869
    :cond_2
    :try_start_3
    sget-object v1, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    .line 876
    :cond_3
    :try_start_4
    iget v1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    .line 877
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/b/a$b;->a(I)V

    .line 885
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v2, p0, v1, v3}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Lkotlinx/coroutines/b/a$b;II)V

    .line 890
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    .line 1026
    sget-object v3, Lkotlinx/coroutines/b/a;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, v1, :cond_5

    .line 892
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v3}, Lkotlinx/coroutines/b/a;->f(Lkotlinx/coroutines/b/a;)[Lkotlinx/coroutines/b/a$b;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 893
    :cond_4
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v4}, Lkotlinx/coroutines/b/a;->f(Lkotlinx/coroutines/b/a;)[Lkotlinx/coroutines/b/a$b;

    move-result-object v4

    aput-object v3, v4, v1

    .line 894
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/b/a$b;->a(I)V

    .line 902
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v4, v3, v2, v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Lkotlinx/coroutines/b/a$b;II)V

    .line 907
    :cond_5
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->f(Lkotlinx/coroutines/b/a;)[Lkotlinx/coroutines/b/a$b;

    move-result-object v1

    const/4 v3, 0x0

    check-cast v3, Lkotlinx/coroutines/b/a$b;

    aput-object v3, v1, v2

    .line 908
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    .line 909
    sget-object v0, Lkotlinx/coroutines/b/a$c;->e:Lkotlinx/coroutines/b/a$c;

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    return-void

    :catchall_0
    move-exception v1

    .line 908
    monitor-exit v0

    throw v1
.end method

.method private final o()Z
    .locals 3

    .line 918
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/b/l;->b:Lkotlinx/coroutines/b/l;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/b/e;->a(Lkotlinx/coroutines/b/l;)Lkotlinx/coroutines/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v2}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/b/o;->a(Lkotlinx/coroutines/b/i;Lkotlinx/coroutines/b/e;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final p()Lkotlinx/coroutines/b/i;
    .locals 3

    .line 967
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->h(Lkotlinx/coroutines/b/a;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 968
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/b/l;->a:Lkotlinx/coroutines/b/l;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/b/e;->a(Lkotlinx/coroutines/b/l;)Lkotlinx/coroutines/b/i;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 969
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/o;->b()Lkotlinx/coroutines/b/i;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    .line 970
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/i;

    if-eqz v0, :cond_3

    return-object v0

    .line 971
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->q()Lkotlinx/coroutines/b/i;

    move-result-object v0

    return-object v0
.end method

.method private final q()Lkotlinx/coroutines/b/i;
    .locals 4

    .line 975
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->g(Lkotlinx/coroutines/b/a;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    .line 980
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/b/a$b;->h:I

    if-nez v2, :cond_1

    .line 981
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->b(I)I

    move-result v2

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v2, v0, :cond_2

    move v2, v3

    .line 984
    :cond_2
    iput v2, p0, Lkotlinx/coroutines/b/a$b;->h:I

    .line 985
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->f(Lkotlinx/coroutines/b/a;)[Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 986
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/b/a$b;

    if-eq v0, v2, :cond_3

    .line 987
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    iget-object v0, v0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v3}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/b/o;->a(Lkotlinx/coroutines/b/o;Lkotlinx/coroutines/b/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 988
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/o;->b()Lkotlinx/coroutines/b/i;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 610
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->setName(Ljava/lang/String;)V

    .line 613
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/b/a$c;)Z
    .locals 3

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    .line 701
    sget-object v1, Lkotlinx/coroutines/b/a$c;->a:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 702
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v2}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    if-eq v0, p1, :cond_2

    .line 703
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    :cond_2
    return v1
.end method

.method public final b(I)I
    .locals 2

    .line 794
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    .line 795
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    .line 796
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    add-int/lit8 v0, p1, -0x1

    and-int v1, v0, p1

    if-nez v1, :cond_0

    .line 800
    iget p1, p0, Lkotlinx/coroutines/b/a$b;->g:I

    and-int/2addr p1, v0

    return p1

    .line 802
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->g:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final b()Lkotlinx/coroutines/b/a;
    .locals 1

    .line 620
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/b/o;
    .locals 1

    .line 622
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/b/a$c;
    .locals 1

    .line 629
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 631
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->c:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 632
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->b:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 660
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 668
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->terminationState:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid terminationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 672
    :cond_1
    sget-object v0, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    :cond_2
    :goto_0
    return v2
.end method

.method public final i()Z
    .locals 3

    .line 686
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->a:Lkotlinx/coroutines/b/a$c;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    sget-object v0, Lkotlinx/coroutines/b/a$c;->a:Lkotlinx/coroutines/b/a$c;

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final j()V
    .locals 1

    .line 939
    invoke-static {}, Lkotlinx/coroutines/b/a;->d()I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->f:I

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->spins:I

    return-void
.end method

.method public final k()Lkotlinx/coroutines/b/i;
    .locals 2

    .line 944
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->p()Lkotlinx/coroutines/b/i;

    move-result-object v0

    return-object v0

    .line 953
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/o;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/o;->b()Lkotlinx/coroutines/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v0}, Lkotlinx/coroutines/b/a;->i(Lkotlinx/coroutines/b/a;)Lkotlinx/coroutines/b/e;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/b/l;->b:Lkotlinx/coroutines/b/l;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/b/e;->a(Lkotlinx/coroutines/b/l;)Lkotlinx/coroutines/b/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 724
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v2}, Lkotlinx/coroutines/b/a;->c(Lkotlinx/coroutines/b/a;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v3, Lkotlinx/coroutines/b/a$c;->e:Lkotlinx/coroutines/b/a$c;

    if-eq v2, v3, :cond_3

    .line 725
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a$b;->k()Lkotlinx/coroutines/b/i;

    move-result-object v2

    if-nez v2, :cond_1

    .line 728
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->state:Lkotlinx/coroutines/b/a$c;

    sget-object v2, Lkotlinx/coroutines/b/a$c;->a:Lkotlinx/coroutines/b/a$c;

    if-ne v1, v2, :cond_0

    .line 729
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->l()V

    goto :goto_1

    .line 731
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->m()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/b/i;->j()Lkotlinx/coroutines/b/l;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 738
    invoke-direct {p0, v3}, Lkotlinx/coroutines/b/a$b;->b(Lkotlinx/coroutines/b/l;)V

    move v1, v0

    .line 741
    :cond_2
    iget-wide v4, v2, Lkotlinx/coroutines/b/i;->f:J

    invoke-direct {p0, v3, v4, v5}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/l;J)V

    .line 742
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/a;

    invoke-static {v4, v2}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Lkotlinx/coroutines/b/i;)V

    .line 743
    invoke-direct {p0, v3}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/l;)V

    goto :goto_0

    .line 746
    :cond_3
    sget-object v0, Lkotlinx/coroutines/b/a$c;->e:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    return-void
.end method

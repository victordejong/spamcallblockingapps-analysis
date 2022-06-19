.class public abstract Lkotlinx/coroutines/bg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/bb;
.implements Lkotlinx/coroutines/internal/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/bg$c;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/bb;",
        "Lkotlinx/coroutines/internal/ab;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u0007J\u0008\u0010$\u001a\u00020%H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "nanoTime",
        "",
        "(J)V",
        "_heap",
        "",
        "value",
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "heap",
        "getHeap",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "setHeap",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "compareTo",
        "other",
        "dispose",
        "",
        "scheduleTask",
        "now",
        "delayed",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "timeToExecute",
        "",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field public b:J

.field private c:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/bg$c;->b:J

    const/4 p1, -0x1

    .line 417
    iput p1, p0, Lkotlinx/coroutines/bg$c;->c:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JLkotlinx/coroutines/bg$d;Lkotlinx/coroutines/bg;)I
    .locals 11

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/bi;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    .line 433
    :cond_0
    :try_start_1
    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/internal/aa;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/ab;

    .line 531
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    :try_start_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/aa;->d()Lkotlinx/coroutines/internal/ab;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/bg$c;

    .line 434
    invoke-static {p4}, Lkotlinx/coroutines/bg;->a(Lkotlinx/coroutines/bg;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v4

    :cond_1
    const-wide/16 v5, 0x0

    if-nez v3, :cond_2

    .line 447
    :try_start_4
    iput-wide p1, p3, Lkotlinx/coroutines/bg$d;->a:J

    goto :goto_1

    .line 454
    :cond_2
    iget-wide v7, v3, Lkotlinx/coroutines/bg$c;->b:J

    sub-long v9, v7, p1

    cmp-long p4, v9, v5

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move-wide p1, v7

    .line 458
    :goto_0
    iget-wide v7, p3, Lkotlinx/coroutines/bg$d;->a:J

    sub-long v7, p1, v7

    cmp-long p4, v7, v5

    if-lez p4, :cond_4

    iput-wide p1, p3, Lkotlinx/coroutines/bg$d;->a:J

    .line 467
    :cond_4
    :goto_1
    iget-wide p1, p0, Lkotlinx/coroutines/bg$c;->b:J

    iget-wide v7, p3, Lkotlinx/coroutines/bg$d;->a:J

    sub-long/2addr p1, v7

    cmp-long p4, p1, v5

    if-gez p4, :cond_5

    iget-wide p1, p3, Lkotlinx/coroutines/bg$d;->a:J

    iput-wide p1, p0, Lkotlinx/coroutines/bg$c;->b:J

    .line 2112
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    invoke-interface {v1}, Lkotlinx/coroutines/internal/ab;->b()Lkotlinx/coroutines/internal/aa;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 2113
    :cond_8
    :goto_3
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/aa;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/ab;->a(Lkotlinx/coroutines/internal/aa;)V

    .line 3142
    iget-object p1, v0, Lkotlinx/coroutines/internal/aa;->b:[Lkotlinx/coroutines/internal/ab;

    if-nez p1, :cond_9

    const/4 p1, 0x4

    new-array p1, p1, [Lkotlinx/coroutines/internal/ab;

    .line 3144
    iput-object p1, v0, Lkotlinx/coroutines/internal/aa;->b:[Lkotlinx/coroutines/internal/ab;

    goto :goto_4

    .line 4030
    :cond_9
    iget p3, v0, Lkotlinx/coroutines/internal/aa;->_size:I

    .line 3145
    array-length p4, p1

    if-lt p3, p4, :cond_a

    .line 5030
    iget p3, v0, Lkotlinx/coroutines/internal/aa;->_size:I

    mul-int/lit8 p3, p3, 0x2

    .line 3145
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, [Lkotlinx/coroutines/internal/ab;

    iput-object p3, v0, Lkotlinx/coroutines/internal/aa;->b:[Lkotlinx/coroutines/internal/ab;

    check-cast p1, [Lkotlinx/coroutines/internal/ab;

    .line 6030
    :cond_a
    :goto_4
    iget p3, v0, Lkotlinx/coroutines/internal/aa;->_size:I

    add-int/lit8 p4, p3, 0x1

    .line 6031
    iput p4, v0, Lkotlinx/coroutines/internal/aa;->_size:I

    .line 2116
    aput-object v1, p1, p3

    .line 2117
    invoke-interface {v1, p3}, Lkotlinx/coroutines/internal/ab;->a(I)V

    .line 2118
    invoke-virtual {v0, p3}, Lkotlinx/coroutines/internal/aa;->b(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 470
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 532
    :try_start_6
    monitor-exit v0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;

    .line 476
    invoke-static {}, Lkotlinx/coroutines/bi;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 478
    :cond_0
    :try_start_1
    instance-of v1, v0, Lkotlinx/coroutines/bg$d;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/bg$d;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/ab;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bg$d;->a(Lkotlinx/coroutines/internal/ab;)Z

    .line 479
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/bi;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 0

    .line 417
    iput p1, p0, Lkotlinx/coroutines/bg$c;->c:I

    return-void
.end method

.method public final a(Lkotlinx/coroutines/internal/aa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/aa<",
            "*>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/bi;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 414
    iput-object p1, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;

    return-void

    .line 413
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final b()Lkotlinx/coroutines/internal/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/aa<",
            "*>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lkotlinx/coroutines/bg$c;->a:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/aa;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/aa;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 417
    iget v0, p0, Lkotlinx/coroutines/bg$c;->c:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 401
    check-cast p1, Lkotlinx/coroutines/bg$c;

    .line 1420
    iget-wide v0, p0, Lkotlinx/coroutines/bg$c;->b:J

    iget-wide v2, p1, Lkotlinx/coroutines/bg$c;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delayed[nanos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlinx/coroutines/bg$c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/lb/video_trimmer_library/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/video_trimmer_library/b/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\nJ\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor;",
        "",
        "()V",
        "CURRENT_SERIAL",
        "Ljava/lang/ThreadLocal;",
        "",
        "DEFAULT_EXECUTOR",
        "Ljava/util/concurrent/Executor;",
        "TASKS",
        "Ljava/util/ArrayList;",
        "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;",
        "executor",
        "cancelAll",
        "",
        "id",
        "mayInterruptIfRunning",
        "",
        "directExecute",
        "Ljava/util/concurrent/Future;",
        "runnable",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "execute",
        "task",
        "hasSerialRunning",
        "serial",
        "take",
        "Task",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final a:Lcom/lb/video_trimmer_library/b/a;

.field private static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lb/video_trimmer_library/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/lb/video_trimmer_library/b/a;

    invoke-direct {v0}, Lcom/lb/video_trimmer_library/b/a;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "Executors.newScheduledTh\u2026().availableProcessors())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 27
    sput-object v0, Lcom/lb/video_trimmer_library/b/a;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/lb/video_trimmer_library/b/a;->c:Ljava/util/concurrent/Executor;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/a;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    .line 25
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->e:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/String;)Lcom/lb/video_trimmer_library/b/a$a;
    .locals 4

    .line 12115
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 12117
    sget-object v2, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lb/video_trimmer_library/b/a$a;

    .line 12157
    iget-object v3, v3, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    .line 12117
    invoke-static {p0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12118
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lb/video_trimmer_library/b/a$a;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/ArrayList;
    .locals 1

    .line 25
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/lb/video_trimmer_library/b/a$a;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    iget-object v0, p1, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2157
    iget-object v0, p1, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    .line 3099
    sget-object v3, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lb/video_trimmer_library/b/a$a;

    .line 3162
    iget-boolean v5, v4, Lcom/lb/video_trimmer_library/b/a$a;->c:Z

    if-eqz v5, :cond_0

    .line 4157
    iget-object v4, v4, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    .line 3100
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 4162
    :cond_2
    iput-boolean v1, p1, Lcom/lb/video_trimmer_library/b/a$a;->c:Z

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/lang/Runnable;

    .line 5159
    iget-wide v3, p1, Lcom/lb/video_trimmer_library/b/a$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 6050
    sget-object v1, Lcom/lb/video_trimmer_library/b/a;->c:Ljava/util/concurrent/Executor;

    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_3

    .line 6053
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Future;

    goto :goto_1

    .line 6051
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The executor set does not support scheduling"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 6055
    :cond_4
    sget-object v1, Lcom/lb/video_trimmer_library/b/a;->c:Ljava/util/concurrent/Executor;

    instance-of v3, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_5

    .line 6056
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_1

    .line 6059
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6157
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/lb/video_trimmer_library/b/a$a;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 7157
    iget-object v0, p1, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 7177
    :cond_7
    iget-object v0, p1, Lcom/lb/video_trimmer_library/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8163
    iput-object v2, p1, Lcom/lb/video_trimmer_library/b/a$a;->d:Ljava/util/concurrent/Future;

    .line 86
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 135
    sget-object v1, Lcom/lb/video_trimmer_library/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "TASKS[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/lb/video_trimmer_library/b/a$a;

    .line 9157
    iget-object v3, v2, Lcom/lb/video_trimmer_library/b/a$a;->f:Ljava/lang/String;

    .line 136
    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9163
    iget-object v3, v2, Lcom/lb/video_trimmer_library/b/a$a;->d:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_2

    .line 10163
    iget-object v1, v2, Lcom/lb/video_trimmer_library/b/a$a;->d:Ljava/util/concurrent/Future;

    if-nez v1, :cond_1

    .line 138
    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_1
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10177
    iget-object v1, v2, Lcom/lb/video_trimmer_library/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/lb/video_trimmer_library/b/a$a;->b()V

    goto :goto_0

    .line 11162
    :cond_2
    iget-boolean v2, v2, Lcom/lb/video_trimmer_library/b/a$a;->c:Z

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TASKS.removeAt(i)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

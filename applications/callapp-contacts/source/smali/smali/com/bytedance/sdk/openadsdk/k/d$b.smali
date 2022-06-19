.class final Lcom/bytedance/sdk/openadsdk/k/d$b;
.super Ljava/util/concurrent/LinkedBlockingDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingDeque<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/k/d$1;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 485
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 486
    monitor-exit p0

    return-void

    .line 483
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "executor argument can\'t be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only call setExecutor() once!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 486
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 491
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    .line 494
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-lt v1, v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 497
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    const/4 p1, 0x0

    .line 500
    monitor-exit p0

    return p1

    .line 502
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/d$b;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 502
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

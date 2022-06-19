.class public Lcom/verizon/ads/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Landroid/os/Handler;

.field private static final c:Ljava/util/concurrent/ExecutorService;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const-class v0, Lcom/verizon/ads/utils/ThreadUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    .line 31
    sput-object v1, Lcom/verizon/ads/utils/ThreadUtils;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Initializing ThreadUtils"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/verizon/ads/utils/ThreadUtils;->b:Landroid/os/Handler;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/utils/ThreadUtils;->d:Landroid/os/Handler;

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 23
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 23
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic c()Lcom/verizon/ads/Logger;
    .locals 1

    .line 23
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .line 23
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static getActiveWorkerThreadCount()I
    .locals 1

    .line 194
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public static isUiThread()Z
    .locals 2

    .line 187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOffUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 88
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error executing runnable"

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;
    .locals 1

    .line 127
    new-instance v0, Lcom/verizon/ads/utils/ThreadUtils$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/utils/ThreadUtils$1;-><init>(Ljava/lang/Runnable;)V

    .line 143
    sget-object p0, Lcom/verizon/ads/utils/ThreadUtils;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 110
    :try_start_0
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 112
    sget-object v0, Lcom/verizon/ads/utils/ThreadUtils;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error executing runnable"

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;
    .locals 1

    .line 159
    new-instance v0, Lcom/verizon/ads/utils/ThreadUtils$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;)V

    .line 179
    sget-object p0, Lcom/verizon/ads/utils/ThreadUtils;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

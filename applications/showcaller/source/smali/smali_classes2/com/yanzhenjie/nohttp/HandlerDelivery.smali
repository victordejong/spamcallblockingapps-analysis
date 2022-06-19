.class public final Lcom/yanzhenjie/nohttp/HandlerDelivery;
.super Ljava/lang/Object;
.source "HandlerDelivery.java"


# static fields
.field private static instance:Lcom/yanzhenjie/nohttp/HandlerDelivery;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;
    .locals 4

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->instance:Lcom/yanzhenjie/nohttp/HandlerDelivery;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yanzhenjie/nohttp/HandlerDelivery;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/nohttp/HandlerDelivery;->instance:Lcom/yanzhenjie/nohttp/HandlerDelivery;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/yanzhenjie/nohttp/HandlerDelivery;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/HandlerDelivery;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/yanzhenjie/nohttp/HandlerDelivery;->instance:Lcom/yanzhenjie/nohttp/HandlerDelivery;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->instance:Lcom/yanzhenjie/nohttp/HandlerDelivery;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HandlerDelivery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

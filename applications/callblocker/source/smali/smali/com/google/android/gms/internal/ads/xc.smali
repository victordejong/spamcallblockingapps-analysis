.class public final Lcom/google/android/gms/internal/ads/xc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->b:Landroid/os/Handler;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/xc;->c:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 3

    .prologue
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xc;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/xc;->c:I

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 9
    const-string/jumbo v0, "Starting the looper thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LooperProvider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cnz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->b:Landroid/os/Handler;

    .line 13
    const-string/jumbo v0, "Looper thread started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 17
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/xc;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/xc;->c:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 14
    :cond_0
    const-string/jumbo v0, "Resuming the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->a:Landroid/os/HandlerThread;

    const-string/jumbo v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->b:Landroid/os/Handler;

    return-object v0
.end method

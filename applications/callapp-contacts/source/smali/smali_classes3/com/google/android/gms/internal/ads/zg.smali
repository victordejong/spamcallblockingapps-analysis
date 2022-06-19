.class final Lcom/google/android/gms/internal/ads/zg;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "SourceFile"


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1001
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxf;->a()Lcom/google/android/gms/internal/ads/cxd;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cxd;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

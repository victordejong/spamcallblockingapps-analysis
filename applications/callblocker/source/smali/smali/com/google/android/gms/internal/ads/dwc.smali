.class final Lcom/google/android/gms/internal/ads/dwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/dwa;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dvu;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwa;Lcom/google/android/gms/internal/ads/dvu;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dwc;->b:Lcom/google/android/gms/internal/ads/dvu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwc;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->b(Lcom/google/android/gms/internal/ads/dwa;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->c(Lcom/google/android/gms/internal/ads/dwa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit v1

    .line 14
    :goto_0
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dwa;Z)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->d(Lcom/google/android/gms/internal/ads/dwa;)Lcom/google/android/gms/internal/ads/dvv;

    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    monitor-exit v1

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v3, Lcom/google/android/gms/internal/ads/dwf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwc;->b:Lcom/google/android/gms/internal/ads/dvu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dwc;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/google/android/gms/internal/ads/dwf;-><init>(Lcom/google/android/gms/internal/ads/dwc;Lcom/google/android/gms/internal/ads/dvv;Lcom/google/android/gms/internal/ads/dvu;Lcom/google/android/gms/internal/ads/yo;)V

    .line 10
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwc;->c:Lcom/google/android/gms/internal/ads/yo;

    new-instance v3, Lcom/google/android/gms/internal/ads/dwe;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwc;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/dwe;-><init>(Lcom/google/android/gms/internal/ads/yo;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 13
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.class final Lcom/google/android/gms/internal/ads/xl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/yl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->k(Lcom/google/android/gms/internal/ads/yl;Lcom/google/android/gms/internal/ads/cm;)Lcom/google/android/gms/internal/ads/cm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->b(Lcom/google/android/gms/internal/ads/yl;)Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->c(Lcom/google/android/gms/internal/ads/yl;Lcom/google/android/gms/internal/ads/am;)Lcom/google/android/gms/internal/ads/am;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

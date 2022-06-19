.class public final Lcom/google/android/gms/internal/ads/rm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:[B

.field private b:I

.field final synthetic c:Lcom/google/android/gms/internal/ads/tm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/tm;[BLcom/google/android/gms/internal/ads/sm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rm;->a:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/tm;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/ab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rm;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->q4([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/ab;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->V3(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/ab;

    iget v1, p0, Lcom/google/android/gms/internal/ads/rm;->b:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->M4(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/ab;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->I3([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm;->c:Lcom/google/android/gms/internal/ads/tm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ab;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/rm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/rm;->b:I

    return-object p0
.end method

.class final Lcom/google/android/gms/internal/ads/xn;
.super Lcom/google/android/gms/ads/internal/util/z;
.source ""


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ads/zn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xn;->c:Lcom/google/android/gms/internal/ads/zn;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/p3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xn;->c:Lcom/google/android/gms/internal/ads/zn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zn;->q(Lcom/google/android/gms/internal/ads/zn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xn;->c:Lcom/google/android/gms/internal/ads/zn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zn;->r(Lcom/google/android/gms/internal/ads/zn;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xn;->c:Lcom/google/android/gms/internal/ads/zn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zn;->s(Lcom/google/android/gms/internal/ads/zn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->m()Lcom/google/android/gms/internal/ads/s3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xn;->c:Lcom/google/android/gms/internal/ads/zn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zn;->t(Lcom/google/android/gms/internal/ads/zn;)Lcom/google/android/gms/internal/ads/r3;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/s3;->a(Lcom/google/android/gms/internal/ads/r3;Lcom/google/android/gms/internal/ads/p3;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

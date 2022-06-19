.class final Lcom/google/android/gms/internal/ads/lz2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/r03;

.field final synthetic e:I

.field final synthetic f:Lcom/google/android/gms/internal/ads/nz2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/r03;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lz2;->d:Lcom/google/android/gms/internal/ads/r03;

    iput p3, p0, Lcom/google/android/gms/internal/ads/lz2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz2;->d:Lcom/google/android/gms/internal/ads/r03;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/nz2;->S(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/fz2;->cancel(Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    iget v2, p0, Lcom/google/android/gms/internal/ads/lz2;->e:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lz2;->d:Lcom/google/android/gms/internal/ads/r03;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/nz2;->U(Lcom/google/android/gms/internal/ads/nz2;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/nz2;->V(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lz2;->f:Lcom/google/android/gms/internal/ads/nz2;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/nz2;->V(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 8
    throw v1
.end method

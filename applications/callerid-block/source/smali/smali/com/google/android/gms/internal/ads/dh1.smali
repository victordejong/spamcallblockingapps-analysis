.class final Lcom/google/android/gms/internal/ads/dh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/u71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/u71<",
        "Lcom/google/android/gms/internal/ads/n10;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/eh1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eh1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/n10;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eh1;->j:Lcom/google/android/gms/internal/ads/n10;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u30;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/eh1;->j:Lcom/google/android/gms/internal/ads/n10;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/n10;->g(Lcom/google/android/gms/internal/ads/lu2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/eh1;->A6(Lcom/google/android/gms/internal/ads/eh1;)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/o10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/eh1;->A6(Lcom/google/android/gms/internal/ads/eh1;)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/o10;-><init>(Lcom/google/android/gms/internal/ads/n10;Lcom/google/android/gms/internal/ads/w;Lcom/google/android/gms/internal/ads/wg1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wg1;->g(Lcom/google/android/gms/internal/ads/su2;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dh1;->a:Lcom/google/android/gms/internal/ads/eh1;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/eh1;->j:Lcom/google/android/gms/internal/ads/n10;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

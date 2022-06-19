.class final Lcom/google/android/gms/internal/ads/l61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/u71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/u71<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/m61;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/m61;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/u10;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/m61;->z6(Lcom/google/android/gms/internal/ads/m61;)Lcom/google/android/gms/internal/ads/u10;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/m61;->z6(Lcom/google/android/gms/internal/ads/m61;)Lcom/google/android/gms/internal/ads/u10;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u30;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/m61;->A6(Lcom/google/android/gms/internal/ads/m61;Lcom/google/android/gms/internal/ads/u10;)Lcom/google/android/gms/internal/ads/u10;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m61;->z6(Lcom/google/android/gms/internal/ads/m61;)Lcom/google/android/gms/internal/ads/u10;

    move-result-object p1

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l61;->a:Lcom/google/android/gms/internal/ads/m61;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/m61;->A6(Lcom/google/android/gms/internal/ads/m61;Lcom/google/android/gms/internal/ads/u10;)Lcom/google/android/gms/internal/ads/u10;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class final Lcom/google/android/gms/internal/ads/t50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xi0;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/c60;

.field final synthetic b:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t50;->b:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t50;->a:Lcom/google/android/gms/internal/ads/c60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t50;->b:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t50;->b:Lcom/google/android/gms/internal/ads/d60;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/d60;->d(Lcom/google/android/gms/internal/ads/d60;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t50;->a:Lcom/google/android/gms/internal/ads/c60;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c60;->h()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

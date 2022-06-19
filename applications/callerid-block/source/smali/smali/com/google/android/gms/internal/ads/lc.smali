.class final Lcom/google/android/gms/internal/ads/lc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/uc;

.field final synthetic b:Lcom/google/android/gms/internal/ads/vc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lc;->b:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->b:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->f(Lcom/google/android/gms/internal/ads/vc;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lc;->b:Lcom/google/android/gms/internal/ads/vc;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/vc;->g(Lcom/google/android/gms/internal/ads/vc;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uc;->h()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

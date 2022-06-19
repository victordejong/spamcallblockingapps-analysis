.class final Lcom/google/android/gms/internal/ads/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zr;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kq;->b:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kq;->a:Lcom/google/android/gms/internal/ads/kz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kq;->b:Lcom/google/android/gms/internal/ads/ke;

    .line 1077
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kq;->b:Lcom/google/android/gms/internal/ads/ke;

    const/4 v2, 0x1

    .line 1078
    iput v2, v1, Lcom/google/android/gms/internal/ads/ke;->g:I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kq;->a:Lcom/google/android/gms/internal/ads/kz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->c()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

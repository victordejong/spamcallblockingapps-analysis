.class public final Lcom/google/android/gms/internal/ads/bsy;
.super Lcom/google/android/gms/internal/ads/dze;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bti;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/chj;Lcom/google/android/gms/internal/ads/azg;Lcom/google/android/gms/internal/ads/dza;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dze;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/btk;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/btk;-><init>(Lcom/google/android/gms/internal/ads/azg;)V

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/btk;->a(Lcom/google/android/gms/internal/ads/dza;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/btr;

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/btr;-><init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/btk;Lcom/google/android/gms/internal/ads/chj;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/chj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bti;-><init>(Lcom/google/android/gms/internal/ads/btm;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dya;)V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    .line 9
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/bti;->a(Lcom/google/android/gms/internal/ads/dya;I)V

    .line 10
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;I)V
    .locals 1

    .prologue
    .line 11
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bti;->a(Lcom/google/android/gms/internal/ads/dya;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bti;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bti;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsy;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bti;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/google/android/gms/internal/ads/dyw;
.super Lcom/google/android/gms/ads/b;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/ads/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->a()V

    .line 25
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/b;->a(I)V

    .line 13
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 2

    .prologue
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->b()V

    .line 21
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->c()V

    .line 9
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->d()V

    .line 17
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public final Lcom/google/android/gms/internal/ads/due;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/duh;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "activityTrackerLock"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "activityTrackerLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/due;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duh;->a()Landroid/app/Activity;

    move-result-object v0

    monitor-exit v1

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/due;->c:Z

    if-nez v0, :cond_3

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    move-object v0, p1

    .line 10
    :cond_0
    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_4

    .line 11
    check-cast v0, Landroid/app/Application;

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    const-string/jumbo v0, "Can not cast Context to Application"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 14
    monitor-exit v2

    .line 19
    :goto_1
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/duh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/duh;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/duh;->a(Landroid/app/Application;Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/due;->c:Z

    .line 19
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/duj;)V
    .locals 2

    .prologue
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/duh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/duh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/duh;->a(Lcom/google/android/gms/internal/ads/duj;)V

    .line 24
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duh;->b()Landroid/content/Context;

    move-result-object v0

    monitor-exit v1

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/duj;)V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/due;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    if-nez v0, :cond_0

    .line 27
    monitor-exit v1

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/due;->b:Lcom/google/android/gms/internal/ads/duh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/duh;->b(Lcom/google/android/gms/internal/ads/duj;)V

    .line 29
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

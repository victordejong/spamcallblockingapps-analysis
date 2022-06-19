.class public final Lcom/google/android/gms/ads/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/p$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/eba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private c:Lcom/google/android/gms/ads/p$a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
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

    iput-object v0, p0, Lcom/google/android/gms/ads/p;->a:Ljava/lang/Object;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/eba;
    .locals 2

    .prologue
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/ads/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/p;->b:Lcom/google/android/gms/internal/ads/eba;

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/p$a;)V
    .locals 3

    .prologue
    .line 92
    const-string/jumbo v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/ads/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/p;->c:Lcom/google/android/gms/ads/p$a;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/ads/p;->b:Lcom/google/android/gms/internal/ads/eba;

    if-nez v0, :cond_0

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/p;->b:Lcom/google/android/gms/internal/ads/eba;

    new-instance v2, Lcom/google/android/gms/internal/ads/eco;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/eco;-><init>(Lcom/google/android/gms/ads/p$a;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/eba;->a(Lcom/google/android/gms/internal/ads/ebb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_3
    const-string/jumbo v2, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eba;)V
    .locals 2

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/p;->b:Lcom/google/android/gms/internal/ads/eba;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/p;->c:Lcom/google/android/gms/ads/p$a;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/p;->c:Lcom/google/android/gms/ads/p$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/p;->a(Lcom/google/android/gms/ads/p$a;)V

    .line 8
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

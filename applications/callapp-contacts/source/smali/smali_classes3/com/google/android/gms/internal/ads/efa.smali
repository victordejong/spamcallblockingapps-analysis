.class final Lcom/google/android/gms/internal/ads/efa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/content/Context;

.field c:Z

.field d:J

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/efc;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/efo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efa;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efa;->g:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->h:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->i:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efa;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/efa;)Ljava/lang/Object;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/efa;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/efa;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/efa;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/efa;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/efa;)Z
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efa;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/efa;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/efa;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->a:Landroid/app/Activity;

    .line 95
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/efc;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/efc;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 75
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->a:Landroid/app/Activity;

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->i:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 80
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/efo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/efo;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 86
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    .line 87
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, ""

    .line 89
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/efa;->a(Landroid/app/Activity;)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/efa;->g:Z

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 68
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cxg;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/eez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/eez;-><init>(Lcom/google/android/gms/internal/ads/efa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/efa;->j:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/efa;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    .line 65
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/efa;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/efa;->g:Z

    .line 31
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/efa;->f:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efa;->f:Z

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->j:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/efa;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efa;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/efa;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/efa;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/efc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/efc;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, ""

    .line 50
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "App is still foreground."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 53
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/efa;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

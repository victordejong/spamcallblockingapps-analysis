.class final Lcom/google/android/gms/internal/ads/duh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/duj;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/duu;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private j:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->d:Z

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/duh;->e:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->g:Ljava/util/List;

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/duh;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/duh;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.ads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/duh;->a:Landroid/app/Activity;

    .line 95
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

.method static synthetic a(Lcom/google/android/gms/internal/ads/duh;Z)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/duh;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/duh;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/duh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->i:Z

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/duh;->a(Landroid/app/Activity;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/duh;->b:Landroid/content/Context;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ao:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/duh;->j:J

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->i:Z

    .line 17
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/duj;)V
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
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
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/duj;)V
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 75
    monitor-exit v1

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->a:Landroid/app/Activity;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->g:Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/duu;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v3

    const-string/jumbo v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    .line 87
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/duh;->a(Landroid/app/Activity;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/duu;->b(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v3

    const-string/jumbo v4, "AppActivityTracker.ActivityListener.onActivityPaused"

    .line 61
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->e:Z

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dug;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dug;-><init>(Lcom/google/android/gms/internal/ads/duh;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/duh;->h:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/duh;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/duh;->a(Landroid/app/Activity;)V

    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/duh;->e:Z

    .line 31
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/duh;->d:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 32
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/duh;->d:Z

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duh;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duh;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/duu;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v4

    const-string/jumbo v5, "AppActivityTracker.ActivityListener.onActivityResumed"

    .line 41
    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v4, ""

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duh;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duj;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    const/4 v3, 0x1

    :try_start_4
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/duj;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :try_start_5
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 52
    :cond_3
    const-string/jumbo v0, "App is still foreground."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 53
    :cond_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/duh;->a(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

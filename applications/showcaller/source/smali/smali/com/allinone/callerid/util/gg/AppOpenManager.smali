.class public Lcom/allinone/callerid/util/gg/AppOpenManager;
.super Ljava/lang/Object;
.source "AppOpenManager.java"

# interfaces
.implements Landroidx/lifecycle/g;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public d:Lcom/google/android/gms/ads/u/a;

.field private e:Lcom/google/android/gms/ads/u/a$a;

.field private final f:Lcom/allinone/callerid/main/EZCallApplication;

.field private g:Landroid/app/Activity;

.field private h:J

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/main/EZCallApplication;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->h:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->f:Lcom/allinone/callerid/main/EZCallApplication;

    .line 6
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    invoke-static {}, Landroidx/lifecycle/p;->j()Landroidx/lifecycle/h;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/g;)V

    return-void
.end method

.method static synthetic h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/allinone/callerid/util/gg/AppOpenManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->h:J

    return-wide p1
.end method

.method private k()Lcom/google/android/gms/ads/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method private n(J)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long p1, p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public j()V
    .locals 5

    :try_start_0
    const-string v0, "AppOpenManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdAvailable():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    new-instance v1, Lcom/allinone/callerid/util/gg/AppOpenManager$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/gg/AppOpenManager$b;-><init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/u/a;->b(Lcom/google/android/gms/ads/i;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/u/a;->c(Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/util/gg/AppOpenManager$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/gg/AppOpenManager$c;-><init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V

    iput-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->e:Lcom/google/android/gms/ads/u/a$a;

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->k()Lcom/google/android/gms/ads/e;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->f:Lcom/allinone/callerid/main/EZCallApplication;

    const-string v2, "ca-app-pub-5825926894918682/8693450802"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->e:Lcom/google/android/gms/ads/u/a$a;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/u/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;ILcom/google/android/gms/ads/u/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public l()Z
    .locals 4

    const-wide/16 v0, 0x4

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->n(J)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iput-boolean v3, v2, Lcom/allinone/callerid/main/EZCallApplication;->k:Z

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->n(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public m()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AppOpenManager"

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Will show ad."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "currentActivity:"

    if-eqz v0, :cond_0

    .line 5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasEntered:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/allinone/callerid/start/StartActivity;->u:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/start/StartActivity;->u:Z

    if-nez v0, :cond_3

    const-string v0, "StartActivity"

    iget-object v3, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/allinone/callerid/util/gg/AppOpenManager$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/gg/AppOpenManager$d;-><init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/u/a;->b(Lcom/google/android/gms/ads/i;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/u/a;->c(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v0, "first install not show ad"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Can not show ad."

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->j()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->i:Z

    const-string v1, "onStart"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart_currentActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartActivity"

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager;->i:Z

    .line 7
    :cond_0
    new-instance v0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/gg/AppOpenManager$a;-><init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onStop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

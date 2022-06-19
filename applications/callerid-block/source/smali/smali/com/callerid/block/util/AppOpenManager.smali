.class public Lcom/callerid/block/util/AppOpenManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/g;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public b:Lcom/google/android/gms/ads/t/a;

.field private c:Lcom/google/android/gms/ads/t/a$a;

.field private final d:Lcom/callerid/block/main/EZCallApplication;

.field private e:Landroid/app/Activity;

.field private f:J

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/callerid/block/main/EZCallApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/callerid/block/util/AppOpenManager;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/util/AppOpenManager;->g:Z

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager;->d:Lcom/callerid/block/main/EZCallApplication;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Landroidx/lifecycle/p;->k()Landroidx/lifecycle/h;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/g;)V

    return-void
.end method

.method static synthetic h(Lcom/callerid/block/util/AppOpenManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/util/AppOpenManager;->f:J

    return-wide p1
.end method

.method private j()Lcom/google/android/gms/ads/e;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method private m(J)Z
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callerid/block/util/AppOpenManager;->f:J

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
.method public i()V
    .locals 5

    :try_start_0
    const-string v0, "AppOpenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdAvailable():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callerid/block/util/AppOpenManager;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/callerid/block/util/AppOpenManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    new-instance v1, Lcom/callerid/block/util/AppOpenManager$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/util/AppOpenManager$a;-><init>(Lcom/callerid/block/util/AppOpenManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/t/a;->b(Lcom/google/android/gms/ads/i;)V

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/t/a;->c(Landroid/app/Activity;)V

    return-void

    :cond_0
    new-instance v0, Lcom/callerid/block/util/AppOpenManager$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/AppOpenManager$b;-><init>(Lcom/callerid/block/util/AppOpenManager;)V

    iput-object v0, p0, Lcom/callerid/block/util/AppOpenManager;->c:Lcom/google/android/gms/ads/t/a$a;

    invoke-direct {p0}, Lcom/callerid/block/util/AppOpenManager;->j()Lcom/google/android/gms/ads/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager;->d:Lcom/callerid/block/main/EZCallApplication;

    const-string v2, "ca-app-pub-5825926894918682/6019378556"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callerid/block/util/AppOpenManager;->c:Lcom/google/android/gms/ads/t/a$a;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/t/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;ILcom/google/android/gms/ads/t/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 4

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/callerid/block/util/AppOpenManager;->m(J)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    iput-boolean v3, v2, Lcom/callerid/block/main/EZCallApplication;->f:Z

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/callerid/block/util/AppOpenManager;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public l()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/callerid/block/util/AppOpenManager;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AppOpenManager"

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/callerid/block/util/AppOpenManager;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Will show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "currentActivity:"

    if-eqz v0, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasEntered:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/callerid/block/start/StartActivityTest;->z:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/callerid/block/start/StartActivityTest;->z:Z

    if-nez v0, :cond_3

    const-string v0, "StartActivityTest"

    iget-object v3, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/callerid/block/util/AppOpenManager$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/AppOpenManager$c;-><init>(Lcom/callerid/block/util/AppOpenManager;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/t/a;->b(Lcom/google/android/gms/ads/i;)V

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/t/a;->c(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v0, "first install not show ad"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Can not show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/callerid/block/util/AppOpenManager;->i()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager;->e:Landroid/app/Activity;

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/callerid/block/main/EZCallApplication;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callerid/block/util/AppOpenManager;->l()V

    :cond_0
    const-string v0, "AppOpenManager"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/o;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "AppOpenManager"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

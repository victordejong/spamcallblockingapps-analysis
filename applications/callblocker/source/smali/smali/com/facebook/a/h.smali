.class Lcom/facebook/a/h;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:Lcom/facebook/a/g$a;

.field private static final f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/facebook/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/facebook/a/g$a;->a:Lcom/facebook/a/g$a;

    sput-object v0, Lcom/facebook/a/h;->e:Lcom/facebook/a/g$a;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/h;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V
    .locals 1

    .prologue
    .line 554
    .line 555
    invoke-static {p1}, Lcom/facebook/internal/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V

    .line 558
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 565
    iput-object p1, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    .line 567
    if-nez p3, :cond_0

    .line 568
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object p3

    .line 572
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/facebook/a;->o()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 573
    invoke-virtual {p3}, Lcom/facebook/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    :cond_1
    new-instance v0, Lcom/facebook/a/a;

    invoke-direct {v0, p3}, Lcom/facebook/a/a;-><init>(Lcom/facebook/a;)V

    iput-object v0, p0, Lcom/facebook/a/h;->c:Lcom/facebook/a/a;

    .line 585
    :goto_0
    invoke-static {}, Lcom/facebook/a/h;->h()V

    .line 586
    return-void

    .line 578
    :cond_2
    if-nez p2, :cond_3

    .line 580
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 582
    :cond_3
    new-instance v0, Lcom/facebook/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/h;->c:Lcom/facebook/a/a;

    goto :goto_0
.end method

.method static a()Lcom/facebook/a/g$a;
    .locals 2

    .prologue
    .line 194
    sget-object v1, Lcom/facebook/a/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/facebook/a/h;->e:Lcom/facebook/a/g$a;

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 736
    sget-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 737
    sget-object v1, Lcom/facebook/a/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_0
    sget-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 740
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 743
    const-string/jumbo v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    .line 744
    sget-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    .line 748
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 749
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/a/h;->g:Ljava/lang/String;

    .line 750
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 754
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :cond_1
    sget-object v0, Lcom/facebook/a/h;->g:Ljava/lang/String;

    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/facebook/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/facebook/a/b;->a()V

    .line 105
    invoke-static {}, Lcom/facebook/a/p;->a()V

    .line 107
    if-nez p1, :cond_1

    .line 108
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, p1}, Lcom/facebook/a/d/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/facebook/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V

    .line 130
    sget-object v1, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/facebook/a/h$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/a/h$1;-><init>(Landroid/content/Context;Lcom/facebook/a/h;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    .locals 3

    .prologue
    .line 696
    invoke-static {p1, p0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    .line 699
    invoke-virtual {p0}, Lcom/facebook/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/a/h;->h:Z

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/facebook/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fb_mobile_activate_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/h;->h:Z

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    const-string/jumbo v1, "AppEvents"

    const-string/jumbo v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    if-eqz p0, :cond_0

    .line 433
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "install_referrer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 724
    sget-object v0, Lcom/facebook/q;->f:Lcom/facebook/q;

    const-string/jumbo v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method static c()V
    .locals 0

    .prologue
    .line 395
    invoke-static {}, Lcom/facebook/a/e;->a()V

    .line 396
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    sget-object v1, Lcom/facebook/a/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    sget-object v0, Lcom/facebook/a/h;->i:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    new-instance v0, Lcom/facebook/a/h$2;

    invoke-direct {v0}, Lcom/facebook/a/h$2;-><init>()V

    invoke-static {v0}, Lcom/facebook/internal/o;->a(Lcom/facebook/internal/o$a;)V

    .line 447
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 448
    const-string/jumbo v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    const-string/jumbo v1, "install_referrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f()V
    .locals 2

    .prologue
    .line 713
    invoke-static {}, Lcom/facebook/a/h;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/g$a;->b:Lcom/facebook/a/g$a;

    if-eq v0, v1, :cond_0

    .line 714
    sget-object v0, Lcom/facebook/a/j;->f:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/j;)V

    .line 716
    :cond_0
    return-void
.end method

.method static g()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 729
    invoke-static {}, Lcom/facebook/a/h;->h()V

    .line 732
    :cond_0
    sget-object v0, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static h()V
    .locals 7

    .prologue
    .line 589
    sget-object v1, Lcom/facebook/a/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    sget-object v0, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 591
    monitor-exit v1

    .line 619
    :goto_0
    return-void

    .line 596
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    new-instance v1, Lcom/facebook/a/h$3;

    invoke-direct {v1}, Lcom/facebook/a/h$3;-><init>()V

    .line 613
    sget-object v0, Lcom/facebook/a/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 223
    .line 225
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 228
    invoke-static {}, Lcom/facebook/a/d/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 229
    return-void
.end method

.method a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 214
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 219
    invoke-static {}, Lcom/facebook/a/d/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 214
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 220
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 622
    const/4 v4, 0x1

    .line 627
    invoke-static {}, Lcom/facebook/a/d/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 622
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 628
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 657
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-string/jumbo v0, "app_events_killswitch"

    .line 664
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v0, v1, v8}, Lcom/facebook/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    const-string/jumbo v1, "AppEvents"

    const-string/jumbo v2, "KillSwitch is enabled and fail to log app event: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 672
    :cond_2
    :try_start_0
    new-instance v0, Lcom/facebook/a/c;

    iget-object v1, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    .line 678
    invoke-static {}, Lcom/facebook/a/d/a;->a()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 680
    iget-object v1, p0, Lcom/facebook/a/h;->c:Lcom/facebook/a/a;

    invoke-static {v0, v1}, Lcom/facebook/a/h;->a(Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 683
    sget-object v1, Lcom/facebook/q;->e:Lcom/facebook/q;

    const-string/jumbo v2, "AppEvents"

    const-string/jumbo v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v9, [Ljava/lang/Object;

    .line 684
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 683
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 686
    :catch_1
    move-exception v0

    .line 688
    sget-object v1, Lcom/facebook/q;->e:Lcom/facebook/q;

    const-string/jumbo v2, "AppEvents"

    const-string/jumbo v3, "Invalid app event: %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 689
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 688
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string/jumbo v1, "_is_suggested_event"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "_button_text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/facebook/a/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 634
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 635
    :cond_0
    sget-object v0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "purchaseAmount and currency cannot be null"

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :goto_0
    return-void

    .line 639
    :cond_1
    if-nez p4, :cond_2

    .line 640
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 642
    :goto_1
    const-string/jumbo v0, "fb_currency"

    invoke-virtual {p3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    .line 648
    invoke-static {}, Lcom/facebook/a/d/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 643
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    goto :goto_0

    :cond_2
    move-object v3, p4

    goto :goto_1
.end method

.method a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/a/h;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V

    .line 255
    return-void
.end method

.method a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string/jumbo v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/a/h;->b(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 266
    :cond_0
    if-nez p2, :cond_1

    .line 267
    const-string/jumbo v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/a/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    if-nez p3, :cond_2

    .line 272
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 274
    :goto_1
    const-string/jumbo v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "fb_mobile_purchase"

    .line 278
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 281
    invoke-static {}, Lcom/facebook/a/d/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    .line 276
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 282
    invoke-static {}, Lcom/facebook/a/h;->f()V

    goto :goto_0

    :cond_2
    move-object v3, p3

    goto :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/facebook/a/j;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/j;)V

    .line 391
    return-void
.end method

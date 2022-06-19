.class public Lcom/facebook/appevents/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.facebook.appevents.h"

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:I

.field private static final f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/appevents/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget v0, Lcom/facebook/appevents/g$a;->a:I

    sput v0, Lcom/facebook/appevents/h;->e:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/h;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 485
    invoke-static {p1}, Lcom/facebook/internal/ae;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 490
    iput-object p1, p0, Lcom/facebook/appevents/h;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 493
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_2

    .line 497
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 498
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 499
    :cond_1
    new-instance p1, Lcom/facebook/appevents/a;

    invoke-direct {p1, p3}, Lcom/facebook/appevents/a;-><init>(Lcom/facebook/AccessToken;)V

    iput-object p1, p0, Lcom/facebook/appevents/h;->c:Lcom/facebook/appevents/a;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 503
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 505
    :cond_3
    new-instance p1, Lcom/facebook/appevents/a;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/appevents/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/h;->c:Lcom/facebook/appevents/a;

    .line 508
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/h;->g()V

    return-void
.end method

.method public static a()I
    .locals 4

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 193
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    sget v3, Lcom/facebook/appevents/h;->e:I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v3

    .line 195
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 661
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 662
    sget-object v1, Lcom/facebook/appevents/h;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 663
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/h;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "com.facebook.sdk.appEventPreferences"

    const/4 v4, 0x0

    .line 666
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "anonymousAppDeviceGUID"

    .line 667
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    sput-object v3, Lcom/facebook/appevents/h;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "XZ"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/appevents/h;->g:Ljava/lang/String;

    const-string v3, "com.facebook.sdk.appEventPreferences"

    .line 673
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 674
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "anonymousAppDeviceGUID"

    sget-object v4, Lcom/facebook/appevents/h;->g:Ljava/lang/String;

    .line 675
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 676
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 679
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 682
    :cond_2
    :goto_0
    sget-object p0, Lcom/facebook/appevents/h;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {}, Lcom/facebook/appevents/b;->a()V

    .line 100
    invoke-static {}, Lcom/facebook/appevents/p;->a()V

    if-nez p1, :cond_1

    .line 103
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Lcom/facebook/appevents/f/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 114
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance v1, Lcom/facebook/appevents/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/appevents/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 125
    sget-object p1, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/facebook/appevents/h$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/appevents/h$1;-><init>(Landroid/content/Context;Lcom/facebook/appevents/h;)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 190
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/facebook/appevents/c;Lcom/facebook/appevents/a;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 615
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/a;Lcom/facebook/appevents/c;)V

    .line 617
    sget-object v1, Lcom/facebook/internal/l$b;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/l$b;

    invoke-static {v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-static {}, Lcom/facebook/appevents/h/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    iget-object p1, p1, Lcom/facebook/appevents/a;->b:Ljava/lang/String;

    .line 619
    invoke-static {p1, p0}, Lcom/facebook/appevents/h/a;->a(Ljava/lang/String;Lcom/facebook/appevents/c;)V

    .line 1097
    :cond_1
    iget-boolean p1, p0, Lcom/facebook/appevents/c;->b:Z

    if-nez p1, :cond_3

    .line 623
    sget-boolean p1, Lcom/facebook/appevents/h;->h:Z

    if-nez p1, :cond_3

    .line 2084
    iget-object p0, p0, Lcom/facebook/appevents/c;->c:Ljava/lang/String;

    const-string p1, "fb_mobile_activate_app"

    .line 624
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 625
    sput-boolean p0, Lcom/facebook/appevents/h;->h:Z

    return-void

    .line 627
    :cond_2
    sget-object p0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    const-string p1, "AppEvents"

    const-string v1, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {p0, p1, v1}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 635
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 411
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    .line 413
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_1

    .line 415
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "install_referrer"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 417
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 649
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/m;->DEVELOPER_ERRORS:Lcom/facebook/m;

    const-string v2, "AppEvents"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 650
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static c()V
    .locals 2

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 380
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 381
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 405
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/h;->i:Ljava/lang/String;

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v3

    .line 407
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static e()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 421
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/h$2;

    invoke-direct {v1}, Lcom/facebook/appevents/h$2;-><init>()V

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Lcom/facebook/internal/u$a;)V

    .line 431
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.facebook.sdk.appEventPreferences"

    const/4 v4, 0x0

    .line 433
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "install_referrer"

    .line 434
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static f()Ljava/util/concurrent/Executor;
    .locals 3

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 653
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 654
    invoke-static {}, Lcom/facebook/appevents/h;->g()V

    .line 657
    :cond_1
    sget-object v0, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static g()V
    .locals 11

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 512
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 513
    :try_start_1
    sget-object v2, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_1

    .line 514
    monitor-exit v1

    return-void

    .line 519
    :cond_1
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v2, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 520
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :try_start_2
    new-instance v5, Lcom/facebook/appevents/h$3;

    invoke-direct {v5}, Lcom/facebook/appevents/h$3;-><init>()V

    .line 537
    sget-object v4, Lcom/facebook/appevents/h;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x15180

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 520
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 542
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static h()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/h;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 638
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/h;->a()I

    move-result v1

    sget v2, Lcom/facebook/appevents/g$a;->b:I

    if-eq v1, v2, :cond_1

    .line 639
    sget-object v1, Lcom/facebook/appevents/j;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/j;

    invoke-static {v1}, Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 641
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Lcom/facebook/appevents/f/a;->b()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    .line 217
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 219
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->b()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 214
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 546
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 545
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 547
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 13

    move-object v1, p0

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 574
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "app_events_killswitch"

    .line 580
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 579
    invoke-static {v0, v2, v10}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    const-string v12, "AppEvents"

    if-eqz v0, :cond_2

    .line 581
    :try_start_1
    sget-object v0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    const-string v2, "KillSwitch is enabled and fail to log app event: %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v10

    invoke-static {v0, v12, v2, v3}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 590
    :cond_2
    :try_start_2
    new-instance v0, Lcom/facebook/appevents/c;

    iget-object v3, v1, Lcom/facebook/appevents/h;->b:Ljava/lang/String;

    .line 597
    invoke-static {}, Lcom/facebook/appevents/f/a;->a()Z

    move-result v8

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/facebook/appevents/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 599
    iget-object v2, v1, Lcom/facebook/appevents/h;->c:Lcom/facebook/appevents/a;

    invoke-static {v0, v2}, Lcom/facebook/appevents/h;->a(Lcom/facebook/appevents/c;Lcom/facebook/appevents/a;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    .line 610
    :try_start_3
    sget-object v2, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    const-string v3, "Invalid app event: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v2, v12, v3, v4}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 602
    sget-object v2, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v11, [Ljava/lang/Object;

    .line 606
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 602
    invoke-static {v2, v12, v3, v4}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 612
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string p1, "purchaseAmount cannot be null"

    .line 250
    invoke-static {p1}, Lcom/facebook/appevents/h;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "currency cannot be null"

    .line 253
    invoke-static {p1}, Lcom/facebook/appevents/h;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 258
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3
    move-object v3, p3

    const-string p3, "fb_currency"

    .line 260
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_purchase"

    .line 264
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 267
    invoke-static {}, Lcom/facebook/appevents/f/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 268
    invoke-static {}, Lcom/facebook/appevents/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 269
    :goto_0
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/j;->EXPLICIT:Lcom/facebook/appevents/j;

    invoke-static {v0}, Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 376
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.class public Lc6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lg6/a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;

.field public final c:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lq6/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx5/e;

.field public final e:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lr2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Lc6/a;->f:Lg6/a;

    return-void
.end method

.method public constructor <init>(Lt4/c;Lw5/b;Lx5/e;Lw5/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Le6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/c;",
            "Lw5/b<",
            "Lq6/g;",
            ">;",
            "Lx5/e;",
            "Lw5/b<",
            "Lr2/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Le6/a;",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc6/a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc6/a;->b:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lc6/a;->c:Lw5/b;

    .line 5
    iput-object p3, p0, Lc6/a;->d:Lx5/e;

    .line 6
    iput-object p4, p0, Lc6/a;->e:Lw5/b;

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lc6/a;->b:Ljava/lang/Boolean;

    .line 8
    new-instance p1, Ln6/a;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Ln6/a;-><init>(Landroid/os/Bundle;)V

    return-void

    .line 9
    :cond_0
    sget-object v1, Lm6/e;->s:Lm6/e;

    .line 10
    iput-object p1, v1, Lm6/e;->d:Lt4/c;

    .line 11
    invoke-virtual {p1}, Lt4/c;->a()V

    .line 12
    iget-object v2, p1, Lt4/c;->c:Lt4/e;

    .line 13
    iget-object v2, v2, Lt4/e;->g:Ljava/lang/String;

    .line 14
    iput-object v2, v1, Lm6/e;->p:Ljava/lang/String;

    .line 15
    iput-object p3, v1, Lm6/e;->f:Lx5/e;

    .line 16
    iput-object p4, v1, Lm6/e;->g:Lw5/b;

    .line 17
    iget-object p3, v1, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Landroidx/emoji2/text/k;

    const/4 v2, 0x2

    invoke-direct {p4, v1, v2}, Landroidx/emoji2/text/k;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p1}, Lt4/c;->a()V

    .line 19
    iget-object p3, p1, Lt4/c;->a:Landroid/content/Context;

    .line 20
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {p4, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 22
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    goto :goto_0

    :catch_1
    move-exception p4

    .line 23
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 24
    :goto_1
    new-instance p4, Ln6/a;

    if-eqz v0, :cond_1

    invoke-direct {p4, v0}, Ln6/a;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    invoke-direct {p4}, Ln6/a;-><init>()V

    .line 25
    :goto_2
    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Lw5/b;)V

    .line 26
    iput-object p4, p6, Le6/a;->b:Ln6/a;

    .line 27
    sget-object p2, Le6/a;->d:Lg6/a;

    invoke-static {p3}, Ln6/f;->a(Landroid/content/Context;)Z

    move-result p4

    .line 28
    iput-boolean p4, p2, Lg6/a;->b:Z

    .line 29
    iget-object p2, p6, Le6/a;->c:Le6/t;

    invoke-virtual {p2, p3}, Le6/t;->b(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->setApplicationContext(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p6}, Le6/a;->f()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lc6/a;->b:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_3

    .line 33
    :cond_2
    invoke-static {}, Lt4/c;->b()Lt4/c;

    move-result-object p2

    invoke-virtual {p2}, Lt4/c;->f()Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_3

    .line 34
    sget-object p2, Lc6/a;->f:Lg6/a;

    const/4 p4, 0x1

    new-array p5, p4, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lt4/c;->a()V

    .line 36
    iget-object p1, p1, Lt4/c;->c:Lt4/e;

    .line 37
    iget-object p1, p1, Lt4/e;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-static {p1, p3}, Lj4/w0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p3, p6

    const-string p1, "perf-android-sdk"

    aput-object p1, p3, p4

    const-string p1, "android-ide"

    aput-object p1, p3, v2

    const-string p1, "%s/trends?utm_source=%s&utm_medium=%s"

    .line 40
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, p6

    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    .line 41
    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Lg6/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.class public Lcom/google/android/gms/internal/measurement/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/d$b;,
        Lcom/google/android/gms/internal/measurement/d$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/measurement/d;

.field private static h:Ljava/lang/Boolean;

.field private static i:Ljava/lang/Boolean;

.field private static j:Z

.field private static k:Ljava/lang/Boolean;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:Z


# instance fields
.field protected final a:Lcom/google/android/gms/common/util/e;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/google/android/gms/measurement/a/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/measurement/internal/gi;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/google/android/gms/internal/measurement/mi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 254
    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    .line 255
    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;

    .line 256
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/d;->j:Z

    .line 257
    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;

    .line 258
    const-string/jumbo v0, "use_dynamite_api"

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->l:Ljava/lang/String;

    .line 259
    const-string/jumbo v0, "allow_remote_dynamite"

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->m:Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/d;->n:Z

    .line 261
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/d;->o:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-eqz p2, :cond_0

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    :cond_0
    const-string/jumbo v0, "FA"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    .line 15
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Lcom/google/android/gms/common/util/e;

    .line 18
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 19
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Lcom/google/android/gms/measurement/a/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/a/a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/measurement/a/a;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v3

    .line 23
    :goto_1
    if-nez v0, :cond_4

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->q:Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/d;->p:Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    const-string/jumbo v1, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_2
    return-void

    .line 13
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 22
    goto :goto_1

    .line 28
    :cond_4
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    const-string/jumbo v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->q:Ljava/lang/String;

    .line 30
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    const-string/jumbo v1, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_5
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/g;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 37
    if-nez v0, :cond_a

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    const-string/jumbo v1, "Unable to register lifecycle notifications. Application null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 32
    :cond_6
    if-nez p3, :cond_7

    move v0, v3

    :goto_4
    if-nez p4, :cond_8

    :goto_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    const-string/jumbo v1, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v0, v2

    .line 32
    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_5

    .line 34
    :cond_9
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/d;->q:Ljava/lang/String;

    goto :goto_3

    .line 40
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/measurement/d$b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/d$b;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/d;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/d;
    .locals 7

    .prologue
    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->b:Lcom/google/android/gms/internal/measurement/d;

    if-nez v0, :cond_1

    .line 4
    const-class v6, Lcom/google/android/gms/internal/measurement/d;

    monitor-enter v6

    .line 5
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->b:Lcom/google/android/gms/internal/measurement/d;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->b:Lcom/google/android/gms/internal/measurement/d;

    .line 7
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->b:Lcom/google/android/gms/internal/measurement/d;

    return-object v0

    .line 7
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mi;)Lcom/google/android/gms/internal/measurement/mi;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d;->r:Lcom/google/android/gms/internal/measurement/mi;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d;->f:Ljava/util/List;

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/d$a;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/d$a;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/Exception;ZZ)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;ZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d;->p:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d;->p:Z

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    const-string/jumbo v1, "Data collection startup failed. No data will be collected."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v2, "Error with data collection. Data lost."

    .line 69
    if-eqz p3, :cond_1

    .line 70
    const/4 v1, 0x5

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 8

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/internal/measurement/x;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 92
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/internal/measurement/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/w;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 98
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;)Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 244
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 208
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->i(Landroid/content/Context;)V

    .line 209
    const-class v1, Lcom/google/android/gms/internal/measurement/d;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/d;->j:Z

    if-eqz v0, :cond_0

    .line 211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 212
    :cond_0
    :try_start_1
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    const-string/jumbo v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "measurement.dynamite.enabled"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    .line 215
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :goto_2
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/d;->j:Z

    .line 230
    :goto_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 218
    :cond_1
    :try_start_3
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    :try_start_4
    const-string/jumbo v2, "FA"

    const-string/jumbo v3, "Unable to call SystemProperties.get()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/d;->j:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 220
    :cond_2
    const/4 v0, 0x0

    :try_start_6
    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 228
    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    :try_start_7
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/d;->j:Z

    .line 229
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->k:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->r:Lcom/google/android/gms/internal/measurement/mi;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 250
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    .line 43
    :try_start_0
    const-string/jumbo v1, "google_app_id"

    .line 44
    new-instance v2, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 48
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static h(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 185
    const-class v1, Lcom/google/android/gms/internal/measurement/d;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 187
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_2
    const-string/jumbo v0, "app_measurement_internal_disable_startup_flags"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/d;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 192
    :cond_1
    :try_start_4
    const-string/jumbo v0, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->l:Ljava/lang/String;

    sget-boolean v3, Lcom/google/android/gms/internal/measurement/d;->n:Z

    .line 195
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    .line 196
    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->m:Ljava/lang/String;

    const/4 v3, 0x0

    .line 197
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :goto_1
    :try_start_5
    monitor-exit v1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string/jumbo v2, "FA"

    const-string/jumbo v3, "Exception reading flag from SharedPreferences."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/d;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->h:Ljava/lang/Boolean;

    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->i:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 164
    new-instance v1, Lcom/google/android/gms/internal/measurement/r;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/r;-><init>(Lcom/google/android/gms/internal/measurement/d;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 165
    if-eqz p2, :cond_0

    .line 167
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->b(J)Landroid/os/Bundle;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/mi;
    .locals 3

    .prologue
    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    .line 55
    :goto_0
    const-string/jumbo v1, "com.google.android.gms.measurement.dynamite"

    .line 56
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/mh;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    .line 62
    :goto_1
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$a;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/Exception;ZZ)V

    .line 62
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Lcom/google/android/gms/measurement/a/a;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/measurement/a/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 104
    new-instance v1, Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 106
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->b(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/mg;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v5, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 148
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 150
    const-wide/16 v0, 0x1388

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/measurement/mg;->b(J)Landroid/os/Bundle;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 154
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 158
    :cond_3
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 161
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/s;-><init>(Lcom/google/android/gms/internal/measurement/d;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 162
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/i;-><init>(Lcom/google/android/gms/internal/measurement/d;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 114
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/d;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/gms/internal/measurement/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 87
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 96
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/v;-><init>(Lcom/google/android/gms/internal/measurement/d;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 184
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 128
    new-instance v1, Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/m;-><init>(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 129
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/gms/internal/measurement/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/k;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 126
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/f;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 102
    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 171
    new-instance v1, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 173
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->b(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/mg;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 175
    if-nez v0, :cond_0

    const/16 v0, 0x19

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 131
    new-instance v1, Lcom/google/android/gms/internal/measurement/l;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/l;-><init>(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 132
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()J
    .locals 6

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 134
    new-instance v1, Lcom/google/android/gms/internal/measurement/o;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/o;-><init>(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 136
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->b(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/mg;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/d;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/d;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 140
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 142
    new-instance v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/n;-><init>(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 143
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mg;-><init>()V

    .line 145
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mg;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d$a;)V

    .line 146
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mg;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->q:Ljava/lang/String;

    return-object v0
.end method

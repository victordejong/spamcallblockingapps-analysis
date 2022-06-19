.class public final Lcom/google/android/gms/internal/measurement/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/google/android/gms/internal/measurement/ak;


# instance fields
.field protected final a:Lcom/google/android/gms/common/util/f;

.field protected final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lcom/google/android/gms/measurement/a/a;

.field public final d:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/measurement/internal/fu;",
            "Lcom/google/android/gms/internal/measurement/ab;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private volatile j:Lcom/google/android/gms/internal/measurement/mz;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/ak;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    .line 2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/js;->a()Lcom/google/android/gms/internal/measurement/gu;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Lcom/google/android/gms/internal/measurement/ak;)V

    .line 4
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/gu;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/measurement/a/a;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/a/a;-><init>(Lcom/google/android/gms/internal/measurement/ak;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->c:Lcom/google/android/gms/measurement/a/a;

    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->g:Ljava/util/List;

    const/4 p2, 0x1

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/ek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ak;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/ak;->i:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    nop

    .line 10
    :cond_3
    :goto_2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/ak;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ak;->d:Ljava/lang/String;

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    if-nez p3, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez p4, :cond_6

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    xor-int/2addr p2, v1

    if-eqz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ak;->d:Ljava/lang/String;

    .line 12
    :cond_8
    :goto_5
    new-instance p2, Lcom/google/android/gms/internal/measurement/i;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/i;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/measurement/aj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/aj;-><init>(Lcom/google/android/gms/internal/measurement/ak;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ak;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ak;->e:Lcom/google/android/gms/internal/measurement/ak;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/ak;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ak;->e:Lcom/google/android/gms/internal/measurement/ak;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ak;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 2
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/ak;->e:Lcom/google/android/gms/internal/measurement/ak;

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/ak;->e:Lcom/google/android/gms/internal/measurement/ak;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/mz;)Lcom/google/android/gms/internal/measurement/mz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->j:Lcom/google/android/gms/internal/measurement/mz;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ak;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ak;->i:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ak;->i:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    .line 1
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    .line 3
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/measurement/r;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/r;-><init>(Lcom/google/android/gms/internal/measurement/ak;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/measurement/y;

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/ak;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/ak;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ak;->j:Lcom/google/android/gms/internal/measurement/mz;

    return-object p0
.end method

.method private static final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ak;->f()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/s;-><init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/mz;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->f:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v1, "com.google.android.gms.measurement.dynamite"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string v0, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/my;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/l;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/l;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/e;

    .line 2
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/e;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lu;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/q;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/q;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 10
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 5
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/g;-><init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/c;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/c;-><init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/aa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ak;->b:Ljava/util/concurrent/ExecutorService;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/fu;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ak;->g:Ljava/util/List;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ak;->g:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ak;->g:Ljava/util/List;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string v1, "OnEventListener already registered."

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/ab;

    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/ab;-><init>(Lcom/google/android/gms/measurement/internal/fu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ak;->g:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    .line 6
    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->j:Lcom/google/android/gms/internal/measurement/mz;

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->j:Lcom/google/android/gms/internal/measurement/mz;

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/mz;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/nf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ak;->f:Ljava/lang/String;

    const-string v0, "Failed to register event listener on calling thread. Trying again on the dynamite thread."

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/x;

    .line 10
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/ab;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/measurement/z;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/w;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/w;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/m;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/m;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/j;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    .line 1
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final c()J
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/n;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/n;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/lu;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ak;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/ak;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/k;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/k;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/u;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/u;-><init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x2710

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/lu;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/o;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/o;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/p;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

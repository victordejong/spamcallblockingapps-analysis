.class public final Lcom/google/android/gms/internal/ads/ug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/dto;

.field private final c:Lcom/google/android/gms/internal/ads/uz;

.field private final d:Lcom/google/android/gms/internal/ads/ur;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/ads/yd;

.field private h:Lcom/google/android/gms/internal/ads/e;

.field private i:Ljava/lang/Boolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Lcom/google/android/gms/internal/ads/ul;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/uz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->c:Lcom/google/android/gms/internal/ads/uz;

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/ur;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ug;->c:Lcom/google/android/gms/internal/ads/uz;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ur;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/uw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->d:Lcom/google/android/gms/internal/ads/ur;

    .line 61
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/ug;->e:Z

    .line 62
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ug;->h:Lcom/google/android/gms/internal/ads/e;

    .line 63
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ug;->i:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/ul;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/ul;-><init>(Lcom/google/android/gms/internal/ads/ui;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->k:Lcom/google/android/gms/internal/ads/ul;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->l:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ug;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 94
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 104
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 101
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 104
    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ug;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ug;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ug;)Lcom/google/android/gms/internal/ads/e;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->h:Lcom/google/android/gms/internal/ads/e;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/e;
    .locals 2

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->h:Lcom/google/android/gms/internal/ads/e;

    monitor-exit v1

    return-object v0

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ug;->e:Z

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ug;->d:Lcom/google/android/gms/internal/ads/ur;

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/due;->a(Lcom/google/android/gms/internal/ads/duj;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->c:Lcom/google/android/gms/internal/ads/uz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    .line 20
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/oy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/pc;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dto;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/dto;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->b:Lcom/google/android/gms/internal/ads/dto;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->l()Lcom/google/android/gms/internal/ads/g;

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/aj;->c:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    const-string/jumbo v0, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->h:Lcom/google/android/gms/internal/ads/e;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->h:Lcom/google/android/gms/internal/ads/e;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/ui;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ui;-><init>(Lcom/google/android/gms/internal/ads/ug;)V

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "AppState.registerCsiReporter"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ug;->e:Z

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ug;->j()Lcom/google/android/gms/internal/ads/crt;

    .line 38
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    return-void

    .line 30
    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e;-><init>()V

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ug;->i:Ljava/lang/Boolean;

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/oy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/pc;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pc;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->i:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/oy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/pc;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/aw;->g:Lcom/google/android/gms/internal/ads/ab;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 54
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/pc;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    .line 55
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->k:Lcom/google/android/gms/internal/ads/ul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ul;->a()V

    .line 11
    return-void
.end method

.method public final d()Landroid/content/res/Resources;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->g:Lcom/google/android/gms/internal/ads/yd;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/yd;->d:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ya;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazx; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string/jumbo v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 69
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 71
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/uw;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->c:Lcom/google/android/gms/internal/ads/uz;

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/gms/common/util/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bc:Lcom/google/android/gms/internal/ads/ect;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ug;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->m:Lcom/google/android/gms/internal/ads/crt;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->m:Lcom/google/android/gms/internal/ads/crt;

    monitor-exit v1

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/uj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/uj;-><init>(Lcom/google/android/gms/internal/ads/ug;)V

    .line 87
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->m:Lcom/google/android/gms/internal/ads/crt;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/ur;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->d:Lcom/google/android/gms/internal/ads/ur;

    return-object v0
.end method

.method final synthetic l()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->f:Landroid/content/Context;

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qs;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ug;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

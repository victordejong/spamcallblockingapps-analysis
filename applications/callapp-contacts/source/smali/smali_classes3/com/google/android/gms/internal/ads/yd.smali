.class public final Lcom/google/android/gms/internal/ads/yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/android/gms/internal/ads/yo;

.field public c:Landroid/content/Context;

.field d:Lcom/google/android/gms/internal/ads/zzbar;

.field e:Lcom/google/android/gms/internal/ads/ax;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final g:Lcom/google/android/gms/internal/ads/yi;

.field private final h:Lcom/google/android/gms/ads/internal/util/zzi;

.field private i:Z

.field private j:Ljava/lang/Boolean;

.field private final k:Ljava/lang/Object;

.field private l:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->h:Lcom/google/android/gms/ads/internal/util/zzi;

    .line 56
    new-instance v1, Lcom/google/android/gms/internal/ads/yo;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/yo;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->b:Lcom/google/android/gms/internal/ads/yo;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yd;->i:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/ax;

    .line 60
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->j:Ljava/lang/Boolean;

    .line 61
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/yd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/yi;-><init>(Lcom/google/android/gms/internal/ads/yf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->g:Lcom/google/android/gms/internal/ads/yi;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->k:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    .line 90
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 97
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ax;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/ax;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/yd;->i:Z

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yd;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/eex;->a(Lcom/google/android/gms/internal/ads/efc;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->h:Lcom/google/android/gms/ads/internal/util/zzi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzi;->initialize(Landroid/content/Context;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/sb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/sf;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lcom/google/android/gms/internal/ads/az;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/ci;->c:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/ax;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ax;-><init>()V

    .line 28
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/ax;

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/yf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/yd;)V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 32
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/yd;->i:Z

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yd;->e()Lcom/google/android/gms/internal/ads/dbt;

    .line 35
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->j:Ljava/lang/Boolean;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/sf;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/sf;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->j:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/sf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->g:Lcom/google/android/gms/internal/ads/bz;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 51
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/sf;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final c()Landroid/content/res/Resources;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzekc:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    .line 1004
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yz;->a(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule;->h:Landroid/content/Context;

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbap; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 43
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/ads/internal/util/zzf;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->h:Lcom/google/android/gms/ads/internal/util/zzi;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/google/android/gms/common/util/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bC:Lcom/google/android/gms/internal/ads/af;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->l:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v1, :cond_1

    .line 81
    monitor-exit v0

    return-object v1

    .line 82
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/internal/ads/yg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/yg;-><init>(Lcom/google/android/gms/internal/ads/yd;)V

    .line 83
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->l:Lcom/google/android/gms/internal/ads/dbt;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

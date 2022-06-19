.class public Lcom/google/android/gms/internal/ads/dtg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "dtg"


# instance fields
.field protected a:Landroid/content/Context;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Ldalvik/system/DexClassLoader;

.field d:Lcom/google/android/gms/internal/ads/dkf;

.field e:[B

.field volatile f:Lcom/google/android/gms/internal/ads/beb$a;

.field g:Ljava/util/concurrent/Future;

.field h:Lcom/google/android/gms/internal/ads/cwd;

.field i:Z

.field j:Z

.field k:Z

.field l:Lcom/google/android/gms/internal/ads/zzfa;

.field private volatile n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private volatile o:Z

.field private p:Ljava/util/concurrent/Future;

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/duq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dtg;->o:Z

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->p:Ljava/util/concurrent/Future;

    .line 89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->f:Lcom/google/android/gms/internal/ads/beb$a;

    .line 90
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    .line 91
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dtg;->i:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dtg;->j:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dtg;->k:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dtg;->q:Z

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtg;->r:Ljava/util/Map;

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dtg;->l:Lcom/google/android/gms/internal/ads/zzfa;

    if-nez p1, :cond_2

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfa;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    .line 102
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtg;->l:Lcom/google/android/gms/internal/ads/zzfa;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dtg;Lcom/google/android/gms/internal/ads/beb$a;)Lcom/google/android/gms/internal/ads/beb$a;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtg;->f:Lcom/google/android/gms/internal/ads/beb$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/dtg;
    .locals 9

    const-string v0, "%s/%s.dex"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/dtg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dtg;-><init>(Landroid/content/Context;)V

    .line 4
    :try_start_0
    new-instance p0, Lcom/google/android/gms/internal/ads/dtf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtf;-><init>()V

    .line 5
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/dtg;->o:Z

    if-eqz p3, :cond_0

    .line 9
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/dti;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/dti;-><init>(Lcom/google/android/gms/internal/ads/dtg;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/dtg;->p:Ljava/util/concurrent/Future;

    .line 11
    :cond_0
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/dtk;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/dtk;-><init>(Lcom/google/android/gms/internal/ads/dtg;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_0 .. :try_end_0} :catch_5

    const/4 p0, 0x1

    const/4 p3, 0x0

    .line 12
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/c;->b()Lcom/google/android/gms/common/c;

    move-result-object v2

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/c;->c(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/dtg;->i:Z

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/dtg;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    :try_start_2
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/dtg;->a(IZ)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dtl;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->bG:Lcom/google/android/gms/internal/ads/af;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_4
    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/ads/dkf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dkf;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dtg;->d:Lcom/google/android/gms/internal/ads/dkf;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_2 .. :try_end_2} :catch_5

    .line 26
    :try_start_3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/dkf;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/dtg;->e:[B
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_3 .. :try_end_3} :catch_5

    .line 31
    :try_start_4
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_6

    .line 33
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 35
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>()V

    throw p0

    :cond_6
    :goto_3
    const-string v2, "1610724645094"

    .line 39
    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 41
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dtg;->d:Lcom/google/android/gms/internal/ads/dkf;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dtg;->e:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/dkf;->a([BLjava/lang/String;)[B

    move-result-object p2

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 43
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 48
    :cond_7
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/dtg;->b(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_4 .. :try_end_4} :catch_5

    .line 49
    :try_start_5
    new-instance p2, Ldalvik/system/DexClassLoader;

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/dtg;->c:Ldalvik/system/DexClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 51
    :try_start_6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    .line 52
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    .line 53
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_6 .. :try_end_6} :catch_5

    .line 67
    :try_start_7
    new-instance p1, Lcom/google/android/gms/internal/ads/cwd;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/cwd;-><init>(Lcom/google/android/gms/internal/ads/dtg;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/dtg;->h:Lcom/google/android/gms/internal/ads/cwd;

    .line 68
    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/dtg;->k:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p2

    .line 55
    :try_start_8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    .line 56
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    .line 57
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/lang/String;)V

    .line 58
    throw p2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_8 .. :try_end_8} :catch_5

    :catch_0
    move-exception p0

    .line 66
    :try_start_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzev; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :goto_4
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dtg;)V
    .locals 2

    .line 4263
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtg;->q:Z

    if-eqz v0, :cond_0

    .line 4264
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 4265
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 4266
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x0

    .line 4269
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final a(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    const-string v0, "test"

    .line 104
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v3, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_2

    return-void

    :cond_2
    long-to-int p1, v5

    .line 115
    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 116
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 117
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v6, :cond_3

    .line 119
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :catch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    return-void

    .line 125
    :cond_3
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 127
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/beb$c;->a()Lcom/google/android/gms/internal/ads/beb$c$a;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/beb$c$a;->d(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/beb$c$a;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/beb$c$a;->c(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/beb$c$a;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->d:Lcom/google/android/gms/internal/ads/dkf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dtg;->e:[B

    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/dkf;->a([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/beb$c$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/beb$c$a;

    move-result-object v0

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bzp;->a([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/beb$c$a;->b(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/beb$c$a;

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 136
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :try_start_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dnh$b;->f()Lcom/google/android/gms/internal/ads/dot;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p2, Lcom/google/android/gms/internal/ads/beb$c;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object p2

    .line 138
    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 139
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 143
    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 146
    :catch_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v2

    :goto_0
    move-object v2, v5

    goto :goto_1

    :catch_3
    move-object p1, v2

    :catch_4
    move-object v2, v5

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v2

    :goto_1
    if-eqz v2, :cond_4

    .line 161
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 165
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 168
    :catch_6
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    .line 169
    throw p2

    :catch_7
    move-object p1, v2

    :goto_3
    if-eqz v2, :cond_6

    .line 150
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_4

    :catch_8
    nop

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 154
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 157
    :catch_9
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(ILcom/google/android/gms/internal/ads/beb$a;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_5

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 4287
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/beb$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5093
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/beb$a;->zzfg:Ljava/lang/String;

    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 4288
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 5228
    :cond_1
    iget v1, p1, Lcom/google/android/gms/internal/ads/beb$a;->zzfo:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 4291
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/beb$a;->b()Lcom/google/android/gms/internal/ads/beb$d;

    move-result-object v1

    .line 6005
    iget v1, v1, Lcom/google/android/gms/internal/ads/beb$d;->zzdv:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 4292
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/beb$a;->b()Lcom/google/android/gms/internal/ads/beb$d;

    move-result-object p1

    .line 6006
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/beb$d;->zzlf:J

    const-wide/16 v3, -0x2

    cmp-long p1, v1, v3

    if-nez p1, :cond_5

    :cond_4
    :goto_2
    return p0

    :cond_5
    return v0
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .line 178
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    .line 181
    :cond_0
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    .line 186
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_2

    .line 188
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V

    return v3

    :cond_2
    long-to-int v1, v5

    .line 190
    new-array v1, v1, [B

    .line 191
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 192
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    .line 195
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v3

    .line 202
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/beb$c;->a([BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/beb$c;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    :try_start_4
    new-instance v6, Ljava/lang/String;

    .line 1017
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/beb$c;->zzln:Lcom/google/android/gms/internal/ads/dlw;

    .line 211
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2012
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/beb$c;->zzlm:Lcom/google/android/gms/internal/ads/dlw;

    .line 212
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p2

    .line 3007
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/beb$c;->zzll:Lcom/google/android/gms/internal/ads/dlw;

    .line 213
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bzp;->a([B)[B

    move-result-object v6

    .line 214
    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3022
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/beb$c;->zzlo:Lcom/google/android/gms/internal/ads/dlw;

    .line 215
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 222
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dtg;->d:Lcom/google/android/gms/internal/ads/dkf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->e:[B

    new-instance v6, Ljava/lang/String;

    .line 4007
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/beb$c;->zzll:Lcom/google/android/gms/internal/ads/dlw;

    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/dkf;->a([BLjava/lang/String;)[B

    move-result-object p2

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 225
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    :try_start_5
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 230
    :catch_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return v4

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 216
    :cond_5
    :goto_0
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 217
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    return v3

    .line 205
    :catch_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    return v3

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    move-object p1, v5

    goto :goto_2

    :catch_6
    move-object v0, p1

    :catch_7
    move-object p1, v5

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v0, p1

    :goto_2
    if-eqz p1, :cond_6

    .line 246
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_3

    :catch_8
    nop

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 250
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 253
    :catch_9
    :cond_7
    throw p2

    :catch_a
    move-object v0, p1

    :goto_4
    if-eqz p1, :cond_8

    .line 236
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_5

    :catch_b
    nop

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    .line 240
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    :cond_9
    return v3
.end method

.method private final d()Lcom/google/android/gms/internal/ads/beb$a;
    .locals 3

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    .line 300
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cvj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->r:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/duq;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duq;->a()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final a(IZ)V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtg;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    .line 275
    new-instance v1, Lcom/google/android/gms/internal/ads/dth;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dth;-><init>(Lcom/google/android/gms/internal/ads/dtg;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_1

    .line 277
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->r:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->r:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/duq;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/duq;-><init>(Lcom/google/android/gms/internal/ads/dtg;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 5

    .line 305
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtg;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x7d0

    .line 310
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 311
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dtg;->p:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 319
    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->n:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method final b(IZ)Lcom/google/android/gms/internal/ads/beb$a;
    .locals 0

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 280
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtg;->d()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtg;->h:Lcom/google/android/gms/internal/ads/cwd;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwd;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0
.end method

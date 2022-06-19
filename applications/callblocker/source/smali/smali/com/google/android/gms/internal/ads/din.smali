.class public Lcom/google/android/gms/internal/ads/din;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ldalvik/system/DexClassLoader;

.field private e:Lcom/google/android/gms/internal/ads/cvn;

.field private f:[B

.field private volatile g:Lcom/google/android/gms/ads/c/a;

.field private volatile h:Z

.field private i:Ljava/util/concurrent/Future;

.field private j:Z

.field private volatile k:Lcom/google/android/gms/internal/ads/atw$a;

.field private l:Ljava/util/concurrent/Future;

.field private m:Lcom/google/android/gms/internal/ads/chc;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/djx;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/google/android/gms/internal/ads/dil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    const-class v0, Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/din;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    .line 87
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->h:Z

    .line 88
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;

    .line 89
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/din;->k:Lcom/google/android/gms/internal/ads/atw$a;

    .line 90
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/din;->l:Ljava/util/concurrent/Future;

    .line 91
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->n:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->o:Z

    .line 93
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->q:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->j:Z

    .line 96
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->j:Z

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->p:Ljava/util/Map;

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->r:Lcom/google/android/gms/internal/ads/dil;

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/ads/dil;

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 102
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->r:Lcom/google/android/gms/internal/ads/dil;

    .line 103
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/din;Lcom/google/android/gms/internal/ads/atw$a;)Lcom/google/android/gms/internal/ads/atw$a;
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/din;->k:Lcom/google/android/gms/internal/ads/atw$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/din;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/din;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/din;-><init>(Landroid/content/Context;)V

    .line 4
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/dim;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dim;-><init>()V

    .line 5
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/din;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p3, v3, Lcom/google/android/gms/internal/ads/din;->h:Z

    .line 8
    if-eqz p3, :cond_0

    .line 9
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/din;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/ads/dip;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/dip;-><init>(Lcom/google/android/gms/internal/ads/din;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;

    .line 11
    :cond_0
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/din;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/ads/dir;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/dir;-><init>(Lcom/google/android/gms/internal/ads/din;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/f;->b()Lcom/google/android/gms/common/f;

    move-result-object v4

    .line 13
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/f;->c(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, v3, Lcom/google/android/gms/internal/ads/din;->n:Z

    .line 14
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, v3, Lcom/google/android/gms/internal/ads/din;->o:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/din;->a(IZ)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dis;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bh:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 71
    :goto_3
    return-object v3

    :cond_1
    move v2, v1

    .line 13
    goto :goto_0

    :cond_2
    move v0, v1

    .line 15
    goto :goto_1

    .line 25
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/cvn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cvn;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    :try_start_3
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cvn;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/din;->f:[B
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_3 .. :try_end_3} :catch_0

    .line 31
    :try_start_4
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    const-string/jumbo v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_4 .. :try_end_4} :catch_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 28
    :catch_2
    move-exception v0

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v1, v0

    .line 36
    :try_start_6
    const-string/jumbo v2, "1582435991586"

    .line 39
    new-instance v4, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.jar"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 41
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/din;->f:[B

    invoke-virtual {v0, v5, p2}, Lcom/google/android/gms/internal/ads/cvn;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 43
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 48
    :cond_5
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/din;->b(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_6 .. :try_end_6} :catch_0

    .line 49
    :try_start_7
    new-instance v0, Ldalvik/system/DexClassLoader;

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/din;->d:Ldalvik/system/DexClassLoader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 51
    :try_start_8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    .line 52
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "%s/%s.dex"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_8 .. :try_end_8} :catch_0

    .line 67
    :try_start_9
    new-instance v0, Lcom/google/android/gms/internal/ads/chc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/chc;-><init>(Lcom/google/android/gms/internal/ads/din;)V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/din;->m:Lcom/google/android/gms/internal/ads/chc;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/gms/internal/ads/din;->q:Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 55
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    .line 56
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v4, "%s/%s.dex"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/lang/String;)V

    .line 58
    throw v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_a .. :try_end_a} :catch_0

    .line 61
    :catch_3
    move-exception v0

    .line 62
    :try_start_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_4
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_5
    move-exception v0

    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_b .. :try_end_b} :catch_0

    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/din;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/din;->p()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/ads/din;->b:Ljava/lang/String;

    const-string/jumbo v1, "File %s not found. No need for deletion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private final a(Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "%s/%s.tmp"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string/jumbo v1, "%s/%s.dex"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 113
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 115
    long-to-int v1, v6

    new-array v2, v1, [B

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 118
    if-gtz v5, :cond_2

    .line 119
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    goto :goto_0

    .line 125
    :cond_2
    :try_start_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "test"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "test"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 127
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "test"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$c;->e()Lcom/google/android/gms/internal/ads/atw$c$a;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/atw$c$a;->d(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$c$a;

    move-result-object v5

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/atw$c$a;->c(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$c$a;

    move-result-object v5

    .line 131
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/din;->f:[B

    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/internal/ads/cvn;->a([B[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/atw$c$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$c$a;

    move-result-object v6

    .line 134
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bml;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/atw$c$a;->b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$c$a;

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 136
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    .line 138
    const/4 v3, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 146
    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    .line 149
    :goto_4
    if-eqz v1, :cond_3

    .line 150
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 153
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    .line 154
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 157
    :cond_4
    :goto_6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    goto/16 :goto_0

    .line 159
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v1, v3

    .line 160
    :goto_7
    if-eqz v1, :cond_5

    .line 161
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 164
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 165
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 168
    :cond_6
    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    .line 169
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_9

    .line 159
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v0, v2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_4

    :catch_d
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    goto :goto_4

    :catch_e
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_f
    move-exception v0

    move-object v0, v2

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    .line 172
    return-void
.end method

.method static synthetic a(ILcom/google/android/gms/internal/ads/atw$a;)Z
    .locals 1

    .prologue
    .line 320
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/din;->b(ILcom/google/android/gms/internal/ads/atw$a;)Z

    move-result v0

    return v0
.end method

.method private static b(ILcom/google/android/gms/internal/ads/atw$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 276
    const/4 v1, 0x4

    if-ge p0, v1, :cond_2

    .line 277
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/atw$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/atw$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/atw$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/atw$a;->g()Lcom/google/android/gms/internal/ads/atw$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/atw$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/atw$a;->g()Lcom/google/android/gms/internal/ads/atw$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/atw$d;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 286
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v4, Ljava/io/File;

    const-string/jumbo v1, "%s/%s.tmp"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 246
    :goto_0
    return v0

    .line 181
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v1, "%s/%s.dex"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 187
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    .line 188
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V

    move v0, v2

    .line 190
    goto :goto_0

    .line 191
    :cond_2
    long-to-int v1, v6

    new-array v6, v1, [B

    .line 192
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 194
    if-gtz v7, :cond_3

    .line 195
    sget-object v0, Lcom/google/android/gms/internal/ads/din;->b:Ljava/lang/String;

    const-string/jumbo v5, "Cannot read the cache data."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move v0, v2

    .line 201
    goto :goto_0

    .line 202
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->b()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/atw$c;->a([BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/atw$c;

    move-result-object v6

    .line 203
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/atw$c;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 204
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/atw$c;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v7

    .line 205
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/atw$c;->a()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/bml;->a([B)[B

    move-result-object v8

    .line 206
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/atw$c;->d()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 208
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move v0, v2

    .line 213
    goto/16 :goto_0

    .line 214
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/din;->f:[B

    new-instance v8, Ljava/lang/String;

    .line 215
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/atw$c;->a()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/cvn;->a([BLjava/lang/String;)[B

    move-result-object v6

    .line 216
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 217
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    const/4 v3, 0x0

    :try_start_6
    array-length v5, v6

    invoke-virtual {v4, v6, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lcom/google/android/gms/internal/ads/zzdy; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 219
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 222
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    .line 227
    :goto_4
    if-eqz v1, :cond_6

    .line 228
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 231
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 232
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_6
    move v0, v2

    .line 235
    goto/16 :goto_0

    .line 236
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v1, v3

    .line 237
    :goto_7
    if-eqz v1, :cond_8

    .line 238
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 241
    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 242
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 245
    :cond_9
    :goto_9
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    .line 236
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v0, v4

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    goto :goto_4

    :catch_c
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_d
    move-exception v0

    move-object v0, v4

    goto :goto_4

    :catch_e
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    goto :goto_4

    :catch_f
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :catch_10
    move-exception v0

    move-object v0, v4

    goto :goto_4
.end method

.method private final p()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->j:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/google/android/gms/ads/c/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/c/a;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a;->a()V

    .line 258
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private final q()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 4

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 289
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 292
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/cma;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->p:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/djx;

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/djx;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method final a(IZ)V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->o:Z

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->c:Ljava/util/concurrent/ExecutorService;

    .line 267
    new-instance v1, Lcom/google/android/gms/internal/ads/dio;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dio;-><init>(Lcom/google/android/gms/internal/ads/din;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 268
    if-nez p1, :cond_0

    .line 269
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->l:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->p:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->p:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/djx;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/djx;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(IZ)Lcom/google/android/gms/internal/ads/atw$a;
    .locals 2

    .prologue
    .line 271
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 272
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/din;->q()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->q:Z

    return v0
.end method

.method public final c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final d()Ldalvik/system/DexClassLoader;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->d:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/cvn;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->e:Lcom/google/android/gms/internal/ads/cvn;

    return-object v0
.end method

.method public final f()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->f:[B

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->n:Z

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/chc;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->m:Lcom/google/android/gms/internal/ads/chc;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/din;->o:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->r:Lcom/google/android/gms/internal/ads/dil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dil;->a()Z

    move-result v0

    return v0
.end method

.method final k()Lcom/google/android/gms/internal/ads/dil;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->r:Lcom/google/android/gms/internal/ads/dil;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->k:Lcom/google/android/gms/internal/ads/atw$a;

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->l:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/ads/c/a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/din;->h:Z

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->g:Lcom/google/android/gms/ads/c/a;

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/din;->i:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    goto :goto_1

    .line 306
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final o()I
    .locals 2

    .prologue
    .line 312
    const/high16 v0, -0x80000000

    .line 314
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/din;->m:Lcom/google/android/gms/internal/ads/chc;

    .line 315
    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/chc;->a()I

    move-result v0

    .line 317
    :cond_0
    return v0
.end method

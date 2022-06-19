.class public final Lcom/google/android/gms/internal/ads/cnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/cnt;

.field private final d:Lcom/google/android/gms/internal/ads/clq;

.field private e:Lcom/google/android/gms/internal/ads/cni;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cnr;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cnt;Lcom/google/android/gms/internal/ads/clq;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->f:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cnr;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cnr;->c:Lcom/google/android/gms/internal/ads/cnt;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    .line 6
    return-void
.end method

.method private final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cng;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/cng;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, [B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 28
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cnr;->b:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "msa-r"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cng;->d()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnk;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/ads/cng;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cng;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cng;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnk;

    const/16 v1, 0xfaa

    const-string/jumbo v2, "mc"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cng;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/cnr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    if-eqz v0, :cond_1

    .line 25
    :goto_0
    monitor-exit p0

    return-object v0

    .line 13
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cng;->c()Ljava/io/File;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_2
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cng;->b()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnr;->b:Landroid/content/Context;

    .line 19
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    const-string/jumbo v0, "com.google.ccc.abuse.droidguard.DroidGuard"

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 24
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/ads/cnr;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnk;

    const/16 v2, 0x7d8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/clw;
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cnr;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cng;)V
    .locals 10

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 36
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cnr;->b(Lcom/google/android/gms/internal/ads/cng;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/cnr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cng;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/google/android/gms/internal/ads/cni;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cnr;->c:Lcom/google/android/gms/internal/ads/cnt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    invoke-direct {v1, v0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/cni;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/cng;Lcom/google/android/gms/internal/ads/cnt;Lcom/google/android/gms/internal/ads/clq;)V

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cni;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnk;

    const/16 v1, 0xfa0

    const-string/jumbo v4, "init failed"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnk;->a()I

    move-result v4

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 62
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    .line 69
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cni;->d()I

    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnk;

    const/16 v4, 0xfa1

    const/16 v5, 0xf

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "ci: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :catch_1
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    const/16 v4, 0xfaa

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 68
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_0

    .line 47
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cnr;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 49
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cni;->c()V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    :cond_2
    :goto_1
    :try_start_5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;

    .line 54
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0xbb8

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 57
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/clq;->a(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 51
    :catch_2
    move-exception v0

    .line 52
    :try_start_7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnr;->d:Lcom/google/android/gms/internal/ads/clq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnk;->a()I

    move-result v6

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cng;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cnr;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnr;->e:Lcom/google/android/gms/internal/ads/cni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cni;->a()Lcom/google/android/gms/internal/ads/cng;

    move-result-object v0

    monitor-exit v1

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

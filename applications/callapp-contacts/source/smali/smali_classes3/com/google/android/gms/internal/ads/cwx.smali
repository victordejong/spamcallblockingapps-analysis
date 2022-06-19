.class public final Lcom/google/android/gms/internal/ads/cwx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/cww;

.field private final d:Lcom/google/android/gms/internal/ads/cuy;

.field private final e:Lcom/google/android/gms/internal/ads/cux;

.field private f:Lcom/google/android/gms/internal/ads/cwo;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cwx;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cww;Lcom/google/android/gms/internal/ads/cuy;Lcom/google/android/gms/internal/ads/cux;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cwx;->g:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwx;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cwx;->c:Lcom/google/android/gms/internal/ads/cww;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cwx;->e:Lcom/google/android/gms/internal/ads/cux;

    return-void
.end method

.method private final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cwn;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/cwn;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdww;
        }
    .end annotation

    const/4 v0, 0x6

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 32
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, [B

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/Object;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/os/Bundle;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cwx;->b:Landroid/content/Context;

    aput-object v1, v0, v3

    const-string v1, "msa-r"

    aput-object v1, v0, v4

    .line 4010
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cwn;->e:[B

    if-nez v1, :cond_0

    .line 4011
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cwn;->d:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cwp;->b(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/cwn;->e:[B

    .line 4012
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cwn;->e:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object p2, v2

    goto :goto_0

    .line 4014
    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cwn;->e:[B

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cwn;->e:[B

    array-length p2, p2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    :goto_0
    aput-object p2, v0, v5

    aput-object v2, v0, v6

    .line 35
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    aput-object p2, v0, v7

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v8

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdww;

    const/16 v0, 0x7d4

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/ads/cwn;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cwn;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdww;
        }
    .end annotation

    monitor-enter p0

    .line 1007
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    if-eqz v0, :cond_3

    .line 2007
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    .line 3005
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/cwx;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 13
    monitor-exit p0

    return-object v2

    :cond_0
    const/16 v2, 0x7ea

    .line 14
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cwx;->e:Lcom/google/android/gms/internal/ads/cux;

    .line 3008
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/cwn;->b:Ljava/io/File;

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cux;->a(Ljava/io/File;)Z

    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 3009
    :try_start_2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cwn;->c:Ljava/io/File;

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_1
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 4008
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cwn;->b:Ljava/io/File;

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cwx;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, p1, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string p1, "com.google.ccc.abuse.droidguard.DroidGuard"

    .line 26
    invoke-virtual {v3, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 29
    :goto_0
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdww;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_2
    :try_start_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdww;

    const-string v0, "VM did not pass signature verification"

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception p1

    .line 18
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdww;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdww;

    const/16 v0, 0xfaa

    const-string v1, "mc"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cvf;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwx;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cwx;->f:Lcom/google/android/gms/internal/ads/cwo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cwn;)V
    .locals 8

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cwx;->b(Lcom/google/android/gms/internal/ads/cwn;)Ljava/lang/Class;

    move-result-object v2

    .line 43
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/cwx;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cwn;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    new-instance v3, Lcom/google/android/gms/internal/ads/cwo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cwx;->c:Lcom/google/android/gms/internal/ads/cww;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    invoke-direct {v3, v2, p1, v4, v5}, Lcom/google/android/gms/internal/ads/cwo;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/cwn;Lcom/google/android/gms/internal/ads/cww;Lcom/google/android/gms/internal/ads/cuy;)V

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cwo;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cwo;->c()I

    move-result p1

    if-nez p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwx;->g:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdww; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cwx;->f:Lcom/google/android/gms/internal/ads/cwo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 55
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cwo;->b()V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdww; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 58
    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    .line 5007
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzdww;->a:I

    const-wide/16 v6, -0x1

    .line 58
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    .line 59
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cwx;->f:Lcom/google/android/gms/internal/ads/cwo;

    .line 60
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v2, 0xbb8

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 63
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdww; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catchall_0
    move-exception v2

    .line 60
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 49
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdww;

    const/16 v3, 0xfa1

    const/16 v4, 0xf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ci: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/String;)V

    throw v2

    .line 46
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdww;

    const/16 v2, 0xfa0

    const-string v3, "init failed"

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzdww; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p1

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v3, 0xfaa

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 74
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    return-void

    :catch_2
    move-exception p1

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cwx;->d:Lcom/google/android/gms/internal/ads/cuy;

    .line 6007
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdww;->a:I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 68
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cwn;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwx;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cwx;->f:Lcom/google/android/gms/internal/ads/cwo;

    if-eqz v1, :cond_0

    .line 7007
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cwo;->a:Lcom/google/android/gms/internal/ads/cwn;

    .line 81
    monitor-exit v0

    return-object v1

    .line 82
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

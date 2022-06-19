.class public final Lcom/google/android/gms/internal/ads/cmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/clq;

.field private final c:Lcom/google/android/gms/internal/ads/clu;

.field private final d:Lcom/google/android/gms/internal/ads/cmk;

.field private final e:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/internal/ads/atw$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/cmn;

.field private final g:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/internal/ads/atw$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;)V
    .locals 7

    .prologue
    .line 1
    new-instance v5, Lcom/google/android/gms/internal/ads/cmn;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/cmn;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/cmk;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cmk;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cmh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;Lcom/google/android/gms/internal/ads/cmn;Lcom/google/android/gms/internal/ads/cmk;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;Lcom/google/android/gms/internal/ads/cmn;Lcom/google/android/gms/internal/ads/cmk;)V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cmh;->b:Lcom/google/android/gms/internal/ads/clq;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cmh;->c:Lcom/google/android/gms/internal/ads/clu;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cmh;->f:Lcom/google/android/gms/internal/ads/cmn;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cmh;->d:Lcom/google/android/gms/internal/ads/cmk;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cmf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cmf;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 10
    invoke-static {p2, v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cmj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cmj;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->e:Lcom/google/android/gms/tasks/g;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cmi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cmi;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 13
    invoke-static {p2, v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cml;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cml;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->g:Lcom/google/android/gms/tasks/g;

    .line 15
    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/internal/ads/atw$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/internal/ads/atw$a;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/atw$a;"
        }
    .end annotation

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const-wide/16 v0, 0xc8

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$a;->h()Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v0

    const-string/jumbo v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_1
    monitor-exit p0

    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :goto_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cmh;->c(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 23
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private final c(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 16
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->b:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    .line 19
    return-void
.end method

.method private final declared-synchronized g()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->g:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized h()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->e:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmh;->g()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cmh;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmh;->h()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cmh;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmh;->h()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->d()Lcom/google/android/gms/internal/ads/atw$a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a$c;->a()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmh;->h()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->e()Z

    move-result v0

    return v0
.end method

.method final synthetic e()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 3

    .prologue
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cma;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method final synthetic f()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 8

    .prologue
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->c:Lcom/google/android/gms/internal/ads/clu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/clu;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmh;->a:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$a;->h()Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/google/android/gms/ads/c/a;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/c/a;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a;->a()V

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a;->b()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    const-string/jumbo v3, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 54
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 55
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 56
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 58
    const/16 v0, 0xb

    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Z)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$c;->b:Lcom/google/android/gms/internal/ads/atw$a$c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Lcom/google/android/gms/internal/ads/atw$a$c;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;

    .line 68
    :goto_0
    return-object v0

    .line 67
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$a;->i()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    goto :goto_0
.end method

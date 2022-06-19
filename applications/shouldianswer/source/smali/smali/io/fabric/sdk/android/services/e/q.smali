.class public Lio/fabric/sdk/android/services/e/q;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/e/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/fabric/sdk/android/services/e/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lio/fabric/sdk/android/services/e/s;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/e/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/e/q;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/e/q;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/e/q$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/fabric/sdk/android/services/e/q;-><init>()V

    return-void
.end method

.method public static a()Lio/fabric/sdk/android/services/e/q;
    .locals 1

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/services/e/q$a;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/fabric/sdk/android/services/e/t;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lio/fabric/sdk/android/services/e/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/b/p;Lio/fabric/sdk/android/services/network/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/e/q;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v2, v1, Lio/fabric/sdk/android/services/e/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 72
    monitor-exit p0

    return-object v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v2, v1, Lio/fabric/sdk/android/services/e/q;->c:Lio/fabric/sdk/android/services/e/s;

    const/4 v9, 0x1

    if-nez v2, :cond_1

    .line 76
    invoke-virtual/range {p1 .. p1}, Lio/fabric/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->c()Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Lio/fabric/sdk/android/services/b/g;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/b/g;-><init>()V

    invoke-virtual {v4, v2}, Lio/fabric/sdk/android/services/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 79
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->i()Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v5, Lio/fabric/sdk/android/services/b/t;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/b/t;-><init>()V

    .line 81
    new-instance v6, Lio/fabric/sdk/android/services/e/k;

    invoke-direct {v6}, Lio/fabric/sdk/android/services/e/k;-><init>()V

    .line 82
    new-instance v7, Lio/fabric/sdk/android/services/e/i;

    invoke-direct {v7, v0}, Lio/fabric/sdk/android/services/e/i;-><init>(Lio/fabric/sdk/android/h;)V

    .line 83
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 84
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v8, Lio/fabric/sdk/android/services/e/l;

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-direct {v8, v0, v12, v3, v10}, Lio/fabric/sdk/android/services/e/l;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->g()Ljava/lang/String;

    move-result-object v12

    .line 90
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->f()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->e()Ljava/lang/String;

    move-result-object v14

    .line 92
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/b/p;->b()Ljava/lang/String;

    move-result-object v15

    new-array v10, v9, [Ljava/lang/String;

    .line 94
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v13

    .line 93
    invoke-static {v10}, Lio/fabric/sdk/android/services/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 95
    invoke-static {v4}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/l;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/l;->a()I

    move-result v19

    .line 98
    new-instance v4, Lio/fabric/sdk/android/services/e/w;

    move-object v10, v4

    move-object v13, v3

    move-object/from16 v17, p5

    move-object/from16 v18, p4

    invoke-direct/range {v10 .. v20}, Lio/fabric/sdk/android/services/e/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    new-instance v10, Lio/fabric/sdk/android/services/e/j;

    move-object v2, v10

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lio/fabric/sdk/android/services/e/j;-><init>(Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/e/w;Lio/fabric/sdk/android/services/b/k;Lio/fabric/sdk/android/services/e/v;Lio/fabric/sdk/android/services/e/g;Lio/fabric/sdk/android/services/e/x;)V

    iput-object v10, v1, Lio/fabric/sdk/android/services/e/q;->c:Lio/fabric/sdk/android/services/e/s;

    .line 106
    :cond_1
    iput-boolean v9, v1, Lio/fabric/sdk/android/services/e/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lio/fabric/sdk/android/services/e/t;
    .locals 3

    .line 139
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 140
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/e/t;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 142
    :catch_0
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/q;->c:Lio/fabric/sdk/android/services/e/s;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/s;->a()Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 5

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/q;->c:Lio/fabric/sdk/android/services/e/s;

    sget-object v1, Lio/fabric/sdk/android/services/e/r;->b:Lio/fabric/sdk/android/services/e/r;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/e/s;->a(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/t;)V

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

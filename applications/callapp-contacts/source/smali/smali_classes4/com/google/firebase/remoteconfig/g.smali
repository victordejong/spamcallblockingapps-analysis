.class public Lcom/google/firebase/remoteconfig/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/util/f;

.field private static final b:Ljava/util/Random;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lcom/google/firebase/b;

.field private final g:Lcom/google/firebase/installations/h;

.field private final h:Lcom/google/firebase/abt/b;

.field private final i:Lcom/google/firebase/analytics/connector/a;

.field private final j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/g;->a:Lcom/google/android/gms/common/util/f;

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/g;->b:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Lcom/google/firebase/analytics/connector/a;)V
    .locals 8

    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 95
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Lcom/google/firebase/analytics/connector/a;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Lcom/google/firebase/analytics/connector/a;Z)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/g;->c:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/g;->k:Ljava/util/Map;

    .line 115
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/g;->d:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/g;->e:Ljava/util/concurrent/ExecutorService;

    .line 117
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    .line 118
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/g;->g:Lcom/google/firebase/installations/h;

    .line 119
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/g;->h:Lcom/google/firebase/abt/b;

    .line 120
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/g;->i:Lcom/google/firebase/analytics/connector/a;

    .line 122
    invoke-virtual {p3}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object p1

    .line 1183
    iget-object p1, p1, Lcom/google/firebase/h;->b:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/g;->j:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 129
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/h;->a(Lcom/google/firebase/remoteconfig/g;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/google/firebase/b;Ljava/lang/String;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/l;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/a;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    new-instance v2, Lcom/google/firebase/remoteconfig/a;

    iget-object v4, v1, Lcom/google/firebase/remoteconfig/g;->d:Landroid/content/Context;

    const-string v3, "firebase"

    .line 4291
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/firebase/remoteconfig/g;->a(Lcom/google/firebase/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move-object/from16 v7, p4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move-object v7, v3

    :goto_1
    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 194
    invoke-direct/range {v3 .. v14}, Lcom/google/firebase/remoteconfig/a;-><init>(Landroid/content/Context;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/l;Lcom/google/firebase/remoteconfig/internal/n;)V

    .line 4550
    iget-object v3, v2, Lcom/google/firebase/remoteconfig/a;->d:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    .line 4551
    iget-object v3, v2, Lcom/google/firebase/remoteconfig/a;->e:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    .line 4552
    iget-object v3, v2, Lcom/google/firebase/remoteconfig/a;->c:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    .line 203
    iget-object v3, v1, Lcom/google/firebase/remoteconfig/g;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/a;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    .line 214
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/g;->j:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    .line 215
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/g;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/o;

    move-result-object p1

    .line 218
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/a;->a(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/g;
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 238
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/g;

    iget-object v3, v1, Lcom/google/firebase/remoteconfig/g;->g:Lcom/google/firebase/installations/h;

    .line 240
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    invoke-static {v2}, Lcom/google/firebase/remoteconfig/g;->a(Lcom/google/firebase/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->i:Lcom/google/firebase/analytics/connector/a;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    iget-object v5, v1, Lcom/google/firebase/remoteconfig/g;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v6, Lcom/google/firebase/remoteconfig/g;->a:Lcom/google/android/gms/common/util/f;

    sget-object v7, Lcom/google/firebase/remoteconfig/g;->b:Ljava/util/Random;

    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    .line 245
    invoke-virtual {v2}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v2

    .line 5177
    iget-object v11, v2, Lcom/google/firebase/h;->a:Ljava/lang/String;

    .line 5225
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    invoke-virtual {v2}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v2

    .line 6183
    iget-object v10, v2, Lcom/google/firebase/h;->b:Ljava/lang/String;

    .line 5226
    new-instance v17, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v9, v1, Lcom/google/firebase/remoteconfig/g;->d:Landroid/content/Context;

    .line 5231
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/remoteconfig/internal/n;->a()J

    move-result-wide v13

    .line 5232
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/remoteconfig/internal/n;->a()J

    move-result-wide v15

    move-object/from16 v8, v17

    move-object/from16 v12, p1

    invoke-direct/range {v8 .. v16}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 245
    iget-object v11, v1, Lcom/google/firebase/remoteconfig/g;->k:Ljava/util/Map;

    move-object v2, v0

    move-object/from16 v8, p2

    move-object/from16 v9, v17

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/remoteconfig/internal/g;-><init>(Lcom/google/firebase/installations/h;Lcom/google/firebase/analytics/connector/a;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/f;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/google/firebase/b;)Z
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "fetch"

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v7

    const-string v0, "activate"

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v8

    const-string v0, "defaults"

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v9

    .line 152
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/g;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/g;->j:Ljava/lang/String;

    const-string v2, "%s_%s_%s_%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "frc"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object p1, v3, v1

    const/4 v1, 0x3

    const-string v4, "settings"

    aput-object v4, v3, v1

    .line 1259
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1262
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    new-instance v12, Lcom/google/firebase/remoteconfig/internal/n;

    invoke-direct {v12, v0}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Landroid/content/SharedPreferences;)V

    .line 2252
    new-instance v11, Lcom/google/firebase/remoteconfig/internal/l;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/g;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v11, v0, v8, v9}, Lcom/google/firebase/remoteconfig/internal/l;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;)V

    .line 155
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/g;->i:Lcom/google/firebase/analytics/connector/a;

    .line 2269
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/g;->a(Lcom/google/firebase/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "firebase"

    .line 2270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2272
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/p;

    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/p;-><init>(Lcom/google/firebase/analytics/connector/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3000
    new-instance v1, Lcom/google/firebase/remoteconfig/i;

    invoke-direct {v1, v0}, Lcom/google/firebase/remoteconfig/i;-><init>(Lcom/google/firebase/remoteconfig/internal/p;)V

    .line 3350
    iget-object v0, v11, Lcom/google/firebase/remoteconfig/internal/l;->d:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3351
    :try_start_1
    iget-object v2, v11, Lcom/google/firebase/remoteconfig/internal/l;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3352
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 161
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/g;->f:Lcom/google/firebase/b;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/g;->g:Lcom/google/firebase/installations/h;

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/g;->h:Lcom/google/firebase/abt/b;

    iget-object v6, p0, Lcom/google/firebase/remoteconfig/g;->e:Ljava/util/concurrent/ExecutorService;

    .line 170
    invoke-direct {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/g;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    .line 161
    invoke-direct/range {v1 .. v12}, Lcom/google/firebase/remoteconfig/g;->a(Lcom/google/firebase/b;Ljava/lang/String;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/l;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/a;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

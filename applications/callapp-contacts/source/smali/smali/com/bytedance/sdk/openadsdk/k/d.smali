.class public Lcom/bytedance/sdk/openadsdk/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/d$b;,
        Lcom/bytedance/sdk/openadsdk/k/d$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/k/d;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/k/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/k/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/k/d$b<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/k/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/k/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/k/a/b;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bytedance/sdk/openadsdk/k/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/k/b$b;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/k/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/k/c;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x28000

    .line 39
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->a:I

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    .line 75
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/k/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/d;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->j:Lcom/bytedance/sdk/openadsdk/k/b$b;

    .line 94
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/k/d$1;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->c:Lcom/bytedance/sdk/openadsdk/k/d$b;

    .line 95
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 96
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/d$b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/k/d$b;)Ljava/util/concurrent/ExecutorService;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/k/d$b<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 508
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a()I

    move-result v0

    const/4 v1, 0x4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v0

    .line 516
    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/k/d$4;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/k/d$4;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/k/d$5;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/k/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/k/d$b;)V

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/k/d;)Lcom/bytedance/sdk/openadsdk/k/d$b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->c:Lcom/bytedance/sdk/openadsdk/k/d$b;

    return-object p0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/k/d;
    .locals 2

    .line 124
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/d;->e:Lcom/bytedance/sdk/openadsdk/k/d;

    if-nez v0, :cond_1

    .line 125
    const-class v0, Lcom/bytedance/sdk/openadsdk/k/d;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/k/d;->e:Lcom/bytedance/sdk/openadsdk/k/d;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/k/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/k/d;->e:Lcom/bytedance/sdk/openadsdk/k/d;

    .line 129
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/d;->e:Lcom/bytedance/sdk/openadsdk/k/d;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/k/c;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->k:Lcom/bytedance/sdk/openadsdk/k/c;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 67
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->a:I

    .line 70
    :cond_0
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    return-void
.end method

.method public declared-synchronized a(JJJ)V
    .locals 0

    monitor-enter p0

    .line 104
    monitor-exit p0

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/k/a/c;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->g:Lcom/bytedance/sdk/openadsdk/k/a/c;

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/k/b/c;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->f:Lcom/bytedance/sdk/openadsdk/k/b/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0, v0, p1}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 7

    .line 178
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/d;->m:Ljava/lang/String;

    .line 179
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->n:Z

    .line 181
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 187
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/k/d$a;

    .line 196
    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->a:Z

    iget-boolean v2, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->b:Z

    iget v3, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->c:I

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->e:Ljava/util/Map;

    iget-object v6, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 198
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCurrentPlayKey, resume preload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 192
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 204
    :cond_3
    sget v1, Lcom/bytedance/sdk/openadsdk/k/e;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 247
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 248
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b/b;->a(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 250
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/k/b;

    .line 252
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    .line 254
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 252
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void

    .line 208
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    monitor-enter p1

    const/4 p2, 0x0

    .line 209
    :try_start_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_3
    if-ge p2, v3, :cond_b

    .line 210
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_a

    .line 213
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    if-nez v0, :cond_8

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 217
    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 223
    :cond_b
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_10

    .line 225
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 226
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/k/b;

    .line 227
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    .line 229
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_c

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setCurrentPlayKey, cancel preload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    if-ne v1, v2, :cond_10

    .line 235
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    monitor-enter p1

    .line 236
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/k/b;

    .line 237
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/k/d$a;

    if-eqz v0, :cond_e

    .line 239
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 242
    :cond_f
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    :cond_10
    return-void

    :catchall_3
    move-exception p2

    .line 223
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p2
.end method

.method public varargs a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 285
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->h:Lcom/bytedance/sdk/openadsdk/k/a/b;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->g:Lcom/bytedance/sdk/openadsdk/k/a/c;

    :goto_0
    move-object v11, v2

    .line 289
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/k/d;->f:Lcom/bytedance/sdk/openadsdk/k/b/c;

    if-eqz v11, :cond_14

    if-nez v12, :cond_1

    goto/16 :goto_6

    .line 296
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v10, :cond_13

    array-length v2, v10

    if-gtz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-gtz p3, :cond_3

    .line 301
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->a:I

    move v13, v2

    goto :goto_1

    :cond_3
    move/from16 v13, p3

    :goto_1
    if-eqz p2, :cond_4

    move-object v14, v9

    goto :goto_2

    .line 304
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/k/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 306
    :goto_2
    invoke-virtual {v11, v14}, Lcom/bytedance/sdk/openadsdk/k/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v13

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    .line 308
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "no need preload, file size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", need preload size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    return-void

    .line 314
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/f;->a()Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/k/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/bytedance/sdk/openadsdk/k/f;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 316
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_7

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "has running proxy task, skip preload for key: "

    .line 317
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 323
    :cond_8
    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    monitor-enter v15

    .line 324
    :try_start_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->b:Landroid/util/SparseArray;

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    .line 326
    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 327
    monitor-exit v15

    return-void

    .line 330
    :cond_a
    new-instance v6, Lcom/bytedance/sdk/openadsdk/k/d$a;

    move-object v2, v6

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v13

    move-object v10, v6

    move-object/from16 v6, p4

    move-object/from16 v17, v7

    move-object/from16 v7, p5

    move/from16 p3, v13

    const/4 v13, 0x1

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/k/d$a;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 331
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->m:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 333
    sget v3, Lcom/bytedance/sdk/openadsdk/k/e;->h:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 336
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/k/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_b

    const-string v0, "TAG_PROXY_Preloader"

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel preload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add to pending queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_b
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 338
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 346
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_d

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cancel preload: "

    .line 347
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_d
    monitor-exit v15

    return-void

    :cond_e
    if-ne v3, v13, :cond_10

    .line 350
    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/k/d;->n:Z

    if-ne v3, v0, :cond_10

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 351
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_f

    const-string v0, "TAG_PROXY_Preloader"

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel preload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", it is playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_f
    monitor-exit v15

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 359
    invoke-static/range {p5 .. p5}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_12

    .line 363
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/k/i$b;

    if-eqz v5, :cond_11

    .line 365
    new-instance v6, Lcom/bytedance/sdk/openadsdk/k/i$b;

    iget-object v7, v5, Lcom/bytedance/sdk/openadsdk/k/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/k/i$b;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/k/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 369
    :cond_12
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/b$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;-><init>()V

    .line 371
    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/a/a;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/b/c;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v9}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/k/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/l;

    .line 373
    invoke-static/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/l;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/l;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    .line 374
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v0

    move/from16 v2, p3

    .line 375
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(I)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->j:Lcom/bytedance/sdk/openadsdk/k/b$b;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/b$b;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a()Lcom/bytedance/sdk/openadsdk/k/b;

    move-result-object v0

    move-object/from16 v2, v17

    .line 378
    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 380
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/k/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 379
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_13
    :goto_5
    return-void

    .line 291
    :cond_14
    :goto_6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_15

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cache or videoProxyDB null in Preloader!!!"

    .line 292
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public varargs a(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 278
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 1

    .line 387
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/k/d;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()Lcom/bytedance/sdk/openadsdk/k/c;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d;->l:Lcom/bytedance/sdk/openadsdk/k/c;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 408
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/k/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

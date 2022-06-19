.class public Lcom/bytedance/sdk/openadsdk/k/a/c;
.super Lcom/bytedance/sdk/openadsdk/k/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/a/c$a;,
        Lcom/bytedance/sdk/openadsdk/k/a/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/k/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:J

.field private volatile h:F

.field private final i:Lcom/bytedance/sdk/openadsdk/k/a/c$b;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Ljava/lang/Runnable;

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/a/a;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->f:Ljava/util/Set;

    const-wide/32 v0, 0x6400000

    .line 45
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->g:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 46
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->h:F

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/c$b;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->i:Lcom/bytedance/sdk/openadsdk/k/a/c$b;

    .line 50
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/k/a/c$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/k/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;)V

    new-instance v10, Lcom/bytedance/sdk/openadsdk/k/a/c$2;

    invoke-direct {v10, p0}, Lcom/bytedance/sdk/openadsdk/k/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->j:Ljava/util/concurrent/Executor;

    .line 67
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/a/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/k/a/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->k:Ljava/lang/Runnable;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->l:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->a:Ljava/io/File;

    .line 105
    new-instance p1, Lcom/bytedance/sdk/openadsdk/k/a/c$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/k/a/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-string p1, " dir null"

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exists: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDirectory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canWrite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dir error!  "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/a/c;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->g:J

    return-wide v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 360
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/a/c;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/a/c;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/k/a/c;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->j:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    array-length v1, v0

    if-lez v1, :cond_2

    .line 119
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/a/c$5;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 150
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/a/c;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 148
    throw v0
.end method

.method private b(J)V
    .locals 12

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-long/2addr v1, v5

    goto :goto_0

    :cond_0
    cmp-long v4, v1, p1

    if-gtz v4, :cond_1

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_1
    long-to-float p1, p1

    .line 307
    :try_start_1
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->h:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    .line 308
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :try_start_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    if-eqz v6, :cond_3

    .line 312
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 313
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->i:Lcom/bytedance/sdk/openadsdk/k/a/c$b;

    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/k/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/k/a/c$b;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 314
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 316
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 318
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sub-long/2addr v1, v7

    .line 321
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    cmp-long v5, v1, p1

    if-gtz v5, :cond_2

    .line 333
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 339
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 337
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object v4, v3

    .line 342
    :goto_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/k/a/c$a;

    .line 343
    invoke-interface {p2, v4}, Lcom/bytedance/sdk/openadsdk/k/a/c$a;->a(Ljava/util/Set;)V

    goto :goto_5

    .line 346
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->j:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/k/a/c$7;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/k/a/c$7;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;Ljava/util/HashSet;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 339
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 340
    throw p1
.end method

.method private c()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/k/a/c;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/a/c;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/d;->c()Lcom/bytedance/sdk/openadsdk/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/d;->d()V

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/k/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/a/c$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/k/a/c$6;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->g:J

    .line 155
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/a/c;->c()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/k/a/c$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->i:Lcom/bytedance/sdk/openadsdk/k/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/a/c$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->i:Lcom/bytedance/sdk/openadsdk/k/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/a/c$b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 255
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v0, :cond_0

    return-object v0

    .line 261
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 264
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 267
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/k/a/c$a;

    .line 268
    invoke-interface {v2, p1}, Lcom/bytedance/sdk/openadsdk/k/a/c$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/a/c;->c()V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

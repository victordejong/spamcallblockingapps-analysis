.class public Lcom/bytedance/sdk/openadsdk/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/bytedance/sdk/openadsdk/l/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/l/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_core_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_max_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/l/a;JJ)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/l/a/a;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getMaximumPoolSize()I

    move-result v4

    move-object v1, v9

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/l/a/a;-><init>(Ljava/lang/String;IIJJ)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 38
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/l/d;->a(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 23

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->g()Lcom/bytedance/sdk/openadsdk/l/c;

    move-result-object v1

    if-nez p0, :cond_0

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_e

    :cond_0
    if-eqz v1, :cond_e

    .line 49
    sget-object v2, Lcom/bytedance/sdk/openadsdk/l/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    monitor-exit v2

    return-void

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/l/a/a;

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/l/a/a;

    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 56
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 63
    aget-object v7, v0, v6

    .line 64
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->b()I

    move-result v9

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->c()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/bytedance/sdk/openadsdk/l/d;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/sdk/openadsdk/l/a/c;

    if-nez v9, :cond_2

    .line 68
    new-instance v9, Lcom/bytedance/sdk/openadsdk/l/a/c;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->b()I

    move-result v12

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->c()I

    move-result v13

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->d()J

    move-result-wide v14

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->d()J

    move-result-wide v16

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->e()J

    move-result-wide v18

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->e()J

    move-result-wide v20

    const/16 v22, 0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v22}, Lcom/bytedance/sdk/openadsdk/l/a/c;-><init>(Ljava/lang/String;IIJJJJI)V

    .line 69
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/l/a/c;->b()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_3

    .line 74
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/l/a/c;->a(J)V

    .line 76
    :cond_3
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/l/a/c;->b(J)V

    .line 78
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->e()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/l/a/c;->c()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_4

    .line 79
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->e()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/l/a/c;->c(J)V

    .line 81
    :cond_4
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/l/a/a;->e()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/l/a/c;->d(J)V

    .line 82
    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/l/a/c;->a(I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/l/a/c;

    .line 87
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/l/a/c;->d()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/l/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 88
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/l/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "io"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "aidl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 93
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/l/a/c;->b(I)V

    goto :goto_3

    .line 90
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/l/a/c;->b(I)V

    .line 96
    :goto_3
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/c;->a(Lcom/bytedance/sdk/openadsdk/l/a/c;)V

    goto :goto_2

    .line 100
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "tt_pangle_thread_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 112
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_b

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    .line 116
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 118
    :goto_5
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 123
    :cond_c
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 125
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 135
    :cond_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/bytedance/sdk/openadsdk/l/a/b;

    invoke-direct {v2, v5, v0}, Lcom/bytedance/sdk/openadsdk/l/a/b;-><init>(ILjava/lang/String;)V

    .line 138
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/c;->a(Lcom/bytedance/sdk/openadsdk/l/a/b;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 56
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_e
    :goto_7
    return-void
.end method

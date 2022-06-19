.class Lcom/bytedance/sdk/openadsdk/l/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/l/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 47
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    move-object v1, p1

    .line 48
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 12

    .line 111
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "  maxSize="

    const/4 v3, 0x3

    const-string v4, " coreSize="

    const/4 v5, 0x1

    const-string v6, "afterExecute: reduce "

    const/4 v7, 0x6

    const-string v8, "ADThreadPoolExecutor"

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-nez v0, :cond_1

    const-string v0, "aidl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-ge p1, v11, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/openadsdk/l/a;->setCorePoolSize(I)V

    .line 134
    invoke-virtual {p0, v11}, Lcom/bytedance/sdk/openadsdk/l/a;->setMaximumPoolSize(I)V

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v6, p1, v9

    .line 135
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    aput-object p2, p1, v5

    aput-object v4, p1, v10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    aput-object v2, p1, v11

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getMaximumPoolSize()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v11, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p1

    if-eq p1, v10, :cond_2

    .line 144
    invoke-virtual {p0, v10}, Lcom/bytedance/sdk/openadsdk/l/a;->setCorePoolSize(I)V

    .line 145
    invoke-virtual {p0, v11}, Lcom/bytedance/sdk/openadsdk/l/a;->setMaximumPoolSize(I)V

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v6, p1, v9

    .line 146
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    aput-object p2, p1, v5

    aput-object v4, p1, v10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    aput-object v2, p1, v11

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getMaximumPoolSize()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 13

    .line 53
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/l/g;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/l/g;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/l/b;-><init>(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/l/a;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/a$1;

    const-string v1, "unknown"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/l/a;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 62
    new-instance p1, Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/l/b;-><init>(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/l/a;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    const-string v3, "  maxSize="

    const/4 v4, 0x3

    const-string v5, " coreSize="

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "execute: increase poolType =  "

    const/4 v9, 0x0

    const/4 v10, 0x6

    const-string v11, "ADThreadPoolExecutor"

    const/4 v12, 0x4

    if-nez v1, :cond_2

    const-string v1, "aidl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 84
    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p1

    if-eq p1, v12, :cond_3

    .line 86
    :try_start_0
    sget p1, Lcom/bytedance/sdk/openadsdk/l/e;->a:I

    add-int/2addr p1, v12

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->setMaximumPoolSize(I)V

    .line 87
    invoke-virtual {p0, v12}, Lcom/bytedance/sdk/openadsdk/l/a;->setCorePoolSize(I)V

    new-array p1, v10, [Ljava/lang/Object;

    aput-object v8, p1, v9

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    aput-object v0, p1, v7

    aput-object v5, p1, v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    aput-object v3, p1, v12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getMaximumPoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_2
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result p1

    if-eq p1, v12, :cond_3

    .line 97
    sget p1, Lcom/bytedance/sdk/openadsdk/l/e;->a:I

    add-int/2addr p1, v12

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->setMaximumPoolSize(I)V

    .line 98
    invoke-virtual {p0, v12}, Lcom/bytedance/sdk/openadsdk/l/a;->setCorePoolSize(I)V

    new-array p1, v10, [Ljava/lang/Object;

    aput-object v8, p1, v9

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    aput-object v0, p1, v7

    aput-object v5, p1, v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getCorePoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    aput-object v3, p1, v12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/a;->getMaximumPoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

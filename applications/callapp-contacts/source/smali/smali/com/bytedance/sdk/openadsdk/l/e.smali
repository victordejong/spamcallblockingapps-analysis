.class public Lcom/bytedance/sdk/openadsdk/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static b:Lcom/bytedance/sdk/openadsdk/l/c;

.field public static c:Z

.field private static volatile d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile g:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/l/e;->a:I

    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/l/e;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/bytedance/sdk/openadsdk/l/e;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;-><init>()V

    const-string v2, "io"

    .line 62
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const v2, 0x7fffffff

    .line 64
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->b(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const-wide/16 v2, 0x14

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(J)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 68
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a()Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v1

    .line 71
    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/l/g;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 82
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/l/g;I)V
    .locals 0

    .line 89
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 92
    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_1

    .line 93
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 204
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/l/e;->c:Z

    return-void
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 101
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lcom/bytedance/sdk/openadsdk/l/e;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;-><init>()V

    const-string v2, "log"

    .line 105
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const/4 v2, 0x2

    .line 106
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const/4 v2, 0x4

    .line 107
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->b(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const-wide/16 v2, 0x14

    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(J)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 109
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 111
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a()Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v1

    .line 114
    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/l/g;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->b()Ljava/util/concurrent/ExecutorService;

    .line 125
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/l/g;I)V
    .locals 0

    .line 155
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 159
    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_1

    .line 160
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static c()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 167
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 168
    const-class v0, Lcom/bytedance/sdk/openadsdk/l/e;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;-><init>()V

    const-string v2, "aidl"

    .line 171
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const/4 v2, 0x4

    .line 173
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->b(I)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 174
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(J)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 176
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/l/a$a;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/a$a;->a()Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v1

    .line 179
    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 181
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 183
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 189
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 190
    const-class v0, Lcom/bytedance/sdk/openadsdk/l/e;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/h;

    const/4 v2, 0x5

    const-string v3, "scheduled"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/h;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/e;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 194
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 200
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/l/e;->c:Z

    return v0
.end method

.method public static f()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/l/e$1;-><init>()V

    return-object v0
.end method

.method public static g()Lcom/bytedance/sdk/openadsdk/l/c;
    .locals 1

    .line 217
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/e;->b:Lcom/bytedance/sdk/openadsdk/l/c;

    return-object v0
.end method

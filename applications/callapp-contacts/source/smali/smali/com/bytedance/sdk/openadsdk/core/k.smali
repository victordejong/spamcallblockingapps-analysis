.class public Lcom/bytedance/sdk/openadsdk/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z = false

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile c:Z

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile e:Landroid/os/HandlerThread;

.field private static volatile f:Landroid/os/Handler;

.field private static volatile g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->c:Z

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    .line 44
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->g:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tt_pangle_thread_init"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 64
    :cond_1
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/d;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/b;)V

    const/4 v1, 0x1

    .line 65
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Z)V

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Landroid/app/Application;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a()Lcom/bytedance/sdk/openadsdk/utils/ac;

    .line 75
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->b(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a()V

    .line 79
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q;->a()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->g()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/m/a;->a()V

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a()V

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b()V

    return-void
.end method

.method public static b()Landroid/os/Handler;
    .locals 4

    .line 211
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    :cond_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 213
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "tt_pangle_thread_init"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 215
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 216
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->e:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->g:Landroid/os/Handler;

    .line 218
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->g:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 218
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()Landroid/os/Handler;
    .locals 3

    .line 225
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 226
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->f:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->f:Landroid/os/Handler;

    .line 230
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 232
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

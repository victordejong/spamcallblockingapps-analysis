.class Lcom/bytedance/sdk/openadsdk/k/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/f;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "TAG_PROXY_ProxyServer"

    const-string v1, "127.0.0.1"

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x32

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Lcom/bytedance/sdk/openadsdk/k/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/f;->c(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Lcom/bytedance/sdk/openadsdk/k/f;I)I

    .line 217
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/f;->d(Lcom/bytedance/sdk/openadsdk/k/f;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v0, "socket not bound"

    const-string v1, ""

    .line 219
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Lcom/bytedance/sdk/openadsdk/k/f;)V

    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/f;->d(Lcom/bytedance/sdk/openadsdk/k/f;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/j;->a(Ljava/lang/String;I)V

    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/f;->e(Lcom/bytedance/sdk/openadsdk/k/f;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/f;->f(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 234
    :cond_2
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    .line 241
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/f;->f(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_4

    .line 244
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/f;->c(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :try_start_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/f;->g(Lcom/bytedance/sdk/openadsdk/k/f;)Lcom/bytedance/sdk/openadsdk/k/b/c;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 260
    new-instance v4, Lcom/bytedance/sdk/openadsdk/k/g$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/k/g$a;-><init>()V

    .line 262
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a(Lcom/bytedance/sdk/openadsdk/k/b/c;)Lcom/bytedance/sdk/openadsdk/k/g$a;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    .line 263
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/k/f;->i(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/openadsdk/k/g$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/k/g$a;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/f;->h(Lcom/bytedance/sdk/openadsdk/k/f;)Lcom/bytedance/sdk/openadsdk/k/g$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a(Lcom/bytedance/sdk/openadsdk/k/g$c;)Lcom/bytedance/sdk/openadsdk/k/g$a;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a()Lcom/bytedance/sdk/openadsdk/k/g;

    move-result-object v1

    .line 265
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/f;->i(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "accept error"

    .line 247
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x3

    if-gt v6, v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 272
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "error"

    .line 274
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Lcom/bytedance/sdk/openadsdk/k/f;)V

    return-void

    :catch_1
    move-exception v1

    .line 208
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_5

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create ServerSocket error!  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create ServerSocket error"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f$3;->a:Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Lcom/bytedance/sdk/openadsdk/k/f;)V

    return-void
.end method

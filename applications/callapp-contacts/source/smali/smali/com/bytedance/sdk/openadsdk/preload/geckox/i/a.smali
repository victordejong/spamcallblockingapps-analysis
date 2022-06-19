.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;


# instance fields
.field protected a:Lcom/bytedance/sdk/a/b/v;

.field protected b:Lcom/bytedance/sdk/a/b/v;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;->a:Lcom/bytedance/sdk/a/b/v;

    .line 32
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 34
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;->b:Lcom/bytedance/sdk/a/b/v;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "application/json; charset=utf-8"

    .line 71
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object v0

    .line 72
    invoke-static {v0, p2}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/Map;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;JLcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 88
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;->b:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p3, 0x800

    :try_start_2
    new-array v0, p3, [B

    .line 95
    :goto_0
    invoke-virtual {v2, v0, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 96
    invoke-virtual {p4, v0, p2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    return-void

    :catchall_0
    move-exception p1

    move-object p3, v2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object p3, v2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p4

    move-object p2, p4

    const/4 v1, 0x0

    .line 99
    :goto_1
    :try_start_3
    new-instance p4, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "downloadFile failed, code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", caused by:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :goto_2
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 103
    throw p1
.end method

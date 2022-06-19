.class Lcom/bytedance/sdk/openadsdk/k/g;
.super Lcom/bytedance/sdk/openadsdk/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/g$a;,
        Lcom/bytedance/sdk/openadsdk/k/g$b;,
        Lcom/bytedance/sdk/openadsdk/k/g$c;
    }
.end annotation


# instance fields
.field private final m:Ljava/net/Socket;

.field private final n:Lcom/bytedance/sdk/openadsdk/k/g$c;

.field private final o:Ljava/util/concurrent/ExecutorService;

.field private final p:Lcom/bytedance/sdk/openadsdk/k/d;

.field private volatile q:Lcom/bytedance/sdk/openadsdk/k/b;

.field private volatile r:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/g$a;)V
    .locals 2

    .line 46
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/g$a;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/g$a;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/a;Lcom/bytedance/sdk/openadsdk/k/b/c;)V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->r:Z

    .line 47
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/g$a;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->o:Ljava/util/concurrent/ExecutorService;

    .line 48
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/g$a;->d:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    .line 49
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/k/g$a;->e:Lcom/bytedance/sdk/openadsdk/k/g$c;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->n:Lcom/bytedance/sdk/openadsdk/k/g$c;

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/d;->c()Lcom/bytedance/sdk/openadsdk/k/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->p:Lcom/bytedance/sdk/openadsdk/k/d;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/g;)Lcom/bytedance/sdk/openadsdk/k/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->p:Lcom/bytedance/sdk/openadsdk/k/d;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/k/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/c/d;,
            Lcom/bytedance/sdk/openadsdk/k/h$a;,
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/openadsdk/k/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 296
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/k/g$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)[B

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/g$b;->a([BII)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 305
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object p1

    if-nez p1, :cond_4

    .line 307
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    .line 308
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    invoke-direct {p0, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)[B

    .line 312
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 315
    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/k/c/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to get header, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/c/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p1, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 323
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->q:Lcom/bytedance/sdk/openadsdk/k/b;

    if-eqz v2, :cond_5

    .line 324
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/b;->b()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/b;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    :cond_5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/b$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    .line 327
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/a/a;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/b/c;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/l;

    iget-object v4, p4, Lcom/bytedance/sdk/openadsdk/k/l$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/l;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/l;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/i;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/g$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/k/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/g;)V

    .line 329
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Lcom/bytedance/sdk/openadsdk/k/b$b;)Lcom/bytedance/sdk/openadsdk/k/b$a;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a()Lcom/bytedance/sdk/openadsdk/k/b;

    move-result-object v2

    .line 345
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->q:Lcom/bytedance/sdk/openadsdk/k/b;

    .line 346
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 348
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_7

    const-string v3, "TAG_PROXY_ProxyTask"

    const-string v4, "fire download in process cache task"

    .line 349
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move-object v2, v0

    :cond_7
    :goto_1
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 360
    :try_start_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/k/h;

    const-string v5, "r"

    invoke-direct {v4, p2, v5}, Lcom/bytedance/sdk/openadsdk/k/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 361
    :try_start_1
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/k/h;->a(J)V

    .line 362
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/k/i$a;->e:I

    if-lez p2, :cond_8

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/k/i$a;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_8
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    .line 364
    :goto_2
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    if-ge p2, p1, :cond_10

    .line 365
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    .line 367
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/k/h;->a([B)I

    move-result p2

    if-gtz p2, :cond_f

    .line 370
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->q:Lcom/bytedance/sdk/openadsdk/k/b;

    if-eqz p2, :cond_b

    .line 372
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/b;->i()Lcom/bytedance/sdk/openadsdk/k/c/b;

    move-result-object v0

    if-nez v0, :cond_a

    .line 377
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/b;->h()Lcom/bytedance/sdk/openadsdk/k/h$a;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 380
    :cond_9
    throw v0

    .line 374
    :cond_a
    throw v0

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 384
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/b;->b()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/b;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 391
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    .line 393
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 395
    :try_start_2
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    .line 397
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 399
    :goto_4
    monitor-exit v0

    goto :goto_7

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 385
    :cond_d
    :goto_6
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_e

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string p2, "download task has finished!!!"

    .line 386
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_e
    new-instance p1, Lcom/bytedance/sdk/openadsdk/k/c/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal state download task has finished, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/c/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_f
    invoke-virtual {p3, v3, v1, p2}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b([BII)V

    .line 404
    :goto_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    goto :goto_2

    .line 407
    :cond_10
    sget-boolean p2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p2, :cond_11

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "read cache file complete: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 414
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    if-eqz v2, :cond_12

    .line 419
    :try_start_5
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    return-void

    :catchall_2
    move-exception p1

    move-object v0, v4

    goto :goto_8

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v0, :cond_13

    .line 414
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    :cond_13
    if-eqz v2, :cond_14

    .line 419
    :try_start_6
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p2

    .line 421
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    :cond_14
    :goto_9
    throw p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/k/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/h$a;,
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/openadsdk/k/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/i;->a:Lcom/bytedance/sdk/openadsdk/k/i$c;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/i$c;->a:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g;->b(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V

    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g;->c(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V

    return-void
.end method

.method private a(ZIIII)V
    .locals 0

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/k/g$b;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    const-string v0, "TAG_PROXY_ProxyTask"

    .line 150
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l;->b()Lcom/bytedance/sdk/openadsdk/k/l$a;

    move-result-object v1

    const/4 v3, 0x1

    .line 155
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/k/c/c; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/bytedance/sdk/openadsdk/k/c/d; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bytedance/sdk/openadsdk/k/h$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/bytedance/sdk/openadsdk/k/c/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    .line 200
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_0

    .line 201
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 196
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_0

    .line 197
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 189
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_3
    move-exception v1

    .line 183
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_2

    .line 184
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->r:Z

    .line 187
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 177
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v1, :cond_3

    .line 178
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :catch_5
    move-exception v2

    .line 161
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l$a;->b()V

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Canceled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "okhttp call canceled"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    :cond_5
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_6
    move-exception v2

    .line 158
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l$a;->a()V

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/k/b/a;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 270
    sget-boolean p3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    .line 273
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/k/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    const-string v1, "HEAD"

    .line 275
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/e/a;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 278
    :cond_1
    :try_start_0
    invoke-static {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 282
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-static {p1, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;Lcom/bytedance/sdk/openadsdk/k/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object p3

    .line 283
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v1, "get header from network"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/bytedance/sdk/openadsdk/k/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    return-object p2

    .line 280
    :cond_3
    :try_start_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/k/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rawKey: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/c/c;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    .line 289
    throw p2
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/c/d;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)[B

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 231
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->a([BII)V

    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/k/h$a;,
            Lcom/bytedance/sdk/openadsdk/k/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/openadsdk/k/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->r:Z

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 239
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object v7

    .line 241
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v5

    int-to-long v2, v5

    sub-long v2, v0, v2

    long-to-int v4, v2

    if-nez v7, :cond_0

    const/4 v8, -0x1

    goto :goto_0

    .line 243
    :cond_0
    iget v8, v7, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v0, v9

    if-lez v11, :cond_2

    .line 246
    sget-boolean v9, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v9, :cond_1

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cache hit, remainSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x1

    long-to-int v9, v0

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move v4, v9

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/k/g;->a(ZIIII)V

    .line 251
    invoke-direct {p0, v7, v6, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    long-to-int v6, v0

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move v4, v6

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/k/g;->a(ZIIII)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 257
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/k/g;->a(ZIIII)V

    .line 260
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g;->d(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/k/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/openadsdk/k/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->i()V

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 430
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v2

    .line 431
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->e:I

    const-string v4, "GET"

    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/e/a;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 437
    :try_start_0
    invoke-static {v3, v6, v4}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;ZZ)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v7, ", rawKey: "

    if-nez v4, :cond_d

    .line 442
    :try_start_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->f()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object v4

    .line 443
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v9, "TAG_PROXY_ProxyTask"

    if-eqz v4, :cond_2

    .line 444
    :try_start_2
    iget v10, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    if-eq v10, v8, :cond_2

    .line 445
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_1

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/k/c/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Content-Length not match, old length: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", new length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentUrl: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", previousInfo: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 454
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;I)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    .line 456
    sget-object v2, Lcom/bytedance/sdk/openadsdk/k/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 457
    array-length v2, p2

    invoke-virtual {p1, p2, v6, v2}, Lcom/bytedance/sdk/openadsdk/k/g$b;->a([BII)V

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    .line 462
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/k/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 463
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v4, ", from: "

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-ltz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v8, v8, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-static {v3, v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;Lcom/bytedance/sdk/openadsdk/k/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 468
    :try_start_4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/h;

    const-string v7, "rwd"

    invoke-direct {v2, p2, v7}, Lcom/bytedance/sdk/openadsdk/k/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/bytedance/sdk/openadsdk/k/h$a; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 469
    :try_start_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/k/h;->a(J)V
    :try_end_5
    .catch Lcom/bytedance/sdk/openadsdk/k/h$a; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v2, v5

    .line 471
    :goto_0
    :try_start_6
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/k/h$a;->printStackTrace()V

    move-object v2, v5

    .line 475
    :goto_1
    sget-boolean v7, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v7, :cond_6

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can write to cache file in network task, cache file size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 478
    :cond_4
    :try_start_7
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_5

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "can\'t write to cache file in network task, cache file size: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    move-object v2, v5

    .line 482
    :cond_6
    :goto_2
    :try_start_8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->f()I

    move-result v7

    invoke-virtual {p2, v4, v7}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object p2

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_3

    .line 483
    :cond_7
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    :goto_3
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 487
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v8, 0x0

    .line 489
    :goto_4
    :try_start_9
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_b

    .line 490
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    if-lez v10, :cond_a

    .line 492
    invoke-virtual {p1, v4, v6, v10}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/2addr v8, v10

    if-eqz v2, :cond_9

    .line 496
    :try_start_a
    invoke-virtual {v2, v4, v6, v10}, Lcom/bytedance/sdk/openadsdk/k/h;->a([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v10

    .line 498
    :try_start_b
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 501
    :try_start_c
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_8

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "append to cache file error in network task!!! "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_8
    move-object v2, v5

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 508
    :cond_9
    :goto_5
    :try_start_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/g$b;->b()I

    move-result v10

    invoke-virtual {p0, p2, v10}, Lcom/bytedance/sdk/openadsdk/k/g;->a(II)V

    .line 510
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->e()V

    goto :goto_4

    .line 513
    :cond_b
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    .line 517
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->c()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 519
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_c

    .line 522
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    .line 525
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 526
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    :catchall_2
    move-exception p1

    move-object v5, v2

    :goto_6
    move v6, v8

    goto :goto_7

    :catchall_3
    move-exception p1

    move-object v5, v2

    goto :goto_7

    .line 439
    :cond_d
    :try_start_e
    new-instance p1, Lcom/bytedance/sdk/openadsdk/k/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/c/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p1

    .line 519
    :goto_7
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_e

    .line 522
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    .line 525
    :cond_e
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 526
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 527
    throw p1
.end method

.method private h()Lcom/bytedance/sdk/openadsdk/k/g$b;
    .locals 5

    const-string v0, "TAG_PROXY_ProxyTask"

    const/4 v1, 0x0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/i;->a(Ljava/io/InputStream;)Lcom/bytedance/sdk/openadsdk/k/i;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/bytedance/sdk/openadsdk/k/e;->a:Lcom/bytedance/sdk/openadsdk/k/a/b;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/bytedance/sdk/openadsdk/k/e;->b:Lcom/bytedance/sdk/openadsdk/k/a/c;

    :goto_0
    if-nez v3, :cond_2

    .line 61
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_1

    const-string v2, "cache is null"

    .line 62
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    .line 66
    :cond_2
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    .line 68
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i$a;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    .line 70
    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/k/i$a;->g:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/l;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/k/i;->b:Ljava/util/List;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->f:Ljava/util/List;

    .line 73
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_3

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request from MediaPlayer:    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/k/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_3
    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/g$b;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/k/i$a;->d:I

    invoke-direct {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/k/g$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bytedance/sdk/openadsdk/k/i$d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 87
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    .line 88
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_4

    .line 89
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v2

    .line 79
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    .line 80
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_6

    .line 81
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 85
    :goto_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v1
.end method

.method private i()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->q:Lcom/bytedance/sdk/openadsdk/k/b;

    const/4 v1, 0x0

    .line 538
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->q:Lcom/bytedance/sdk/openadsdk/k/b;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 532
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/k/a;->a()V

    .line 533
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->i()V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "TAG_PROXY_ProxyTask"

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->h()Lcom/bytedance/sdk/openadsdk/k/g$b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->n:Lcom/bytedance/sdk/openadsdk/k/g$c;

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v2, p0}, Lcom/bytedance/sdk/openadsdk/k/g$c;->a(Lcom/bytedance/sdk/openadsdk/k/g;)V

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Ljava/lang/String;)V

    .line 110
    sget v2, Lcom/bytedance/sdk/openadsdk/k/e;->h:I

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/k/i;->c:Lcom/bytedance/sdk/openadsdk/k/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/k/i$a;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/g;->p:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZLjava/lang/String;)V

    .line 120
    :cond_3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/g$b;)Z
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/k/c/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 129
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_4

    .line 130
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 123
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_4

    .line 124
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->b(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->p:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZLjava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/g;->a()V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->m:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g;->n:Lcom/bytedance/sdk/openadsdk/k/g$c;

    if-eqz v0, :cond_5

    .line 142
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/g$c;->b(Lcom/bytedance/sdk/openadsdk/k/g;)V

    :cond_5
    return-void
.end method

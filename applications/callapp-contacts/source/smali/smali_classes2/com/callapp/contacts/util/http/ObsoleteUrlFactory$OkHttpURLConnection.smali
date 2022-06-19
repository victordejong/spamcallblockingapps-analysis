.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpURLConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;
    }
.end annotation


# instance fields
.field a:Lokhttp3/OkHttpClient;

.field final b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

.field c:Lokhttp3/Headers$Builder;

.field d:Lokhttp3/Headers;

.field e:Z

.field f:Lokhttp3/Call;

.field g:J

.field h:Lokhttp3/Response;

.field i:Z

.field j:Ljava/net/Proxy;

.field k:Lokhttp3/Handshake;

.field private final l:Ljava/lang/Object;

.field private m:Lokhttp3/Response;

.field private n:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 2

    .line 332
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 313
    new-instance p1, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;-><init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)V

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    .line 314
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    const-wide/16 v0, -0x1

    .line 320
    iput-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->g:J

    .line 323
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->i:Z

    .line 333
    iput-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->url:Ljava/net/URL;

    return-object p1
.end method

.method private a()Lokhttp3/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->f:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->connected:Z

    .line 520
    iget-boolean v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->doOutput:Z

    if-eqz v1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "POST"

    .line 522
    iput-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 524
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 529
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-static {}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 534
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 537
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 540
    :cond_5
    iget-wide v3, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->g:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->chunkLength:I

    if-lez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 543
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    iget-wide v3, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->g:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    move-wide v5, v3

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    .line 547
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 550
    new-instance v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;

    invoke-direct {v0, v5, v6}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;-><init>(J)V

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;

    invoke-direct {v0, v5, v6}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;-><init>(J)V

    .line 553
    :goto_3
    iget-object v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->c:Lc/ae;

    iget-object v3, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    goto :goto_4

    :cond_b
    move-object v0, v2

    .line 558
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 566
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    .line 567
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    .line 568
    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 573
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;->a:Lokhttp3/Interceptor;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 575
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v3, Lokhttp3/Dispatcher;

    iget-object v4, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 581
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getUseCaches()Z

    move-result v3

    if-nez v3, :cond_c

    .line 582
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 585
    :cond_c
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->f:Lokhttp3/Call;

    return-object v0

    :catch_0
    move-exception v0

    .line 560
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    .line 561
    invoke-virtual {v1, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 562
    throw v1
.end method

.method private a(Z)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->m:Lokhttp3/Response;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 592
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->h:Lokhttp3/Response;

    if-eqz p1, :cond_1

    monitor-exit v0

    return-object p1

    .line 593
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 595
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 597
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a()Lokhttp3/Call;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a()V

    .line 600
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 603
    :cond_3
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->e:Z

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->m:Lokhttp3/Response;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    .line 607
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 613
    :cond_4
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 610
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 611
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 613
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->e:Z

    .line 617
    :try_start_3
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 619
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 623
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 624
    :try_start_4
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 625
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->m:Lokhttp3/Response;

    if-eqz v0, :cond_6

    monitor-exit p1

    return-object v0

    .line 626
    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 628
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 624
    :cond_7
    :try_start_5
    invoke-static {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    .line 626
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 595
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_1

    const-string v0, "field == null"

    .line 673
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    .line 670
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a()Lokhttp3/Call;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    iput-boolean v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->e:Z

    .line 341
    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->m:Lokhttp3/Response;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 355
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 349
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 352
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 353
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 355
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final disconnect()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->f:Lokhttp3/Call;

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a()V

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->f:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    :try_start_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 370
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    if-ltz p1, :cond_1

    .line 393
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v1, p1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->c(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    if-ltz p1, :cond_1

    .line 413
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v1, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->c(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 424
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final getHeaders()Lokhttp3/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->d:Lokhttp3/Headers;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 383
    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ObsoleteUrlFactory-Selected-Protocol"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 384
    invoke-static {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->b(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ObsoleteUrlFactory-Response-Source"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->d:Lokhttp3/Headers;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->d:Lokhttp3/Headers;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->doInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 444
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 443
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    if-eqz v0, :cond_2

    .line 453
    instance-of v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->connect()V

    .line 455
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a()V

    .line 458
    :cond_0
    iget-boolean v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->f:Z

    if-nez v1, :cond_1

    .line 462
    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->e:Ljava/io/OutputStream;

    return-object v0

    .line 459
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method does not support a request body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    .line 466
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    .line 471
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 473
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 476
    :cond_1
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 429
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 642
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 638
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 702
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 703
    :try_start_0
    instance-of v0, p2, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->n:Ljava/lang/Throwable;

    .line 704
    iget-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 705
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 709
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 710
    :try_start_0
    iput-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->m:Lokhttp3/Response;

    .line 711
    invoke-virtual {p2}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->k:Lokhttp3/Handshake;

    .line 712
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->url:Ljava/net/URL;

    .line 713
    iget-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->l:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 714
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final setConnectTimeout(I)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 486
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 2

    int-to-long v0, p1

    .line 690
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 3

    .line 694
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    .line 695
    iget v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->chunkLength:I

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 697
    iput-wide p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->g:J

    const-wide/32 v0, 0x7fffffff

    .line 698
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void

    .line 696
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentLength < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already in chunked mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setIfModifiedSince(J)V
    .locals 4

    .line 660
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 661
    iget-wide p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->ifModifiedSince:J

    const-string v0, "If-Modified-Since"

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 662
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    new-instance p2, Ljava/util/Date;

    iget-wide v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->ifModifiedSince:J

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, v0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 506
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 683
    sget-object v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->method:Ljava/lang/String;

    return-void

    .line 684
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_1

    const-string v0, "field == null"

    .line 650
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    .line 647
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final usingProxy()Z
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->j:Ljava/net/Proxy;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

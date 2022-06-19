.class final Lcom/google/api/client/http/a/c;
.super Lcom/google/api/client/http/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/a/c$a;,
        Lcom/google/api/client/http/a/c$b;
    }
.end annotation


# static fields
.field private static final c:Lcom/google/api/client/http/a/c$b;


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/google/api/client/http/a/c$a;

    invoke-direct {v0}, Lcom/google/api/client/http/a/c$a;-><init>()V

    sput-object v0, Lcom/google/api/client/http/a/c;->c:Lcom/google/api/client/http/a/c$b;

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/http/a/c;->a:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/api/client/http/a/c;->b:I

    .line 44
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method private a(Lcom/google/api/client/http/a/c$b;)Lcom/google/api/client/http/aa;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/api/client/http/a/c;->a:Ljava/net/HttpURLConnection;

    .line 91
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getStreamingContent()Lcom/google/api/client/a/ad;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 92
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Content-Type"

    .line 94
    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/a/c;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Content-Encoding"

    .line 98
    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/a/c;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_5

    const-string v4, "PUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v2, "%s with non-zero content length is not supported"

    .line 2067
    invoke-static {p1, v2, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 106
    :cond_5
    :goto_1
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz v5, :cond_6

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    long-to-int v2, v1

    .line 109
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 113
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1170
    :try_start_0
    iget v2, p0, Lcom/google/api/client/http/a/c;->b:I

    if-nez v2, :cond_7

    .line 1171
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getStreamingContent()Lcom/google/api/client/a/ad;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/api/client/http/a/c$b;->a(Ljava/io/OutputStream;Lcom/google/api/client/a/ad;)V

    goto :goto_3

    .line 1174
    :cond_7
    invoke-virtual {p0}, Lcom/google/api/client/http/a/c;->getStreamingContent()Lcom/google/api/client/a/ad;

    move-result-object v2

    .line 1175
    new-instance v3, Lcom/google/api/client/http/a/c$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/api/client/http/a/c$1;-><init>(Lcom/google/api/client/http/a/c;Lcom/google/api/client/http/a/c$b;Ljava/io/OutputStream;Lcom/google/api/client/a/ad;)V

    .line 1184
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 1185
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 1186
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :try_start_1
    iget v3, p0, Lcom/google/api/client/http/a/c;->b:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1198
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :cond_8
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 134
    throw p1

    :catch_1
    move-exception p1

    .line 1195
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket write timed out"

    invoke-direct {v2, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception p1

    .line 1193
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exception in socket write"

    invoke-direct {v2, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception p1

    .line 1191
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket write interrupted"

    invoke-direct {v2, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    .line 123
    :try_start_5
    invoke-static {v0}, Lcom/google/api/client/http/a/c;->a(Ljava/net/HttpURLConnection;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_9

    .line 128
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    .line 124
    :cond_9
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 137
    :catch_5
    throw p1

    .line 148
    :catch_6
    :cond_a
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 149
    new-instance p1, Lcom/google/api/client/http/a/d;

    invoke-direct {p1, v0}, Lcom/google/api/client/http/a/d;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    throw p1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/a/c;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final execute()Lcom/google/api/client/http/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/api/client/http/a/c;->c:Lcom/google/api/client/http/a/c$b;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a/c;->a(Lcom/google/api/client/http/a/c$b;)Lcom/google/api/client/http/aa;

    move-result-object v0

    return-object v0
.end method

.method public final setTimeout(II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/api/client/http/a/c;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    iget-object p2, p0, Lcom/google/api/client/http/a/c;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public final setWriteTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/google/api/client/http/a/c;->b:I

    return-void
.end method

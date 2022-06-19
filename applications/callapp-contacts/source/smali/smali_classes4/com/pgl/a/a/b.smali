.class public abstract Lcom/pgl/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Landroid/os/HandlerThread;

.field g:Landroid/os/Handler;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:[B

.field private m:I

.field private n:[B

.field private o:Z

.field private p:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/pgl/a/a/b;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pgl/a/a/b;->n:[B

    const/16 v2, 0x2710

    iput v2, p0, Lcom/pgl/a/a/b;->b:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/pgl/a/a/b;->c:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/pgl/a/a/b;->d:I

    iput-boolean v2, p0, Lcom/pgl/a/a/b;->e:Z

    iput-boolean v2, p0, Lcom/pgl/a/a/b;->o:Z

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    move-object p2, v0

    :cond_1
    iput-object p1, p0, Lcom/pgl/a/a/b;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/pgl/a/a/b;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(I[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pgl/a/a/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/pgl/a/a/b;->c:I

    .line 3000
    iput p1, p0, Lcom/pgl/a/a/b;->j:I

    iput v0, p0, Lcom/pgl/a/a/b;->k:I

    iput-object p2, p0, Lcom/pgl/a/a/b;->l:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pgl/a/a/b;->e:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/pgl/a/a/b;->d:I

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "request"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/pgl/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/pgl/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/pgl/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/pgl/a/a/b$1;-><init>(Lcom/pgl/a/a/b;)V

    invoke-direct {p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/pgl/a/a/b;->g:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pgl/a/a/b;->o:Z

    if-eqz v3, :cond_0

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :goto_0
    iput-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/a/a/b;->b:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/a/a/b;->b:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v2, p0, Lcom/pgl/a/a/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v3, "GET"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_1
    const-string v3, "TRACE"

    goto :goto_2

    :pswitch_1
    const-string v3, "HEAD"

    goto :goto_2

    :pswitch_2
    const-string v3, "DELETE"

    goto :goto_2

    :pswitch_3
    const-string v3, "PUT"

    goto :goto_2

    :pswitch_4
    const-string v3, "POST"

    .line 1000
    :goto_2
    :pswitch_5
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v2, p0, Lcom/pgl/a/a/b;->k:I

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, ""

    goto :goto_3

    :cond_1
    const-string v2, "application/octet-stream"

    goto :goto_3

    :cond_2
    const-string v2, "application/json; charset=utf-8"

    .line 2000
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sessionid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pgl/a/a/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, ","

    const-string v5, "Accept-Language"

    if-eqz v3, :cond_4

    :try_start_3
    iget-object v3, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";q=0.9"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    :goto_5
    :try_start_4
    iget-object v2, p0, Lcom/pgl/a/a/b;->l:[B

    if-eqz v2, :cond_5

    array-length v2, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/a/a/b;->l:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/pgl/a/a/b;->m:I

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v2}, Lcom/pgl/a/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/pgl/a/a/b;->n:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_6

    :goto_6
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_1
    nop

    goto :goto_7

    :catchall_2
    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    :goto_8
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7

    :goto_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7

    goto :goto_9

    :cond_7
    :goto_a
    if-eqz v0, :cond_8

    iget v1, p0, Lcom/pgl/a/a/b;->m:I

    iget-object v2, p0, Lcom/pgl/a/a/b;->n:[B

    invoke-virtual {p0, v1, v2}, Lcom/pgl/a/a/b;->b(I[B)Z

    :cond_8
    return v0

    :catchall_4
    move-exception v0

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    :cond_9
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract b(I[B)Z
.end method

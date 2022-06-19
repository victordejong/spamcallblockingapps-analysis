.class public final Lokhttp3/internal/connection/c;
.super Lokhttp3/internal/http2/f$b;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/i;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:J

.field private final g:Lokhttp3/j;

.field private final h:Lokhttp3/ae;

.field private i:Ljava/net/Socket;

.field private j:Ljava/net/Socket;

.field private k:Lokhttp3/r;

.field private l:Lokhttp3/y;

.field private m:Lokhttp3/internal/http2/f;

.field private n:La/e;

.field private o:La/d;


# direct methods
.method public constructor <init>(Lokhttp3/j;Lokhttp3/ae;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lokhttp3/internal/http2/f$b;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/c;->c:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/c;->d:Ljava/util/List;

    .line 115
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/c;->e:J

    .line 118
    iput-object p1, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/j;

    .line 119
    iput-object p2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 120
    return-void
.end method

.method private a(IILokhttp3/aa;Lokhttp3/t;)Lokhttp3/aa;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/c;->a(Lokhttp3/t;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    :cond_0
    new-instance v4, Lokhttp3/internal/c/a;

    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-direct {v4, v2, v2, v0, v1}, Lokhttp3/internal/c/a;-><init>(Lokhttp3/x;Lokhttp3/internal/connection/f;La/e;La/d;)V

    .line 364
    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    invoke-interface {v0}, La/e;->a()La/t;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 365
    iget-object v0, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-interface {v0}, La/d;->a()La/t;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 366
    invoke-virtual {p3}, Lokhttp3/aa;->c()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lokhttp3/internal/c/a;->a(Lokhttp3/s;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v4}, Lokhttp3/internal/c/a;->b()V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lokhttp3/internal/c/a;->a(Z)Lokhttp3/ac$a;

    move-result-object v0

    .line 369
    invoke-virtual {v0, p3}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v5

    .line 373
    invoke-static {v5}, Lokhttp3/internal/b/e;->a(Lokhttp3/ac;)J

    move-result-wide v0

    .line 374
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 375
    const-wide/16 v0, 0x0

    .line 377
    :cond_1
    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/c/a;->b(J)La/s;

    move-result-object v0

    .line 378
    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lokhttp3/internal/c;->b(La/s;ILjava/util/concurrent/TimeUnit;)Z

    .line 379
    invoke-interface {v0}, La/s;->close()V

    .line 381
    invoke-virtual {v5}, Lokhttp3/ac;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 402
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    invoke-virtual {v5}, Lokhttp3/ac;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    invoke-interface {v0}, La/e;->c()La/c;

    move-result-object v0

    invoke-virtual {v0}, La/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-interface {v0}, La/d;->c()La/c;

    move-result-object v0

    invoke-virtual {v0}, La/c;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, v2

    .line 397
    :goto_0
    return-object p3

    .line 393
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->d()Lokhttp3/b;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-interface {v0, v1, v5}, Lokhttp3/b;->a(Lokhttp3/ae;Lokhttp3/ac;)Lokhttp3/aa;

    move-result-object p3

    .line 394
    if-nez p3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_4
    const-string/jumbo v0, "close"

    const-string/jumbo v1, "Connection"

    invoke-virtual {v5, v1}, Lokhttp3/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(IIILokhttp3/e;Lokhttp3/p;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-direct {p0}, Lokhttp3/internal/connection/c;->f()Lokhttp3/aa;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v2

    .line 211
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 212
    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/c;->a(IILokhttp3/e;Lokhttp3/p;)V

    .line 213
    invoke-direct {p0, p2, p3, v1, v2}, Lokhttp3/internal/connection/c;->a(IILokhttp3/aa;Lokhttp3/t;)Lokhttp3/aa;

    move-result-object v1

    .line 215
    if-nez v1, :cond_1

    .line 225
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 220
    iput-object v5, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    .line 221
    iput-object v5, p0, Lokhttp3/internal/connection/c;->o:La/d;

    .line 222
    iput-object v5, p0, Lokhttp3/internal/connection/c;->n:La/e;

    .line 223
    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v3}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v4}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p5, p4, v3, v4, v5}, Lokhttp3/p;->a(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(IILokhttp3/e;Lokhttp3/p;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v0

    .line 233
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    .line 234
    :cond_0
    invoke-virtual {v0}, Lokhttp3/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 235
    :goto_0
    iput-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    .line 237
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p4, p3, v0, v1}, Lokhttp3/p;->a(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 238
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 240
    :try_start_0
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v2}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/e/f;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-static {v0}, La/l;->b(Ljava/net/Socket;)La/s;

    move-result-object v0

    invoke-static {v0}, La/l;->a(La/s;)La/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    .line 253
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-static {v0}, La/l;->a(Ljava/net/Socket;)La/r;

    move-result-object v0

    invoke-static {v0}, La/l;->a(La/r;)La/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->o:La/d;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :cond_1
    return-void

    .line 235
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v3}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 244
    throw v1

    .line 254
    :catch_1
    move-exception v0

    .line 255
    const-string/jumbo v1, "throw with null exception"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lokhttp3/internal/connection/b;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Lokhttp3/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    .line 292
    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/t;->g()I

    move-result v5

    const/4 v6, 0x1

    .line 291
    invoke-virtual {v0, v1, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/b;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/k;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lokhttp3/k;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v4

    .line 298
    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/a;->e()Ljava/util/List;

    move-result-object v6

    .line 297
    invoke-virtual {v4, v0, v5, v6}, Lokhttp3/internal/e/f;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 304
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 305
    invoke-direct {p0, v4}, Lokhttp3/internal/connection/c;->a(Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "a valid ssl session was not established"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 336
    :goto_0
    :try_start_2
    invoke-static {v1}, Lokhttp3/internal/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 340
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokhttp3/internal/e/f;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 343
    :cond_1
    invoke-static {v2}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    throw v1

    .line 308
    :cond_2
    :try_start_3
    invoke-static {v4}, Lokhttp3/r;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/r;

    move-result-object v5

    .line 311
    invoke-virtual {v3}, Lokhttp3/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 312
    invoke-virtual {v5}, Lokhttp3/r;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 313
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not verified:\n    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    invoke-static {v1}, Lokhttp3/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n    DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n    subjectAltNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    invoke-static {v1}, Lokhttp3/internal/f/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :catchall_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_1

    .line 320
    :cond_3
    invoke-virtual {v3}, Lokhttp3/a;->k()Lokhttp3/g;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v5}, Lokhttp3/r;->b()Ljava/util/List;

    move-result-object v6

    .line 320
    invoke-virtual {v4, v3, v6}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 324
    invoke-virtual {v1}, Lokhttp3/k;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/e/f;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_4
    iput-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    .line 328
    iget-object v1, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-static {v1}, La/l;->b(Ljava/net/Socket;)La/s;

    move-result-object v1

    invoke-static {v1}, La/l;->a(La/s;)La/e;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/c;->n:La/e;

    .line 329
    iget-object v1, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-static {v1}, La/l;->a(Ljava/net/Socket;)La/r;

    move-result-object v1

    invoke-static {v1}, La/l;->a(La/r;)La/d;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/c;->o:La/d;

    .line 330
    iput-object v5, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    .line 331
    if-eqz v2, :cond_6

    .line 332
    invoke-static {v2}, Lokhttp3/y;->a(Ljava/lang/String;)Lokhttp3/y;

    move-result-object v1

    .line 333
    :goto_2
    iput-object v1, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    if-eqz v0, :cond_5

    .line 340
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/e/f;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 346
    :cond_5
    return-void

    .line 333
    :cond_6
    :try_start_4
    sget-object v1, Lokhttp3/y;->b:Lokhttp3/y;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 337
    :cond_7
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Lokhttp3/internal/connection/b;ILokhttp3/e;Lokhttp3/p;)V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    sget-object v0, Lokhttp3/y;->b:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    .line 265
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p4, p3}, Lokhttp3/p;->b(Lokhttp3/e;)V

    .line 270
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->a(Lokhttp3/internal/connection/b;)V

    .line 271
    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    invoke-virtual {p4, p3, v0}, Lokhttp3/p;->a(Lokhttp3/e;Lokhttp3/r;)V

    .line 273
    iget-object v0, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    sget-object v1, Lokhttp3/y;->d:Lokhttp3/y;

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 275
    new-instance v0, Lokhttp3/internal/http2/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/f$a;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 276
    invoke-virtual {v2}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/c;->n:La/e;

    iget-object v4, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/f$a;->a(Ljava/net/Socket;Ljava/lang/String;La/e;La/d;)Lokhttp3/internal/http2/f$a;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/f$a;->a(Lokhttp3/internal/http2/f$b;)Lokhttp3/internal/http2/f$a;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/f$a;->a(I)Lokhttp3/internal/http2/f$a;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lokhttp3/internal/http2/f$a;->a()Lokhttp3/internal/http2/f;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    .line 280
    iget-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Lokhttp3/internal/http2/f;->c()V

    goto :goto_0
.end method

.method private a(Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .prologue
    .line 350
    const-string/jumbo v0, "NONE"

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SSL_NULL_WITH_NULL_NULL"

    .line 351
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Lokhttp3/aa;
    .locals 4

    .prologue
    .line 414
    new-instance v0, Lokhttp3/aa$a;

    invoke-direct {v0}, Lokhttp3/aa$a;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 415
    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/t;)Lokhttp3/aa$a;

    move-result-object v0

    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 416
    invoke-virtual {v2}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/c;->a(Lokhttp3/t;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string/jumbo v1, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    .line 417
    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    .line 418
    invoke-static {}, Lokhttp3/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    .line 414
    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/ae;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    return-object v0
.end method

.method public a(Lokhttp3/x;Lokhttp3/u$a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/b/c;
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lokhttp3/internal/http2/e;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    invoke-direct {v0, p1, p2, p3, v1}, Lokhttp3/internal/http2/e;-><init>(Lokhttp3/x;Lokhttp3/u$a;Lokhttp3/internal/connection/f;Lokhttp3/internal/http2/f;)V

    .line 490
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp3/u$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 488
    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    invoke-interface {v0}, La/e;->a()La/t;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/u$a;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 489
    iget-object v0, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-interface {v0}, La/d;->a()La/t;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/u$a;->d()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 490
    new-instance v0, Lokhttp3/internal/c/a;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->n:La/e;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->o:La/d;

    invoke-direct {v0, p1, p3, v1, v2}, Lokhttp3/internal/c/a;-><init>(Lokhttp3/x;Lokhttp3/internal/connection/f;La/e;La/d;)V

    goto :goto_0
.end method

.method public a(IIIIZLokhttp3/e;Lokhttp3/p;)V
    .locals 8

    .prologue
    .line 133
    iget-object v0, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v1

    .line 137
    new-instance v7, Lokhttp3/internal/connection/b;

    invoke-direct {v7, v1}, Lokhttp3/internal/connection/b;-><init>(Ljava/util/List;)V

    .line 139
    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v2}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_9

    .line 140
    sget-object v2, Lokhttp3/k;->c:Lokhttp3/k;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string/jumbo v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 144
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/internal/e/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 146
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not permitted by network security policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    move-object v6, v0

    .line 153
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 154
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/c;->a(IIILokhttp3/e;Lokhttp3/p;)V

    .line 155
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 190
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    if-nez v0, :cond_7

    .line 191
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 160
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p6, p7}, Lokhttp3/internal/connection/c;->a(IILokhttp3/e;Lokhttp3/p;)V

    .line 162
    :cond_4
    invoke-direct {p0, v7, p4, p6, p7}, Lokhttp3/internal/connection/c;->a(Lokhttp3/internal/connection/b;ILokhttp3/e;Lokhttp3/p;)V

    .line 163
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v1}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    invoke-virtual {p7, p6, v0, v1, v2}, Lokhttp3/p;->a(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v5

    .line 166
    iget-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 167
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->n:La/e;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->o:La/d;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    .line 176
    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v0}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p7

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lokhttp3/p;->a(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;Ljava/io/IOException;)V

    .line 178
    if-nez v6, :cond_6

    .line 179
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 184
    :goto_2
    if-eqz p5, :cond_5

    invoke-virtual {v7, v5}, Lokhttp3/internal/connection/b;->a(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    :cond_5
    throw v0

    .line 181
    :cond_6
    invoke-virtual {v6, v5}, Lokhttp3/internal/connection/RouteException;->a(Ljava/io/IOException;)V

    move-object v0, v6

    goto :goto_2

    .line 196
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    if-eqz v0, :cond_8

    .line 197
    iget-object v1, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/j;

    monitor-enter v1

    .line 198
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Lokhttp3/internal/http2/f;->a()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/c;->c:I

    .line 199
    monitor-exit v1

    .line 201
    :cond_8
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public a(Lokhttp3/internal/http2/f;)V
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/j;

    monitor-enter v1

    .line 555
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/f;->a()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/c;->c:I

    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lokhttp3/internal/http2/h;)V
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lokhttp3/internal/http2/a;->e:Lokhttp3/internal/http2/a;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/h;->a(Lokhttp3/internal/http2/a;)V

    .line 550
    return-void
.end method

.method public a(Lokhttp3/a;Lokhttp3/ae;)Z
    .locals 5
    .param p2    # Lokhttp3/ae;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 428
    iget-object v2, p0, Lokhttp3/internal/connection/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lokhttp3/internal/connection/c;->c:I

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lokhttp3/internal/connection/c;->a:Z

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    sget-object v2, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v3}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lokhttp3/internal/a;->a(Lokhttp3/a;Lokhttp3/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lokhttp3/internal/connection/c;->a()Lokhttp3/ae;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 435
    goto :goto_0

    .line 444
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    if-eqz v2, :cond_0

    .line 449
    if-eqz p2, :cond_0

    .line 450
    invoke-virtual {p2}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    .line 451
    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v2}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    .line 452
    iget-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v2}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p2}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/f/d;->a:Lokhttp3/internal/f/d;

    if-ne v2, v3, :cond_0

    .line 456
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/c;->a(Lokhttp3/t;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/a;->k()Lokhttp3/g;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/connection/c;->d()Lokhttp3/r;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/r;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 465
    goto/16 :goto_0

    .line 461
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Lokhttp3/t;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-virtual {p1}, Lokhttp3/t;->g()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v3}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->g()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 479
    :goto_0
    return v2

    .line 473
    :cond_0
    invoke-virtual {p1}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v3}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    if-eqz v0, :cond_1

    sget-object v3, Lokhttp3/internal/f/d;->a:Lokhttp3/internal/f/d;

    .line 476
    invoke-virtual {p1}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 475
    invoke-virtual {v3, v4, v0}, Lokhttp3/internal/f/d;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 479
    goto :goto_0
.end method

.method public a(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 544
    :cond_1
    :goto_0
    return v0

    .line 521
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    if-eqz v2, :cond_3

    .line 522
    iget-object v2, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    invoke-virtual {v2}, Lokhttp3/internal/http2/f;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 525
    :cond_3
    if-eqz p1, :cond_1

    .line 527
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 529
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 530
    iget-object v2, p0, Lokhttp3/internal/connection/c;->n:La/e;

    invoke-interface {v2}, La/e;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    .line 531
    goto :goto_0

    .line 535
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 539
    :catch_1
    move-exception v0

    move v0, v1

    .line 540
    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lokhttp3/internal/connection/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 509
    return-void
.end method

.method public c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/net/Socket;

    return-object v0
.end method

.method public d()Lokhttp3/r;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lokhttp3/internal/connection/c;->m:Lokhttp3/internal/http2/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 577
    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/t;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 579
    invoke-virtual {v1}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokhttp3/ae;

    .line 581
    invoke-virtual {v1}, Lokhttp3/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lokhttp3/internal/connection/c;->k:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->a()Lokhttp3/h;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->l:Lokhttp3/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    return-object v0

    .line 583
    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method

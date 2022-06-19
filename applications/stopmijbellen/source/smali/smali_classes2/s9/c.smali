.class public final Ls9/c;
.super Lv9/f$c;
.source "SourceFile"


# instance fields
.field public final b:Lp9/i;

.field public final c:Lp9/e0;

.field public d:Ljava/net/Socket;

.field public e:Ljava/net/Socket;

.field public f:Lp9/q;

.field public g:Lp9/w;

.field public h:Lv9/f;

.field public i:Laa/h;

.field public j:Laa/g;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Ls9/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lp9/i;Lp9/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv9/f$c;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ls9/c;->m:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls9/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Ls9/c;->o:J

    .line 5
    iput-object p1, p0, Ls9/c;->b:Lp9/i;

    .line 6
    iput-object p2, p0, Ls9/c;->c:Lp9/e0;

    return-void
.end method


# virtual methods
.method public a(Lv9/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls9/c;->b:Lp9/i;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lv9/f;->o()I

    move-result p1

    iput p1, p0, Ls9/c;->m:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lv9/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1, v0}, Lv9/o;->c(I)V

    return-void
.end method

.method public c(IIIIZLp9/e;Lp9/o;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Ls9/c;->g:Lp9/w;

    if-nez v0, :cond_13

    .line 2
    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    .line 3
    iget-object v0, v0, Lp9/e0;->a:Lp9/a;

    .line 4
    iget-object v1, v0, Lp9/a;->f:Ljava/util/List;

    .line 5
    new-instance v10, Ls9/b;

    invoke-direct {v10, v1}, Ls9/b;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v2, v0, Lp9/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_2

    .line 7
    sget-object v0, Lp9/j;->f:Lp9/j;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    .line 9
    iget-object v0, v0, Lp9/e0;->a:Lp9/a;

    .line 10
    iget-object v0, v0, Lp9/a;->a:Lp9/s;

    .line 11
    iget-object v0, v0, Lp9/s;->d:Ljava/lang/String;

    .line 12
    sget-object v1, Lx9/f;->a:Lx9/f;

    .line 13
    invoke-virtual {v1, v0}, Lx9/f;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    invoke-static {v3, v0, v4}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 15
    :cond_1
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 16
    :cond_2
    iget-object v0, v0, Lp9/a;->e:Ljava/util/List;

    .line 17
    sget-object v1, Lp9/w;->f:Lp9/w;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 18
    :goto_1
    :try_start_0
    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    invoke-virtual {v0}, Lp9/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 19
    invoke-virtual/range {v1 .. v6}, Ls9/c;->e(IIILp9/e;Lp9/o;)V

    .line 20
    iget-object v0, v7, Ls9/c;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_2

    :cond_4
    move/from16 v1, p1

    move/from16 v2, p2

    .line 21
    :try_start_1
    invoke-virtual {p0, v1, v2, v8, v9}, Ls9/c;->d(IILp9/e;Lp9/o;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v3, p4

    .line 22
    :try_start_2
    invoke-virtual {p0, v10, v3, v8, v9}, Ls9/c;->f(Ls9/b;ILp9/e;Lp9/o;)V

    .line 23
    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    :goto_3
    iget-object v0, v7, Ls9/c;->c:Lp9/e0;

    invoke-virtual {v0}, Lp9/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Ls9/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 25
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 27
    :cond_6
    :goto_4
    iget-object v0, v7, Ls9/c;->h:Lv9/f;

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, v7, Ls9/c;->b:Lp9/i;

    monitor-enter v1

    .line 29
    :try_start_3
    iget-object v0, v7, Ls9/c;->h:Lv9/f;

    invoke-virtual {v0}, Lv9/f;->o()I

    move-result v0

    iput v0, v7, Ls9/c;->m:I

    .line 30
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v3, p4

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_6

    .line 31
    :goto_7
    iget-object v4, v7, Ls9/c;->e:Ljava/net/Socket;

    invoke-static {v4}, Lq9/c;->e(Ljava/net/Socket;)V

    .line 32
    iget-object v4, v7, Ls9/c;->d:Ljava/net/Socket;

    invoke-static {v4}, Lq9/c;->e(Ljava/net/Socket;)V

    .line 33
    iput-object v11, v7, Ls9/c;->e:Ljava/net/Socket;

    .line 34
    iput-object v11, v7, Ls9/c;->d:Ljava/net/Socket;

    .line 35
    iput-object v11, v7, Ls9/c;->i:Laa/h;

    .line 36
    iput-object v11, v7, Ls9/c;->j:Laa/g;

    .line 37
    iput-object v11, v7, Ls9/c;->f:Lp9/q;

    .line 38
    iput-object v11, v7, Ls9/c;->g:Lp9/w;

    .line 39
    iput-object v11, v7, Ls9/c;->h:Lv9/f;

    .line 40
    iget-object v4, v7, Ls9/c;->c:Lp9/e0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Ls9/c;->c:Lp9/e0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v12, :cond_8

    .line 41
    new-instance v12, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 42
    :cond_8
    iget-object v6, v12, Lokhttp3/internal/connection/RouteException;->a:Ljava/io/IOException;

    .line 43
    sget-object v13, Lq9/c;->g:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_9

    :try_start_4
    new-array v14, v4, [Ljava/lang/Object;

    aput-object v0, v14, v5

    .line 44
    invoke-virtual {v13, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    .line 45
    :catch_3
    :cond_9
    iput-object v0, v12, Lokhttp3/internal/connection/RouteException;->b:Ljava/io/IOException;

    :goto_8
    if-eqz p5, :cond_11

    .line 46
    iput-boolean v4, v10, Ls9/b;->d:Z

    .line 47
    iget-boolean v6, v10, Ls9/b;->c:Z

    if-nez v6, :cond_a

    goto :goto_a

    .line 48
    :cond_a
    instance-of v6, v0, Ljava/net/ProtocolException;

    if-eqz v6, :cond_b

    goto :goto_a

    .line 49
    :cond_b
    instance-of v6, v0, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_c

    goto :goto_a

    .line 50
    :cond_c
    instance-of v6, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v6, :cond_d

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    instance-of v13, v13, Ljava/security/cert/CertificateException;

    if-eqz v13, :cond_d

    goto :goto_a

    .line 52
    :cond_d
    instance-of v13, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v13, :cond_e

    goto :goto_a

    :cond_e
    if-nez v6, :cond_10

    .line 53
    instance-of v5, v0, Ljavax/net/ssl/SSLProtocolException;

    if-nez v5, :cond_10

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :cond_10
    :goto_9
    move v5, v4

    :goto_a
    if-eqz v5, :cond_11

    goto/16 :goto_1

    .line 54
    :cond_11
    throw v12

    .line 55
    :cond_12
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 56
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(IILp9/e;Lp9/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Ls9/c;->c:Lp9/e0;

    .line 2
    iget-object v0, p3, Lp9/e0;->b:Ljava/net/Proxy;

    .line 3
    iget-object p3, p3, Lp9/e0;->a:Lp9/a;

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p3, Lp9/a;->c:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    .line 8
    :goto_1
    iput-object p3, p0, Ls9/c;->d:Ljava/net/Socket;

    .line 9
    iget-object p3, p0, Ls9/c;->c:Lp9/e0;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p3, p0, Ls9/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 11
    :try_start_0
    sget-object p2, Lx9/f;->a:Lx9/f;

    .line 12
    iget-object p3, p0, Ls9/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Ls9/c;->c:Lp9/e0;

    .line 13
    iget-object p4, p4, Lp9/e0;->c:Ljava/net/InetSocketAddress;

    .line 14
    invoke-virtual {p2, p3, p4, p1}, Lx9/f;->g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    iget-object p1, p0, Ls9/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Laa/o;->h(Ljava/net/Socket;)Laa/y;

    move-result-object p1

    .line 16
    new-instance p2, Laa/t;

    invoke-direct {p2, p1}, Laa/t;-><init>(Laa/y;)V

    .line 17
    iput-object p2, p0, Ls9/c;->i:Laa/h;

    .line 18
    iget-object p1, p0, Ls9/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Laa/o;->e(Ljava/net/Socket;)Laa/x;

    move-result-object p1

    .line 19
    new-instance p2, Laa/r;

    invoke-direct {p2, p1}, Laa/r;-><init>(Laa/x;)V

    .line 20
    iput-object p2, p0, Ls9/c;->j:Laa/g;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 22
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Ls9/c;->c:Lp9/e0;

    .line 24
    iget-object p4, p4, Lp9/e0;->c:Ljava/net/InetSocketAddress;

    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    throw p2
.end method

.method public final e(IIILp9/e;Lp9/o;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    .line 1
    new-instance v2, Lp9/y$a;

    invoke-direct {v2}, Lp9/y$a;-><init>()V

    iget-object v3, v0, Ls9/c;->c:Lp9/e0;

    .line 2
    iget-object v3, v3, Lp9/e0;->a:Lp9/a;

    .line 3
    iget-object v3, v3, Lp9/a;->a:Lp9/s;

    .line 4
    invoke-virtual {v2, v3}, Lp9/y$a;->e(Lp9/s;)Lp9/y$a;

    const-string v3, "CONNECT"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Lp9/y$a;->c(Ljava/lang/String;Lp9/a0;)Lp9/y$a;

    iget-object v3, v0, Ls9/c;->c:Lp9/e0;

    .line 6
    iget-object v3, v3, Lp9/e0;->a:Lp9/a;

    .line 7
    iget-object v3, v3, Lp9/a;->a:Lp9/s;

    const/4 v5, 0x1

    .line 8
    invoke-static {v3, v5}, Lq9/c;->m(Lp9/s;Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Host"

    invoke-virtual {v2, v6, v3}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    const-string v3, "Proxy-Connection"

    const-string v6, "Keep-Alive"

    .line 9
    invoke-virtual {v2, v3, v6}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    const-string v3, "User-Agent"

    const-string v6, "okhttp/3.12.1"

    .line 10
    invoke-virtual {v2, v3, v6}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 11
    invoke-virtual {v2}, Lp9/y$a;->a()Lp9/y;

    move-result-object v2

    .line 12
    new-instance v3, Lp9/b0$a;

    invoke-direct {v3}, Lp9/b0$a;-><init>()V

    .line 13
    iput-object v2, v3, Lp9/b0$a;->a:Lp9/y;

    .line 14
    sget-object v6, Lp9/w;->c:Lp9/w;

    .line 15
    iput-object v6, v3, Lp9/b0$a;->b:Lp9/w;

    const/16 v6, 0x197

    .line 16
    iput v6, v3, Lp9/b0$a;->c:I

    const-string v7, "Preemptive Authenticate"

    .line 17
    iput-object v7, v3, Lp9/b0$a;->d:Ljava/lang/String;

    .line 18
    sget-object v7, Lq9/c;->c:Lp9/d0;

    .line 19
    iput-object v7, v3, Lp9/b0$a;->g:Lp9/d0;

    const-wide/16 v7, -0x1

    .line 20
    iput-wide v7, v3, Lp9/b0$a;->k:J

    .line 21
    iput-wide v7, v3, Lp9/b0$a;->l:J

    const-string v9, "Proxy-Authenticate"

    .line 22
    iget-object v10, v3, Lp9/b0$a;->f:Lp9/r$a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v9}, Lp9/r;->a(Ljava/lang/String;)V

    const-string v11, "OkHttp-Preemptive"

    .line 24
    invoke-static {v11, v9}, Lp9/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v10, v9}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 26
    iget-object v12, v10, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v9, v10, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v3}, Lp9/b0$a;->b()Lp9/b0;

    .line 29
    iget-object v3, v0, Ls9/c;->c:Lp9/e0;

    .line 30
    iget-object v3, v3, Lp9/e0;->a:Lp9/a;

    .line 31
    iget-object v3, v3, Lp9/a;->d:Lp9/b;

    .line 32
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v3, v2, Lp9/y;->a:Lp9/s;

    move v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 34
    invoke-virtual {p0, p1, p2, v10, v11}, Ls9/c;->d(IILp9/e;Lp9/o;)V

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CONNECT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lq9/c;->m(Lp9/s;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " HTTP/1.1"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v5, Lu9/a;

    iget-object v9, v0, Ls9/c;->i:Laa/h;

    iget-object v10, v0, Ls9/c;->j:Laa/g;

    invoke-direct {v5, v4, v4, v9, v10}, Lu9/a;-><init>(Lp9/v;Ls9/e;Laa/h;Laa/g;)V

    .line 37
    invoke-interface {v9}, Laa/y;->b()Laa/z;

    move-result-object v4

    int-to-long v11, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v11, v12, v1}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    .line 38
    iget-object v4, v0, Ls9/c;->j:Laa/g;

    invoke-interface {v4}, Laa/x;->b()Laa/z;

    move-result-object v4

    move/from16 v9, p3

    int-to-long v11, v9

    invoke-virtual {v4, v11, v12, v1}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    .line 39
    iget-object v4, v2, Lp9/y;->c:Lp9/r;

    .line 40
    invoke-virtual {v5, v4, v3}, Lu9/a;->k(Lp9/r;Ljava/lang/String;)V

    .line 41
    invoke-interface {v10}, Laa/g;->flush()V

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v5, v3}, Lu9/a;->f(Z)Lp9/b0$a;

    move-result-object v3

    .line 43
    iput-object v2, v3, Lp9/b0$a;->a:Lp9/y;

    .line 44
    invoke-virtual {v3}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lt9/e;->a(Lp9/b0;)J

    move-result-wide v3

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    const-wide/16 v3, 0x0

    .line 46
    :cond_0
    invoke-virtual {v5, v3, v4}, Lu9/a;->h(J)Laa/y;

    move-result-object v3

    const v4, 0x7fffffff

    .line 47
    invoke-static {v3, v4, v1}, Lq9/c;->t(Laa/y;ILjava/util/concurrent/TimeUnit;)Z

    .line 48
    check-cast v3, Lu9/a$f;

    invoke-virtual {v3}, Lu9/a$f;->close()V

    .line 49
    iget v1, v2, Lp9/b0;->c:I

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    if-ne v1, v6, :cond_1

    .line 50
    iget-object v1, v0, Ls9/c;->c:Lp9/e0;

    .line 51
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 52
    iget-object v1, v1, Lp9/a;->d:Lp9/b;

    .line 53
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    iget v2, v2, Lp9/b0;->c:I

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    iget-object v1, v0, Ls9/c;->i:Laa/h;

    invoke-interface {v1}, Laa/h;->a()Laa/f;

    move-result-object v1

    invoke-virtual {v1}, Laa/f;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ls9/c;->j:Laa/g;

    invoke-interface {v1}, Laa/g;->a()Laa/f;

    move-result-object v1

    invoke-virtual {v1}, Laa/f;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 59
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Ls9/b;ILp9/e;Lp9/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p3, Lp9/w;->c:Lp9/w;

    iget-object v0, p0, Ls9/c;->c:Lp9/e0;

    .line 2
    iget-object v0, v0, Lp9/e0;->a:Lp9/a;

    .line 3
    iget-object v1, v0, Lp9/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    .line 4
    iget-object p1, v0, Lp9/a;->e:Ljava/util/List;

    .line 5
    sget-object p4, Lp9/w;->f:Lp9/w;

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Ls9/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Ls9/c;->e:Ljava/net/Socket;

    .line 7
    iput-object p4, p0, Ls9/c;->g:Lp9/w;

    .line 8
    invoke-virtual {p0, p2}, Ls9/c;->j(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Ls9/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Ls9/c;->e:Ljava/net/Socket;

    .line 10
    iput-object p3, p0, Ls9/c;->g:Lp9/w;

    return-void

    .line 11
    :cond_1
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p4, p0, Ls9/c;->c:Lp9/e0;

    .line 13
    iget-object p4, p4, Lp9/e0;->a:Lp9/a;

    .line 14
    iget-object v0, p4, Lp9/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Ls9/c;->d:Ljava/net/Socket;

    .line 16
    iget-object v3, p4, Lp9/a;->a:Lp9/s;

    .line 17
    iget-object v4, v3, Lp9/s;->d:Ljava/lang/String;

    .line 18
    iget v3, v3, Lp9/s;->e:I

    const/4 v5, 0x1

    .line 19
    invoke-virtual {v0, v2, v4, v3, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {p1, v0}, Ls9/b;->a(Ljavax/net/ssl/SSLSocket;)Lp9/j;

    move-result-object p1

    .line 21
    iget-boolean v2, p1, Lp9/j;->b:Z

    if-eqz v2, :cond_2

    .line 22
    sget-object v2, Lx9/f;->a:Lx9/f;

    .line 23
    iget-object v3, p4, Lp9/a;->a:Lp9/s;

    .line 24
    iget-object v3, v3, Lp9/s;->d:Ljava/lang/String;

    .line 25
    iget-object v4, p4, Lp9/a;->e:Ljava/util/List;

    .line 26
    invoke-virtual {v2, v0, v3, v4}, Lx9/f;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 28
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lp9/q;->a(Ljavax/net/ssl/SSLSession;)Lp9/q;

    move-result-object v3

    .line 30
    iget-object v4, p4, Lp9/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 31
    iget-object v5, p4, Lp9/a;->a:Lp9/s;

    .line 32
    iget-object v5, v5, Lp9/s;->d:Ljava/lang/String;

    .line 33
    invoke-interface {v4, v5, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34
    iget-object v2, p4, Lp9/a;->k:Lp9/g;

    .line 35
    iget-object p4, p4, Lp9/a;->a:Lp9/s;

    .line 36
    iget-object p4, p4, Lp9/s;->d:Ljava/lang/String;

    .line 37
    iget-object v4, v3, Lp9/q;->c:Ljava/util/List;

    .line 38
    invoke-virtual {v2, p4, v4}, Lp9/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 39
    iget-boolean p1, p1, Lp9/j;->b:Z

    if-eqz p1, :cond_3

    .line 40
    sget-object p1, Lx9/f;->a:Lx9/f;

    .line 41
    invoke-virtual {p1, v0}, Lx9/f;->i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_3
    iput-object v0, p0, Ls9/c;->e:Ljava/net/Socket;

    .line 43
    invoke-static {v0}, Laa/o;->h(Ljava/net/Socket;)Laa/y;

    move-result-object p1

    .line 44
    new-instance p4, Laa/t;

    invoke-direct {p4, p1}, Laa/t;-><init>(Laa/y;)V

    .line 45
    iput-object p4, p0, Ls9/c;->i:Laa/h;

    .line 46
    iget-object p1, p0, Ls9/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Laa/o;->e(Ljava/net/Socket;)Laa/x;

    move-result-object p1

    .line 47
    new-instance p4, Laa/r;

    invoke-direct {p4, p1}, Laa/r;-><init>(Laa/x;)V

    .line 48
    iput-object p4, p0, Ls9/c;->j:Laa/g;

    .line 49
    iput-object v3, p0, Ls9/c;->f:Lp9/q;

    if-eqz v1, :cond_4

    .line 50
    invoke-static {v1}, Lp9/w;->a(Ljava/lang/String;)Lp9/w;

    move-result-object p3

    .line 51
    :cond_4
    iput-object p3, p0, Ls9/c;->g:Lp9/w;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sget-object p1, Lx9/f;->a:Lx9/f;

    .line 53
    invoke-virtual {p1, v0}, Lx9/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 54
    iget-object p1, p0, Ls9/c;->g:Lp9/w;

    sget-object p3, Lp9/w;->e:Lp9/w;

    if-ne p1, p3, :cond_5

    .line 55
    invoke-virtual {p0, p2}, Ls9/c;->j(I)V

    :cond_5
    return-void

    .line 56
    :cond_6
    :try_start_2
    iget-object p1, v3, Lp9/q;->c:Ljava/util/List;

    const/4 p2, 0x0

    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 58
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hostname "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p4, p4, Lp9/a;->a:Lp9/s;

    .line 60
    iget-object p4, p4, Lp9/s;->d:Ljava/lang/String;

    .line 61
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not verified:\n    certificate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {p1}, Lp9/g;->b(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n    DN: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p4

    invoke-interface {p4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n    subjectAltNames: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {p1}, Lz9/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 65
    :goto_0
    :try_start_3
    invoke-static {p1}, Lq9/c;->r(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 66
    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_8

    .line 67
    sget-object p2, Lx9/f;->a:Lx9/f;

    .line 68
    invoke-virtual {p2, v0}, Lx9/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 69
    :cond_8
    invoke-static {v0}, Lq9/c;->e(Ljava/net/Socket;)V

    throw p1
.end method

.method public g(Lp9/a;Lp9/e0;)Z
    .locals 4
    .param p2    # Lp9/e0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ls9/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ls9/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Ls9/c;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 3
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 4
    check-cast v0, Lp9/v$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1}, Lp9/a;->a(Lp9/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v0, p1, Lp9/a;->a:Lp9/s;

    .line 7
    iget-object v0, v0, Lp9/s;->d:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 9
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 10
    iget-object v1, v1, Lp9/a;->a:Lp9/s;

    .line 11
    iget-object v1, v1, Lp9/s;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 13
    :cond_2
    iget-object v0, p0, Ls9/c;->h:Lv9/f;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 14
    :cond_4
    iget-object v0, p2, Lp9/e0;->b:Ljava/net/Proxy;

    .line 15
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 16
    :cond_5
    iget-object v0, p0, Ls9/c;->c:Lp9/e0;

    .line 17
    iget-object v0, v0, Lp9/e0;->b:Ljava/net/Proxy;

    .line 18
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 19
    :cond_6
    iget-object v0, p0, Ls9/c;->c:Lp9/e0;

    .line 20
    iget-object v0, v0, Lp9/e0;->c:Ljava/net/InetSocketAddress;

    iget-object v3, p2, Lp9/e0;->c:Ljava/net/InetSocketAddress;

    .line 21
    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 22
    :cond_7
    iget-object p2, p2, Lp9/e0;->a:Lp9/a;

    .line 23
    iget-object p2, p2, Lp9/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Lz9/d;->a:Lz9/d;

    if-eq p2, v0, :cond_8

    return v2

    .line 25
    :cond_8
    iget-object p2, p1, Lp9/a;->a:Lp9/s;

    .line 26
    invoke-virtual {p0, p2}, Ls9/c;->k(Lp9/s;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 27
    :cond_9
    :try_start_0
    iget-object p2, p1, Lp9/a;->k:Lp9/g;

    .line 28
    iget-object p1, p1, Lp9/a;->a:Lp9/s;

    .line 29
    iget-object p1, p1, Lp9/s;->d:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Ls9/c;->f:Lp9/q;

    .line 31
    iget-object v0, v0, Lp9/q;->c:Ljava/util/List;

    .line 32
    invoke-virtual {p2, p1, v0}, Lp9/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls9/c;->h:Lv9/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lp9/v;Lp9/t$a;Ls9/e;)Lt9/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls9/c;->h:Lv9/f;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lv9/d;

    iget-object v1, p0, Ls9/c;->h:Lv9/f;

    invoke-direct {v0, p1, p2, p3, v1}, Lv9/d;-><init>(Lp9/v;Lp9/t$a;Ls9/e;Lv9/f;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls9/c;->e:Ljava/net/Socket;

    check-cast p2, Lt9/f;

    .line 4
    iget v1, p2, Lt9/f;->j:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v0, p0, Ls9/c;->i:Laa/h;

    invoke-interface {v0}, Laa/y;->b()Laa/z;

    move-result-object v0

    .line 7
    iget v1, p2, Lt9/f;->j:I

    int-to-long v1, v1

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    .line 9
    iget-object v0, p0, Ls9/c;->j:Laa/g;

    invoke-interface {v0}, Laa/x;->b()Laa/z;

    move-result-object v0

    .line 10
    iget p2, p2, Lt9/f;->k:I

    int-to-long v1, p2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    .line 12
    new-instance p2, Lu9/a;

    iget-object v0, p0, Ls9/c;->i:Laa/h;

    iget-object v1, p0, Ls9/c;->j:Laa/g;

    invoke-direct {p2, p1, p3, v0, v1}, Lu9/a;-><init>(Lp9/v;Ls9/e;Laa/h;Laa/g;)V

    return-object p2
.end method

.method public final j(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls9/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Lv9/f$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lv9/f$b;-><init>(Z)V

    iget-object v3, p0, Ls9/c;->e:Ljava/net/Socket;

    iget-object v4, p0, Ls9/c;->c:Lp9/e0;

    .line 3
    iget-object v4, v4, Lp9/e0;->a:Lp9/a;

    .line 4
    iget-object v4, v4, Lp9/a;->a:Lp9/s;

    .line 5
    iget-object v4, v4, Lp9/s;->d:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Ls9/c;->i:Laa/h;

    iget-object v6, p0, Ls9/c;->j:Laa/g;

    .line 7
    iput-object v3, v0, Lv9/f$b;->a:Ljava/net/Socket;

    .line 8
    iput-object v4, v0, Lv9/f$b;->b:Ljava/lang/String;

    .line 9
    iput-object v5, v0, Lv9/f$b;->c:Laa/h;

    .line 10
    iput-object v6, v0, Lv9/f$b;->d:Laa/g;

    .line 11
    iput-object p0, v0, Lv9/f$b;->e:Lv9/f$c;

    .line 12
    iput p1, v0, Lv9/f$b;->f:I

    .line 13
    new-instance p1, Lv9/f;

    invoke-direct {p1, v0}, Lv9/f;-><init>(Lv9/f$b;)V

    .line 14
    iput-object p1, p0, Ls9/c;->h:Lv9/f;

    .line 15
    iget-object v0, p1, Lv9/f;->r:Lv9/p;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-boolean v3, v0, Lv9/p;->e:Z

    if-nez v3, :cond_9

    .line 18
    iget-boolean v3, v0, Lv9/p;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    sget-object v3, Lv9/p;->g:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ">> CONNECTION %s"

    new-array v5, v2, [Ljava/lang/Object;

    .line 20
    sget-object v6, Lv9/c;->a:Laa/i;

    invoke-virtual {v6}, Laa/i;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lq9/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object v3, v0, Lv9/p;->a:Laa/g;

    sget-object v4, Lv9/c;->a:Laa/i;

    .line 22
    iget-object v4, v4, Laa/i;->a:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 23
    invoke-interface {v3, v4}, Laa/g;->z([B)Laa/g;

    .line 24
    iget-object v3, v0, Lv9/p;->a:Laa/g;

    invoke-interface {v3}, Laa/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    monitor-exit v0

    .line 26
    :goto_0
    iget-object v0, p1, Lv9/f;->r:Lv9/p;

    iget-object v3, p1, Lv9/f;->n:Lj4/s0;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_2
    iget-boolean v4, v0, Lv9/p;->e:Z

    if-nez v4, :cond_8

    .line 29
    iget v4, v3, Lj4/s0;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    .line 30
    invoke-virtual {v0, v1, v4, v5, v1}, Lv9/p;->l(IIBB)V

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v4, v6, :cond_6

    shl-int v6, v2, v4

    .line 31
    iget v7, v3, Lj4/s0;->a:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    :cond_4
    const/4 v6, 0x7

    if-ne v4, v6, :cond_5

    const/4 v6, 0x4

    goto :goto_3

    :cond_5
    move v6, v4

    .line 32
    :goto_3
    iget-object v7, v0, Lv9/p;->a:Laa/g;

    invoke-interface {v7, v6}, Laa/g;->m(I)Laa/g;

    .line 33
    iget-object v6, v0, Lv9/p;->a:Laa/g;

    .line 34
    iget-object v7, v3, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v4

    .line 35
    invoke-interface {v6, v7}, Laa/g;->q(I)Laa/g;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 36
    :cond_6
    iget-object v2, v0, Lv9/p;->a:Laa/g;

    invoke-interface {v2}, Laa/g;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    iget-object v0, p1, Lv9/f;->n:Lj4/s0;

    invoke-virtual {v0}, Lj4/s0;->a()I

    move-result v0

    const v2, 0xffff

    if-eq v0, v2, :cond_7

    .line 39
    iget-object v3, p1, Lv9/f;->r:Lv9/p;

    sub-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lv9/p;->A(IJ)V

    .line 40
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    iget-object p1, p1, Lv9/f;->s:Lv9/f$e;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 41
    :cond_8
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 42
    :cond_9
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public k(Lp9/s;)Z
    .locals 4

    .line 1
    iget v0, p1, Lp9/s;->e:I

    .line 2
    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 3
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 4
    iget-object v1, v1, Lp9/a;->a:Lp9/s;

    .line 5
    iget v2, v1, Lp9/s;->e:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 6
    :cond_0
    iget-object v0, p1, Lp9/s;->d:Ljava/lang/String;

    iget-object v1, v1, Lp9/s;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Ls9/c;->f:Lp9/q;

    if-eqz v0, :cond_1

    sget-object v2, Lz9/d;->a:Lz9/d;

    .line 9
    iget-object p1, p1, Lp9/s;->d:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lp9/q;->c:Ljava/util/List;

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 12
    invoke-virtual {v2, p1, v0}, Lz9/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 2
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 3
    iget-object v1, v1, Lp9/a;->a:Lp9/s;

    .line 4
    iget-object v1, v1, Lp9/s;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 6
    iget-object v1, v1, Lp9/e0;->a:Lp9/a;

    .line 7
    iget-object v1, v1, Lp9/a;->a:Lp9/s;

    .line 8
    iget v1, v1, Lp9/s;->e:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 10
    iget-object v1, v1, Lp9/e0;->b:Ljava/net/Proxy;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls9/c;->c:Lp9/e0;

    .line 12
    iget-object v1, v1, Lp9/e0;->c:Ljava/net/InetSocketAddress;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Ls9/c;->f:Lp9/q;

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, v1, Lp9/q;->b:Lp9/h;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls9/c;->g:Lp9/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

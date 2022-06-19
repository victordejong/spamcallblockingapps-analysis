.class public final Lt9/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# instance fields
.field public final a:Lp9/v;

.field public volatile b:Ls9/e;

.field public c:Ljava/lang/Object;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lp9/v;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt9/i;->a:Lp9/v;

    return-void
.end method


# virtual methods
.method public a(Lp9/t$a;)Lp9/b0;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lt9/f;

    .line 2
    iget-object v0, v0, Lt9/f;->f:Lp9/y;

    .line 3
    check-cast p1, Lt9/f;

    .line 4
    iget-object v7, p1, Lt9/f;->g:Lp9/e;

    .line 5
    iget-object v8, p1, Lt9/f;->h:Lp9/o;

    .line 6
    new-instance v9, Ls9/e;

    iget-object v1, p0, Lt9/i;->a:Lp9/v;

    .line 7
    iget-object v2, v1, Lp9/v;->q:Lp9/i;

    .line 8
    iget-object v1, v0, Lp9/y;->a:Lp9/s;

    .line 9
    invoke-virtual {p0, v1}, Lt9/i;->b(Lp9/s;)Lp9/a;

    move-result-object v3

    iget-object v6, p0, Lt9/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ls9/e;-><init>(Lp9/i;Lp9/a;Lp9/e;Lp9/o;Ljava/lang/Object;)V

    .line 10
    iput-object v9, p0, Lt9/i;->b:Ls9/e;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    move-object v2, v11

    .line 11
    :goto_0
    iget-boolean v3, p0, Lt9/i;->d:Z

    if-nez v3, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Lt9/f;->b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 13
    new-instance v3, Lp9/b0$a;

    invoke-direct {v3, v0}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 14
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0, v2}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 15
    iput-object v11, v0, Lp9/b0$a;->g:Lp9/d0;

    .line 16
    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    .line 17
    iget-object v2, v0, Lp9/b0;->g:Lp9/d0;

    if-nez v2, :cond_0

    .line 18
    iput-object v0, v3, Lp9/b0$a;->j:Lp9/b0;

    .line 19
    invoke-virtual {v3}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, v9, Ls9/e;->c:Lp9/e0;

    .line 22
    invoke-virtual {p0, v0, v2}, Lt9/i;->c(Lp9/b0;Lp9/e0;)Lp9/y;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_2

    .line 23
    invoke-virtual {v9}, Ls9/e;->g()V

    return-object v0

    .line 24
    :cond_2
    iget-object v2, v0, Lp9/b0;->g:Lp9/d0;

    .line 25
    invoke-static {v2}, Lq9/c;->d(Ljava/io/Closeable;)V

    add-int/lit8 v13, v1, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_5

    .line 26
    iget-object v1, v12, Lp9/y;->a:Lp9/s;

    .line 27
    invoke-virtual {p0, v0, v1}, Lt9/i;->f(Lp9/b0;Lp9/s;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    invoke-virtual {v9}, Ls9/e;->g()V

    .line 29
    new-instance v9, Ls9/e;

    iget-object v1, p0, Lt9/i;->a:Lp9/v;

    .line 30
    iget-object v2, v1, Lp9/v;->q:Lp9/i;

    .line 31
    iget-object v1, v12, Lp9/y;->a:Lp9/s;

    .line 32
    invoke-virtual {p0, v1}, Lt9/i;->b(Lp9/s;)Lp9/a;

    move-result-object v3

    iget-object v6, p0, Lt9/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ls9/e;-><init>(Lp9/i;Lp9/a;Lp9/e;Lp9/o;Ljava/lang/Object;)V

    .line 33
    iput-object v9, p0, Lt9/i;->b:Ls9/e;

    goto :goto_2

    .line 34
    :cond_3
    iget-object v1, v9, Ls9/e;->d:Lp9/i;

    monitor-enter v1

    .line 35
    :try_start_2
    iget-object v2, v9, Ls9/e;->n:Lt9/c;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_4

    :goto_2
    move-object v2, v0

    move-object v0, v12

    move v1, v13

    goto :goto_0

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 37
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 38
    :cond_5
    invoke-virtual {v9}, Ls9/e;->g()V

    .line 39
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Too many follow-up requests: "

    invoke-static {v0, v13}, La6/h;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {v9}, Ls9/e;->g()V

    .line 41
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 42
    :try_start_4
    instance-of v4, v3, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 43
    :goto_3
    invoke-virtual {p0, v3, v9, v4, v0}, Lt9/i;->d(Ljava/io/IOException;Ls9/e;ZLp9/y;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v3

    :catch_2
    move-exception v3

    .line 44
    iget-object v4, v3, Lokhttp3/internal/connection/RouteException;->b:Ljava/io/IOException;

    .line 45
    invoke-virtual {p0, v4, v9, v10, v0}, Lt9/i;->d(Ljava/io/IOException;Ls9/e;ZLp9/y;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 46
    :cond_8
    iget-object p1, v3, Lokhttp3/internal/connection/RouteException;->a:Ljava/io/IOException;

    .line 47
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :goto_4
    invoke-virtual {v9, v11}, Ls9/e;->h(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {v9}, Ls9/e;->g()V

    throw p1

    .line 50
    :cond_9
    invoke-virtual {v9}, Ls9/e;->g()V

    .line 51
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lp9/s;)Lp9/a;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lp9/s;->a:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v0, Lt9/i;->a:Lp9/v;

    .line 3
    iget-object v3, v2, Lp9/v;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    iget-object v4, v2, Lp9/v;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 5
    iget-object v2, v2, Lp9/v;->n:Lp9/g;

    move-object v12, v2

    move-object v10, v3

    move-object v11, v4

    goto :goto_0

    :cond_0
    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    .line 6
    :goto_0
    new-instance v2, Lp9/a;

    .line 7
    iget-object v6, v1, Lp9/s;->d:Ljava/lang/String;

    .line 8
    iget v7, v1, Lp9/s;->e:I

    .line 9
    iget-object v1, v0, Lt9/i;->a:Lp9/v;

    .line 10
    iget-object v8, v1, Lp9/v;->r:Lp9/n;

    .line 11
    iget-object v9, v1, Lp9/v;->j:Ljavax/net/SocketFactory;

    .line 12
    iget-object v13, v1, Lp9/v;->o:Lp9/b;

    const/4 v14, 0x0

    .line 13
    iget-object v15, v1, Lp9/v;->b:Ljava/util/List;

    .line 14
    iget-object v3, v1, Lp9/v;->c:Ljava/util/List;

    .line 15
    iget-object v1, v1, Lp9/v;->g:Ljava/net/ProxySelector;

    move-object v5, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    .line 16
    invoke-direct/range {v5 .. v17}, Lp9/a;-><init>(Ljava/lang/String;ILp9/n;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lp9/g;Lp9/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v2
.end method

.method public final c(Lp9/b0;Lp9/e0;)Lp9/y;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 1
    iget v0, p1, Lp9/b0;->c:I

    .line 2
    iget-object v1, p1, Lp9/b0;->a:Lp9/y;

    .line 3
    iget-object v1, v1, Lp9/y;->b:Ljava/lang/String;

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x197

    if-eq v0, v2, :cond_4

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 4
    :cond_0
    iget-object v0, p0, Lt9/i;->a:Lp9/v;

    .line 5
    iget-boolean v0, v0, Lp9/v;->u:Z

    if-nez v0, :cond_1

    return-object v4

    .line 6
    :cond_1
    iget-object v0, p1, Lp9/b0;->j:Lp9/b0;

    if-eqz v0, :cond_2

    .line 7
    iget v0, v0, Lp9/b0;->c:I

    if-ne v0, p2, :cond_2

    return-object v4

    :cond_2
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lt9/i;->e(Lp9/b0;I)I

    move-result p2

    if-lez p2, :cond_3

    return-object v4

    .line 9
    :cond_3
    iget-object p1, p1, Lp9/b0;->a:Lp9/y;

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 10
    iget-object p1, p2, Lp9/e0;->b:Ljava/net/Proxy;

    goto :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lt9/i;->a:Lp9/v;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v4

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    .line 13
    iget-object p1, p0, Lt9/i;->a:Lp9/v;

    .line 14
    iget-object p1, p1, Lp9/v;->o:Lp9/b;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 16
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    iget-object p2, p1, Lp9/b0;->j:Lp9/b0;

    if-eqz p2, :cond_8

    .line 18
    iget p2, p2, Lp9/b0;->c:I

    if-ne p2, v2, :cond_8

    return-object v4

    :cond_8
    const p2, 0x7fffffff

    .line 19
    invoke-virtual {p0, p1, p2}, Lt9/i;->e(Lp9/b0;I)I

    move-result p2

    if-nez p2, :cond_9

    .line 20
    iget-object p1, p1, Lp9/b0;->a:Lp9/y;

    return-object p1

    :cond_9
    return-object v4

    .line 21
    :cond_a
    iget-object p1, p0, Lt9/i;->a:Lp9/v;

    .line 22
    iget-object p1, p1, Lp9/v;->p:Lp9/b;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 24
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    .line 25
    :cond_c
    :pswitch_0
    iget-object p2, p0, Lt9/i;->a:Lp9/v;

    .line 26
    iget-boolean p2, p2, Lp9/v;->t:Z

    if-nez p2, :cond_d

    return-object v4

    .line 27
    :cond_d
    iget-object p2, p1, Lp9/b0;->f:Lp9/r;

    const-string v0, "Location"

    invoke-virtual {p2, v0}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    goto :goto_1

    :cond_e
    move-object p2, v4

    :goto_1
    if-nez p2, :cond_f

    return-object v4

    .line 28
    :cond_f
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 29
    iget-object v0, v0, Lp9/y;->a:Lp9/s;

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :try_start_0
    new-instance v2, Lp9/s$a;

    invoke-direct {v2}, Lp9/s$a;-><init>()V

    invoke-virtual {v2, v0, p2}, Lp9/s$a;->c(Lp9/s;Ljava/lang/String;)Lp9/s$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_10

    .line 32
    invoke-virtual {v2}, Lp9/s$a;->a()Lp9/s;

    move-result-object p2

    goto :goto_3

    :cond_10
    move-object p2, v4

    :goto_3
    if-nez p2, :cond_11

    return-object v4

    .line 33
    :cond_11
    iget-object v0, p2, Lp9/s;->a:Ljava/lang/String;

    .line 34
    iget-object v2, p1, Lp9/b0;->a:Lp9/y;

    .line 35
    iget-object v2, v2, Lp9/y;->a:Lp9/s;

    .line 36
    iget-object v2, v2, Lp9/s;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 38
    iget-object v0, p0, Lt9/i;->a:Lp9/v;

    .line 39
    iget-boolean v0, v0, Lp9/v;->s:Z

    if-nez v0, :cond_12

    return-object v4

    .line 40
    :cond_12
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Lp9/y$a;

    invoke-direct {v2, v0}, Lp9/y$a;-><init>(Lp9/y;)V

    .line 43
    invoke-static {v1}, Lb0/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "PROPFIND"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 46
    invoke-virtual {v2, v3, v4}, Lp9/y$a;->c(Ljava/lang/String;Lp9/a0;)Lp9/y$a;

    goto :goto_4

    :cond_13
    if-eqz v5, :cond_14

    .line 47
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 48
    iget-object v4, v0, Lp9/y;->d:Lp9/a0;

    .line 49
    :cond_14
    invoke-virtual {v2, v1, v4}, Lp9/y$a;->c(Ljava/lang/String;Lp9/a0;)Lp9/y$a;

    :goto_4
    if-nez v5, :cond_15

    .line 50
    iget-object v0, v2, Lp9/y$a;->c:Lp9/r$a;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 51
    iget-object v0, v2, Lp9/y$a;->c:Lp9/r$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 52
    iget-object v0, v2, Lp9/y$a;->c:Lp9/r$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 53
    :cond_15
    invoke-virtual {p0, p1, p2}, Lt9/i;->f(Lp9/b0;Lp9/s;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 54
    iget-object p1, v2, Lp9/y$a;->c:Lp9/r$a;

    const-string v0, "Authorization"

    invoke-virtual {p1, v0}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 55
    :cond_16
    invoke-virtual {v2, p2}, Lp9/y$a;->e(Lp9/s;)Lp9/y$a;

    invoke-virtual {v2}, Lp9/y$a;->a()Lp9/y;

    move-result-object p1

    return-object p1

    .line 56
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/io/IOException;Ls9/e;ZLp9/y;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Ls9/e;->h(Ljava/io/IOException;)V

    .line 2
    iget-object p4, p0, Lt9/i;->a:Lp9/v;

    .line 3
    iget-boolean p4, p4, Lp9/v;->u:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 4
    :cond_0
    instance-of p4, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of p4, p1, Ljava/io/InterruptedIOException;

    if-eqz p4, :cond_2

    .line 6
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    goto :goto_1

    .line 7
    :cond_2
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_5

    :cond_4
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_6

    return v0

    .line 10
    :cond_6
    iget-object p1, p2, Ls9/e;->c:Lp9/e0;

    if-nez p1, :cond_9

    iget-object p1, p2, Ls9/e;->b:Ls9/d$a;

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p1}, Ls9/d$a;->a()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_7
    iget-object p1, p2, Ls9/e;->h:Ls9/d;

    .line 12
    invoke-virtual {p1}, Ls9/d;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-nez p1, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method public final e(Lp9/b0;I)I
    .locals 1

    .line 1
    iget-object p1, p1, Lp9/b0;->f:Lp9/r;

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const-string p2, "\\d+"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method

.method public final f(Lp9/b0;Lp9/s;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lp9/b0;->a:Lp9/y;

    .line 2
    iget-object p1, p1, Lp9/y;->a:Lp9/s;

    .line 3
    iget-object v0, p1, Lp9/s;->d:Ljava/lang/String;

    iget-object v1, p2, Lp9/s;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p1, Lp9/s;->e:I

    iget v1, p2, Lp9/s;->e:I

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p1, p1, Lp9/s;->a:Ljava/lang/String;

    iget-object p2, p2, Lp9/s;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public final Lokhttp3/internal/b/j;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/u;


# instance fields
.field private final a:Lokhttp3/x;

.field private final b:Z

.field private volatile c:Lokhttp3/internal/connection/f;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lokhttp3/x;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    .line 75
    iput-boolean p2, p0, Lokhttp3/internal/b/j;->b:Z

    .line 76
    return-void
.end method

.method private a(Lokhttp3/ac;I)I
    .locals 2

    .prologue
    .line 387
    const-string/jumbo v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    .line 399
    :goto_0
    return p2

    .line 395
    :cond_0
    const-string/jumbo v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 399
    :cond_1
    const p2, 0x7fffffff

    goto :goto_0
.end method

.method private a(Lokhttp3/t;)Lokhttp3/a;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 195
    .line 198
    invoke-virtual {p1}, Lokhttp3/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 200
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->l()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 201
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->m()Lokhttp3/g;

    move-result-object v7

    .line 204
    :goto_0
    new-instance v0, Lokhttp3/a;

    invoke-virtual {p1}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/t;->g()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v3}, Lokhttp3/x;->i()Lokhttp3/o;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v4}, Lokhttp3/x;->j()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    .line 205
    invoke-virtual {v8}, Lokhttp3/x;->o()Lokhttp3/b;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    .line 206
    invoke-virtual {v9}, Lokhttp3/x;->e()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v10}, Lokhttp3/x;->u()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v11}, Lokhttp3/x;->v()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v12}, Lokhttp3/x;->f()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/g;Lokhttp3/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 204
    return-object v0

    :cond_0
    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    goto :goto_0
.end method

.method private a(Lokhttp3/ac;Lokhttp3/ae;)Lokhttp3/aa;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 273
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ac;->b()I

    move-result v1

    .line 276
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v2

    .line 277
    sparse-switch v1, :sswitch_data_0

    .line 382
    :cond_1
    :goto_0
    return-object v0

    .line 279
    :sswitch_0
    if-eqz p2, :cond_2

    .line 280
    invoke-virtual {p2}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 282
    :goto_1
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_3

    .line 283
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->e()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->o()Lokhttp3/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/b;->a(Lokhttp3/ae;Lokhttp3/ac;)Lokhttp3/aa;

    move-result-object v0

    goto :goto_0

    .line 288
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->n()Lokhttp3/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/b;->a(Lokhttp3/ae;Lokhttp3/ac;)Lokhttp3/aa;

    move-result-object v0

    goto :goto_0

    .line 294
    :sswitch_2
    const-string/jumbo v1, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_4
    :sswitch_3
    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    const-string/jumbo v1, "Location"

    invoke-virtual {p1, v1}, Lokhttp3/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/t;->c(Ljava/lang/String;)Lokhttp3/t;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v1}, Lokhttp3/t;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 314
    if-nez v3, :cond_5

    iget-object v3, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v3}, Lokhttp3/x;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    :cond_5
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/aa;->e()Lokhttp3/aa$a;

    move-result-object v3

    .line 318
    invoke-static {v2}, Lokhttp3/internal/b/f;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    invoke-static {v2}, Lokhttp3/internal/b/f;->d(Ljava/lang/String;)Z

    move-result v4

    .line 320
    invoke-static {v2}, Lokhttp3/internal/b/f;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 321
    const-string/jumbo v2, "GET"

    invoke-virtual {v3, v2, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    .line 326
    :goto_2
    if-nez v4, :cond_6

    .line 327
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v3, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    .line 328
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v3, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    .line 329
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {v3, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    .line 336
    :cond_6
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/b/j;->a(Lokhttp3/ac;Lokhttp3/t;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 337
    const-string/jumbo v0, "Authorization"

    invoke-virtual {v3, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    .line 340
    :cond_7
    invoke-virtual {v3, v1}, Lokhttp3/aa$a;->a(Lokhttp3/t;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    goto/16 :goto_0

    .line 323
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v0

    .line 324
    :cond_9
    invoke-virtual {v3, v2, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    goto :goto_2

    .line 346
    :sswitch_4
    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/b/l;

    if-nez v1, :cond_1

    .line 355
    invoke-virtual {p1}, Lokhttp3/ac;->h()Lokhttp3/ac;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 356
    invoke-virtual {p1}, Lokhttp3/ac;->h()Lokhttp3/ac;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ac;->b()I

    move-result v1

    const/16 v2, 0x198

    if-eq v1, v2, :cond_1

    .line 361
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lokhttp3/internal/b/j;->a(Lokhttp3/ac;I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 365
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :sswitch_5
    invoke-virtual {p1}, Lokhttp3/ac;->h()Lokhttp3/ac;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 369
    invoke-virtual {p1}, Lokhttp3/ac;->h()Lokhttp3/ac;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ac;->b()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_1

    .line 374
    :cond_b
    const v1, 0x7fffffff

    invoke-direct {p0, p1, v1}, Lokhttp3/internal/b/j;->a(Lokhttp3/ac;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 376
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method

.method private a(Ljava/io/IOException;Lokhttp3/internal/connection/f;ZLokhttp3/aa;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p2, p1}, Lokhttp3/internal/connection/f;->a(Ljava/io/IOException;)V

    .line 220
    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->s()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/b/l;

    if-nez v1, :cond_0

    .line 226
    :cond_2
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/b/j;->a(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p2}, Lokhttp3/internal/connection/f;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/IOException;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 244
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 249
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    .line 252
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 256
    :cond_4
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v1, v0

    .line 264
    goto :goto_0
.end method

.method private a(Lokhttp3/ac;Lokhttp3/t;)Z
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0}, Lokhttp3/t;->g()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/t;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 410
    invoke-virtual {v0}, Lokhttp3/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lokhttp3/u$a;)Lokhttp3/ac;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 106
    invoke-interface {p1}, Lokhttp3/u$a;->a()Lokhttp3/aa;

    move-result-object v7

    .line 107
    check-cast p1, Lokhttp3/internal/b/g;

    .line 108
    invoke-virtual {p1}, Lokhttp3/internal/b/g;->h()Lokhttp3/e;

    move-result-object v3

    .line 109
    invoke-virtual {p1}, Lokhttp3/internal/b/g;->i()Lokhttp3/p;

    move-result-object v4

    .line 111
    new-instance v0, Lokhttp3/internal/connection/f;

    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->p()Lokhttp3/j;

    move-result-object v1

    .line 112
    invoke-virtual {v7}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/b/j;->a(Lokhttp3/t;)Lokhttp3/a;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/b/j;->d:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/f;-><init>(Lokhttp3/j;Lokhttp3/a;Lokhttp3/e;Lokhttp3/p;Ljava/lang/Object;)V

    .line 113
    iput-object v0, p0, Lokhttp3/internal/b/j;->c:Lokhttp3/internal/connection/f;

    move-object v1, v6

    move v2, v8

    move-object v5, v7

    .line 118
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lokhttp3/internal/b/j;->e:Z

    if-eqz v7, :cond_1

    .line 119
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v5, v0, v7, v9}, Lokhttp3/internal/b/g;->a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/c;Lokhttp3/internal/connection/c;)Lokhttp3/ac;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 150
    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v7}, Lokhttp3/ac;->g()Lokhttp3/ac$a;

    move-result-object v5

    .line 152
    invoke-virtual {v1}, Lokhttp3/ac;->g()Lokhttp3/ac$a;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v6}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v1

    .line 152
    invoke-virtual {v5, v1}, Lokhttp3/ac$a;->c(Lokhttp3/ac;)Lokhttp3/ac$a;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v7

    .line 158
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->b()Lokhttp3/ae;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lokhttp3/internal/b/j;->a(Lokhttp3/ac;Lokhttp3/ae;)Lokhttp3/aa;

    move-result-object v10

    .line 160
    if-nez v10, :cond_5

    .line 161
    iget-boolean v1, p0, Lokhttp3/internal/b/j;->b:Z

    if-nez v1, :cond_3

    .line 162
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 164
    :cond_3
    return-object v7

    .line 128
    :catch_0
    move-exception v7

    .line 130
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->a()Ljava/io/IOException;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v0, v10, v5}, Lokhttp3/internal/b/j;->a(Ljava/io/IOException;Lokhttp3/internal/connection/f;ZLokhttp3/aa;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->a()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :catchall_0
    move-exception v1

    .line 144
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/f;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    throw v1

    .line 135
    :catch_1
    move-exception v9

    .line 137
    :try_start_2
    instance-of v7, v9, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v7, :cond_4

    const/4 v7, 0x1

    .line 138
    :goto_1
    invoke-direct {p0, v9, v0, v7, v5}, Lokhttp3/internal/b/j;->a(Ljava/io/IOException;Lokhttp3/internal/connection/f;ZLokhttp3/aa;)Z

    move-result v7

    if-nez v7, :cond_0

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move v7, v8

    .line 137
    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {v7}, Lokhttp3/ac;->f()Lokhttp3/ad;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 169
    add-int/lit8 v9, v2, 0x1

    const/16 v1, 0x14

    if-le v9, v1, :cond_6

    .line 170
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 171
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_6
    invoke-virtual {v10}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/b/l;

    if-eqz v1, :cond_7

    .line 175
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 176
    new-instance v0, Ljava/net/HttpRetryException;

    const-string/jumbo v1, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lokhttp3/ac;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 179
    :cond_7
    invoke-virtual {v10}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lokhttp3/internal/b/j;->a(Lokhttp3/ac;Lokhttp3/t;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 180
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 181
    new-instance v0, Lokhttp3/internal/connection/f;

    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->p()Lokhttp3/j;

    move-result-object v1

    .line 182
    invoke-virtual {v10}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/b/j;->a(Lokhttp3/t;)Lokhttp3/a;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/b/j;->d:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/f;-><init>(Lokhttp3/j;Lokhttp3/a;Lokhttp3/e;Lokhttp3/p;Ljava/lang/Object;)V

    .line 183
    iput-object v0, p0, Lokhttp3/internal/b/j;->c:Lokhttp3/internal/connection/f;

    :cond_8
    move-object v1, v7

    move v2, v9

    move-object v5, v10

    .line 191
    goto/16 :goto_0

    .line 184
    :cond_9
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->a()Lokhttp3/internal/b/c;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/b/j;->e:Z

    .line 89
    iget-object v0, p0, Lokhttp3/internal/b/j;->c:Lokhttp3/internal/connection/f;

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->f()V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lokhttp3/internal/b/j;->d:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lokhttp3/internal/b/j;->e:Z

    return v0
.end method

.class public Lcom/squareup/okhttp/u/k/b;
.super Ljava/net/HttpURLConnection;
.source ""


# static fields
.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/squareup/okhttp/q;


# instance fields
.field final a:Lcom/squareup/okhttp/o;

.field private b:Lcom/squareup/okhttp/k$b;

.field private c:J

.field private d:I

.field protected e:Ljava/io/IOException;

.field protected f:Lcom/squareup/okhttp/internal/http/g;

.field private g:Lcom/squareup/okhttp/k;

.field private h:Lcom/squareup/okhttp/t;

.field i:Lcom/squareup/okhttp/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OPTIONS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "GET"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "HEAD"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "POST"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "PUT"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "DELETE"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "TRACE"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "PATCH"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/squareup/okhttp/u/k/b;->j:Ljava/util/Set;

    new-array v0, v3, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/squareup/okhttp/q;->b(Lcom/squareup/okhttp/n;[B)Lcom/squareup/okhttp/q;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/u/k/b;->k:Lcom/squareup/okhttp/q;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/o;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    new-instance p1, Lcom/squareup/okhttp/k$b;

    invoke-direct {p1}, Lcom/squareup/okhttp/k$b;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/u/k/b;->c:J

    iput-object p2, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/squareup/okhttp/u/j;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private b(Z)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->I()V

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->s()Lcom/squareup/okhttp/t;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/u/k/b;->h:Lcom/squareup/okhttp/t;

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->o()Lcom/squareup/okhttp/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->o()Lcom/squareup/okhttp/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->i()Lcom/squareup/okhttp/j;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/squareup/okhttp/u/k/b;->i:Lcom/squareup/okhttp/j;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/g;->B()V
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/g;->E(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    return v0

    :cond_2
    iput-object p1, p0, Lcom/squareup/okhttp/u/k/b;->e:Ljava/io/IOException;

    throw p1

    :catch_1
    move-exception p1

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/g;->D(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/g;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/u/k/b;->e:Ljava/io/IOException;

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/u/k/b;->e:Ljava/io/IOException;

    throw p1
.end method

.method private c()Lcom/squareup/okhttp/k;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->g:Lcom/squareup/okhttp/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/k;->e()Lcom/squareup/okhttp/k$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/u/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-Response-Source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/squareup/okhttp/u/k/b;->g(Lcom/squareup/okhttp/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/u/k/b;->g:Lcom/squareup/okhttp/k;

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->g:Lcom/squareup/okhttp/k;

    return-object v0
.end method

.method private d()Lcom/squareup/okhttp/internal/http/g;
    .locals 5

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->e()V

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    return-object v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/u/k/b;->b(Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/g;->m()Lcom/squareup/okhttp/p;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->G()V

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    return-object v0

    :cond_2
    iget v3, p0, Lcom/squareup/okhttp/u/k/b;->d:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/squareup/okhttp/u/k/b;->d:I

    const/16 v0, 0x14

    if-gt v3, v0, :cond_7

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->o()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->i()Lcom/squareup/okhttp/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/k;->e()Lcom/squareup/okhttp/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->q()Lokio/Sink;

    move-result-object v0

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/squareup/okhttp/internal/http/m;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/net/HttpRetryException;

    iget v1, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const-string v2, "Cannot retry streamed HTTP body"

    invoke-direct {v0, v2, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/g;->H(Lcom/squareup/okhttp/l;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/g;->G()V

    :cond_6
    iget-object v3, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/g;->f()Lcom/squareup/okhttp/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/squareup/okhttp/internal/http/m;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/squareup/okhttp/u/k/b;->f(Ljava/lang/String;Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/u/k/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->e:Ljava/io/IOException;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    :try_start_0
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "POST"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/squareup/okhttp/u/k/b;->f(Ljava/lang/String;Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/squareup/okhttp/u/k/b;->e:Ljava/io/IOException;

    throw v0

    :cond_4
    throw v0
.end method

.method private f(Ljava/lang/String;Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/g;
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/http/h;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/okhttp/u/k/b;->k:Lcom/squareup/okhttp/q;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Lcom/squareup/okhttp/p$b;

    invoke-direct {v3}, Lcom/squareup/okhttp/p$b;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/p$b;->l(Ljava/net/URL;)Lcom/squareup/okhttp/p$b;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v1}, Lcom/squareup/okhttp/p$b;->i(Ljava/lang/String;Lcom/squareup/okhttp/q;)Lcom/squareup/okhttp/p$b;

    iget-object v1, v0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/k;->f()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    invoke-virtual {v1, v7}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/squareup/okhttp/p$b;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, v0, Lcom/squareup/okhttp/u/k/b;->c:J

    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Length"

    invoke-virtual {v3, v5, v4}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    goto :goto_2

    :cond_2
    iget v4, v0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-lez v4, :cond_3

    const-string v4, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_4
    move v10, v6

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    const-string v4, "User-Agent"

    invoke-virtual {v1, v4}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/u/k/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_6
    invoke-virtual {v3}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object v9

    iget-object v1, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    sget-object v3, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/u/b;->f(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/c;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1}, Lcom/squareup/okhttp/o;->d()Lcom/squareup/okhttp/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/o;->D(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/o;

    :cond_7
    move-object v8, v1

    new-instance v1, Lcom/squareup/okhttp/internal/http/g;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v7 .. v16}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;ZZZLcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)V

    return-object v1
.end method

.method private static g(Lcom/squareup/okhttp/r;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->t()Lcom/squareup/okhttp/r;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->n()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->t()Lcom/squareup/okhttp/r;

    move-result-object p0

    goto :goto_1
.end method

.method private h(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {p2}, Lcom/squareup/okhttp/o;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p2, -0x1

    const-string v1, ","

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    :try_start_0
    invoke-static {v2}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/o;->L(Ljava/util/List;)Lcom/squareup/okhttp/o;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring header "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/u/g;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/squareup/okhttp/u/k/b;->h(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect()V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->e()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/u/k/b;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->l()V

    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->g()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->t(Lcom/squareup/okhttp/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/r;->n()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/s;->a()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->c()Lcom/squareup/okhttp/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/o;->a(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/o;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->c()Lcom/squareup/okhttp/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->c()Lcom/squareup/okhttp/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
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

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->c()Lcom/squareup/okhttp/k;

    move-result-object v0

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/o;->a(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/j;->i(Lcom/squareup/okhttp/k;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->doInput:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/u/k/b;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/s;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/squareup/okhttp/u/k/b;->connect()V

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->n()Lokio/BufferedSink;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method does not support a request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/l;->i(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/u/k/b;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->o()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

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

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->r()I

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

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/j;->i(Lcom/squareup/okhttp/k;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

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

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k$b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 1

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->n()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/squareup/okhttp/u/k/b;->d()Lcom/squareup/okhttp/internal/http/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/o;->E(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/u/k/b;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lcom/squareup/okhttp/u/k/b;->c:J

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentLength < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already in chunked mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIfModifiedSince(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    iget-wide p1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    const-string v0, "If-Modified-Since"

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    iget-object p1, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    if-eqz v3, :cond_0

    new-instance p2, Ljava/util/Date;

    iget-wide v1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/squareup/okhttp/k$b;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/k$b;->h(Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    :goto_0
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/o;->I(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/o;->P(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/squareup/okhttp/u/k/b;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected one of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring header "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/u/g;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->b:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/k$b;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/squareup/okhttp/u/k/b;->h(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final usingProxy()Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->h:Lcom/squareup/okhttp/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->o()Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

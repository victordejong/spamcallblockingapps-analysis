.class public final Lcom/squareup/okhttp/internal/http/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/g$c;
    }
.end annotation


# static fields
.field private static final u:Lcom/squareup/okhttp/s;


# instance fields
.field final a:Lcom/squareup/okhttp/o;

.field private b:Lcom/squareup/okhttp/f;

.field private c:Lcom/squareup/okhttp/a;

.field private d:Lcom/squareup/okhttp/internal/http/n;

.field private e:Lcom/squareup/okhttp/t;

.field private final f:Lcom/squareup/okhttp/r;

.field private g:Lcom/squareup/okhttp/internal/http/p;

.field h:J

.field private i:Z

.field public final j:Z

.field private final k:Lcom/squareup/okhttp/p;

.field private l:Lcom/squareup/okhttp/p;

.field private m:Lcom/squareup/okhttp/r;

.field private n:Lcom/squareup/okhttp/r;

.field private o:Lokio/Sink;

.field private p:Lokio/BufferedSink;

.field private final q:Z

.field private final r:Z

.field private s:Lcom/squareup/okhttp/internal/http/a;

.field private t:Lcom/squareup/okhttp/internal/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/internal/http/g$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/g$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/g;->u:Lcom/squareup/okhttp/s;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;ZZZLcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:J

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/g;->j:Z

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/http/g;->q:Z

    iput-boolean p5, p0, Lcom/squareup/okhttp/internal/http/g;->r:Z

    iput-object p6, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    iput-object p7, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    iput-object p8, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    iput-object p9, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    if-eqz p6, :cond_0

    sget-object p1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {p1, p6, p0}, Lcom/squareup/okhttp/u/b;->n(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;)V

    invoke-virtual {p6}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/t;

    return-void
.end method

.method private A()Lcom/squareup/okhttp/r;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/p;->finishRequest()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/p;->f()Lcom/squareup/okhttp/r$b;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->i()Lcom/squareup/okhttp/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->r(Lcom/squareup/okhttp/j;)Lcom/squareup/okhttp/r$b;

    sget-object v1, Lcom/squareup/okhttp/internal/http/j;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/r$b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/r$b;

    sget-object v1, Lcom/squareup/okhttp/internal/http/j;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/r$b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/http/p;->h(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/r$b;->l(Lcom/squareup/okhttp/s;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->v()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/u/b;->o(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/Protocol;)V

    return-object v0
.end method

.method private static J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/r$b;->l(Lcom/squareup/okhttp/s;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {p0}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private K(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/s;->x()Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/k;->e()Lcom/squareup/okhttp/k$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/k$b;->h(Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/k$b;->h(Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    invoke-virtual {v2}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/r$b;->t(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/r$b;

    new-instance v2, Lcom/squareup/okhttp/internal/http/k;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/squareup/okhttp/internal/http/k;-><init>(Lcom/squareup/okhttp/k;Lokio/BufferedSource;)V

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/r$b;->l(Lcom/squareup/okhttp/s;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static L(Lcom/squareup/okhttp/r;Lcom/squareup/okhttp/r;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->n()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object p0

    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/k;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/k;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/f;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    return-object p1
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/r;
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->A()Lcom/squareup/okhttp/r;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/squareup/okhttp/internal/http/a;Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 3

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/http/a;->body()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/s;->x()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    new-instance v2, Lcom/squareup/okhttp/internal/http/g$b;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/squareup/okhttp/internal/http/g$b;-><init>(Lcom/squareup/okhttp/internal/http/g;Lokio/BufferedSource;Lcom/squareup/okhttp/internal/http/a;Lokio/BufferedSink;)V

    invoke-virtual {p2}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object p1

    new-instance v0, Lcom/squareup/okhttp/internal/http/k;

    invoke-virtual {p2}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object p2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/http/k;-><init>(Lcom/squareup/okhttp/k;Lokio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/r$b;->l(Lcom/squareup/okhttp/s;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object p1

    return-object p1
.end method

.method private static g(Lcom/squareup/okhttp/k;Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/k;
    .locals 7

    new-instance v0, Lcom/squareup/okhttp/k$b;

    invoke-direct {v0}, Lcom/squareup/okhttp/k$b;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/k;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/j;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/k;->f()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/j;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/g;->j(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/a;

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/n;->b(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/squareup/okhttp/internal/http/RequestException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->k()Lcom/squareup/okhttp/f;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/squareup/okhttp/u/b;->e(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/p;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/t;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private i(Lcom/squareup/okhttp/internal/http/n;Ljava/io/IOException;)V
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u/b;->k(Lcom/squareup/okhttp/f;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/squareup/okhttp/internal/http/n;->a(Lcom/squareup/okhttp/t;Ljava/io/IOException;)V

    return-void
.end method

.method private static j(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/a;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/p;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->u()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->f()Lcom/squareup/okhttp/e;

    move-result-object v2

    move-object v8, v0

    move-object v7, v1

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    :goto_0
    new-instance v0, Lcom/squareup/okhttp/a;

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->z()I

    move-result v5

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->t()Ljavax/net/SocketFactory;

    move-result-object v6

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->e()Lcom/squareup/okhttp/b;

    move-result-object v10

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->o()Ljava/net/Proxy;

    move-result-object v11

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->n()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->i()Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->q()Ljava/net/ProxySelector;

    move-result-object v14

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/squareup/okhttp/a;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method private k()Lcom/squareup/okhttp/f;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->h()Lcom/squareup/okhttp/g;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/a;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/g;->c(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/f;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/u/b;->g(Lcom/squareup/okhttp/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/n;->h()Lcom/squareup/okhttp/t;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/f;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/f;-><init>(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static t(Lcom/squareup/okhttp/r;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->w()Lcom/squareup/okhttp/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->n()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/j;->e(Lcom/squareup/okhttp/r;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/r;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method private v(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private w(Ljava/io/IOException;)Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private x()V
    .locals 3

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u/b;->f(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/r;Lcom/squareup/okhttp/p;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/u/c;->b(Lcom/squareup/okhttp/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/u/c;->c(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/internal/http/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->s:Lcom/squareup/okhttp/internal/http/a;

    return-void
.end method

.method private y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;
    .locals 4

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->m()Lcom/squareup/okhttp/p$b;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/u/i;->g(Lcom/squareup/okhttp/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_2
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->i:Z

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1}, Lcom/squareup/okhttp/o;->j()Ljava/net/CookieHandler;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->i()Lcom/squareup/okhttp/k;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/j;->i(Lcom/squareup/okhttp/k;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->n()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/j;->a(Lcom/squareup/okhttp/p$b;Ljava/util/Map;)V

    :cond_4
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/squareup/okhttp/u/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_5
    invoke-virtual {v0}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public B()V
    .locals 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->r:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/p;->c(Lcom/squareup/okhttp/p;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->A()Lcom/squareup/okhttp/r;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->q:Z

    if-nez v1, :cond_6

    new-instance v1, Lcom/squareup/okhttp/internal/http/g$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/squareup/okhttp/internal/http/g$c;-><init>(Lcom/squareup/okhttp/internal/http/g;ILcom/squareup/okhttp/p;)V

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/http/g$c;->b(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    :cond_7
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/j;->d(Lcom/squareup/okhttp/p;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    instance-of v1, v0, Lcom/squareup/okhttp/internal/http/m;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->m()Lcom/squareup/okhttp/p$b;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/p;->c(Lcom/squareup/okhttp/p;)V

    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lokio/Sink;->close()V

    goto :goto_2

    :cond_a
    invoke-interface {v0}, Lokio/Sink;->close()V

    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    instance-of v1, v0, Lcom/squareup/okhttp/internal/http/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    check-cast v0, Lcom/squareup/okhttp/internal/http/m;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/p;->d(Lcom/squareup/okhttp/internal/http/m;)V

    goto/16 :goto_1

    :goto_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/g;->C(Lcom/squareup/okhttp/k;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    if-eqz v1, :cond_c

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/g;->L(Lcom/squareup/okhttp/r;Lcom/squareup/okhttp/r;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->w(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-virtual {v2}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/g;->g(Lcom/squareup/okhttp/k;Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->t(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/r$b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->n(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->v(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/s;->close()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->G()V

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u/b;->f(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/u/c;->trackConditionalCacheHit()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/u/c;->e(Lcom/squareup/okhttp/r;Lcom/squareup/okhttp/r;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->K(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    return-void

    :cond_b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    :cond_c
    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->w(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->n(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/r$b;->v(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->t(Lcom/squareup/okhttp/r;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->x()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->s:Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/g;->e(Lcom/squareup/okhttp/internal/http/a;Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->K(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    :cond_d
    return-void
.end method

.method public C(Lcom/squareup/okhttp/k;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->j()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->n()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/http/j;->i(Lcom/squareup/okhttp/k;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public D(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/g;
    .locals 10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/g;->i(Lcom/squareup/okhttp/internal/http/n;Ljava/io/IOException;)V

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/g;->v(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->f()Lcom/squareup/okhttp/f;

    move-result-object v6

    new-instance p1, Lcom/squareup/okhttp/internal/http/g;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/g;->j:Z

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/g;->q:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/g;->r:Z

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    move-object v8, v0

    check-cast v8, Lcom/squareup/okhttp/internal/http/m;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;ZZZLcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)V

    return-object p1
.end method

.method public E(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/g;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/g;->F(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/g;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/g;
    .locals 11

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/http/g;->i(Lcom/squareup/okhttp/internal/http/n;Ljava/io/IOException;)V

    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/squareup/okhttp/internal/http/m;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v2, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/n;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/g;->w(Ljava/io/IOException;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->f()Lcom/squareup/okhttp/f;

    move-result-object v7

    new-instance p1, Lcom/squareup/okhttp/internal/http/g;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/g;->j:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/g;->q:Z

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/http/g;->r:Z

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/n;

    move-object v9, p2

    check-cast v9, Lcom/squareup/okhttp/internal/http/m;

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/p;ZZZLcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/r;)V

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/p;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-void
.end method

.method public H(Lcom/squareup/okhttp/l;)Z
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->z()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->z()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I()V
    .locals 7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->t:Lcom/squareup/okhttp/internal/http/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/u/b;->f(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/u/c;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/squareup/okhttp/internal/http/b$b;

    invoke-direct {v6, v4, v5, v0, v3}, Lcom/squareup/okhttp/internal/http/b$b;-><init>(JLcom/squareup/okhttp/p;Lcom/squareup/okhttp/r;)V

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/b$b;->c()Lcom/squareup/okhttp/internal/http/b;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/g;->t:Lcom/squareup/okhttp/internal/http/b;

    iget-object v5, v4, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/p;

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    iget-object v5, v4, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/r;

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Lcom/squareup/okhttp/u/c;->d(Lcom/squareup/okhttp/internal/http/b;)V

    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->h()V

    :cond_4
    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v1, v2, p0}, Lcom/squareup/okhttp/u/b;->i(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->q:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->z()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/j;->d(Lcom/squareup/okhttp/p;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->j:Z

    if-eqz v2, :cond_7

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/p;->c(Lcom/squareup/okhttp/p;)V

    new-instance v2, Lcom/squareup/okhttp/internal/http/m;

    long-to-int v1, v0

    invoke-direct {v2, v1}, Lcom/squareup/okhttp/internal/http/m;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lcom/squareup/okhttp/internal/http/m;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/m;-><init>()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/p;->c(Lcom/squareup/okhttp/p;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lcom/squareup/okhttp/p;

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/p;J)Lokio/Sink;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1}, Lcom/squareup/okhttp/o;->h()Lcom/squareup/okhttp/g;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0, v1, v3}, Lcom/squareup/okhttp/u/b;->j(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->u()Lcom/squareup/okhttp/r$b;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->w(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lcom/squareup/okhttp/r;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->n(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/squareup/okhttp/r$b;

    invoke-direct {v0}, Lcom/squareup/okhttp/r$b;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->f:Lcom/squareup/okhttp/r;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->J(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->w(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r$b;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->x(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/r$b;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->q(I)Lcom/squareup/okhttp/r$b;

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->u(Ljava/lang/String;)Lcom/squareup/okhttp/r$b;

    sget-object v1, Lcom/squareup/okhttp/internal/http/g;->u:Lcom/squareup/okhttp/s;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r$b;->l(Lcom/squareup/okhttp/s;)Lcom/squareup/okhttp/r$b;

    :goto_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->K(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    :cond_b
    :goto_3
    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public M()V
    .locals 5

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/squareup/okhttp/f;
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    :cond_2
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-object v1

    :cond_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/p;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-object v1

    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/u/b;->c(Lcom/squareup/okhttp/f;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-object v0
.end method

.method public l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->g:Lcom/squareup/okhttp/internal/http/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/http/p;->e(Lcom/squareup/okhttp/internal/http/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v1, v0, p0}, Lcom/squareup/okhttp/u/b;->d(Lcom/squareup/okhttp/f;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public m()Lcom/squareup/okhttp/p;
    .locals 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->s()Lcom/squareup/okhttp/t;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->s()Lcom/squareup/okhttp/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->o()Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-virtual {v1}, Lcom/squareup/okhttp/r;->n()I

    move-result v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x134

    if-eq v1, v2, :cond_4

    const/16 v2, 0x191

    if-eq v1, v2, :cond_3

    const/16 v2, 0x197

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1}, Lcom/squareup/okhttp/o;->e()Lcom/squareup/okhttp/b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/j;->g(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/r;Ljava/net/Proxy;)Lcom/squareup/okhttp/p;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v4

    :cond_5
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->k()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v4

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v4

    :cond_7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/l;->C(Ljava/lang/String;)Lcom/squareup/okhttp/l;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v4

    :cond_8
    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/l;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v1}, Lcom/squareup/okhttp/o;->l()Z

    move-result v1

    if-nez v1, :cond_9

    return-object v4

    :cond_9
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->m()Lcom/squareup/okhttp/p$b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v3, v4}, Lcom/squareup/okhttp/p$b;->i(Ljava/lang/String;Lcom/squareup/okhttp/q;)Lcom/squareup/okhttp/p$b;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p$b;->j(Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p$b;->j(Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p$b;->j(Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_a
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->H(Lcom/squareup/okhttp/l;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p$b;->j(Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_b
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/p$b;->k(Lcom/squareup/okhttp/l;)Lcom/squareup/okhttp/p$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public n()Lokio/BufferedSink;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->q()Lokio/Sink;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lokio/BufferedSink;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o()Lcom/squareup/okhttp/f;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/f;

    return-object v0
.end method

.method public p()Lcom/squareup/okhttp/p;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    return-object v0
.end method

.method public q()Lokio/Sink;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->t:Lcom/squareup/okhttp/internal/http/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->o:Lokio/Sink;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public r()Lcom/squareup/okhttp/r;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public s()Lcom/squareup/okhttp/t;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->n:Lcom/squareup/okhttp/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method z()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

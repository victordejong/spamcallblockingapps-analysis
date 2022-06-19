.class public final Lcom/squareup/okhttp/internal/http/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/e$g;,
        Lcom/squareup/okhttp/internal/http/e$d;,
        Lcom/squareup/okhttp/internal/http/e$f;,
        Lcom/squareup/okhttp/internal/http/e$b;,
        Lcom/squareup/okhttp/internal/http/e$c;,
        Lcom/squareup/okhttp/internal/http/e$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/g;

.field private final b:Lcom/squareup/okhttp/f;

.field private final c:Ljava/net/Socket;

.field private final d:Lokio/BufferedSource;

.field private final e:Lokio/BufferedSink;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->a:Lcom/squareup/okhttp/g;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-static {p3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-static {p3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/e;)Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/e;Lokio/ForwardingTimeout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/e;->m(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/e;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/e;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    return p1
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/http/e;)Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/http/e;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    return p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/http/e;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    return p1
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/g;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/e;->a:Lcom/squareup/okhttp/g;

    return-object p0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    return-object p0
.end method

.method private m(Lokio/ForwardingTimeout;)V
    .locals 2

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public A(Lcom/squareup/okhttp/internal/http/m;)V
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/m;->p(Lokio/Sink;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/u/b;->d(Lcom/squareup/okhttp/f;Ljava/lang/Object;)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/e;->c:Ljava/net/Socket;

    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catch_1
    return v1
.end method

.method public q()Lokio/Sink;
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/e$c;-><init>(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/e$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$d;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/e$d;-><init>(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/g;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(J)Lokio/Sink;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/e$e;-><init>(Lcom/squareup/okhttp/internal/http/e;JLcom/squareup/okhttp/internal/http/e$a;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(J)Lokio/Source;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/e$f;-><init>(Lcom/squareup/okhttp/internal/http/e;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()Lokio/Source;
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/e$g;-><init>(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/e$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->g:I

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:Lcom/squareup/okhttp/g;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/u/b;->j(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;)V

    :cond_0
    return-void
.end method

.method public w(Lcom/squareup/okhttp/k$b;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/u/b;->a(Lcom/squareup/okhttp/k$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()Lcom/squareup/okhttp/r$b;
    .locals 5

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/o;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/o;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/r$b;

    invoke-direct {v1}, Lcom/squareup/okhttp/r$b;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/o;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->x(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/r$b;

    iget v2, v0, Lcom/squareup/okhttp/internal/http/o;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->q(I)Lcom/squareup/okhttp/r$b;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->u(Ljava/lang/String;)Lcom/squareup/okhttp/r$b;

    new-instance v2, Lcom/squareup/okhttp/k$b;

    invoke-direct {v2}, Lcom/squareup/okhttp/k$b;-><init>()V

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/e;->w(Lcom/squareup/okhttp/k$b;)V

    sget-object v3, Lcom/squareup/okhttp/internal/http/j;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/internal/http/o;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    invoke-virtual {v2}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/r$b;->t(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/r$b;

    iget v0, v0, Lcom/squareup/okhttp/internal/http/o;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/f;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/u/b;->k(Lcom/squareup/okhttp/f;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public y(II)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_1
    return-void
.end method

.method public z(Lcom/squareup/okhttp/k;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/k;->f()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    iput p1, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/e;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.class public final Lcom/squareup/okhttp/internal/http/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/http/p;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/g;

.field private final b:Lcom/squareup/okhttp/internal/http/e;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/internal/http/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    return-void
.end method

.method private i(Lcom/squareup/okhttp/r;)Lokio/Source;
    .locals 4

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/g;->t(Lcom/squareup/okhttp/r;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/okhttp/internal/http/e;->t(J)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/r;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->r(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/j;->e(Lcom/squareup/okhttp/r;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/okhttp/internal/http/e;->t(J)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->u()Lokio/Source;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/p;J)Lokio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->q()Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/http/e;->s(J)Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->v()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->l()V

    :goto_0
    return-void
.end method

.method public c(Lcom/squareup/okhttp/p;)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->M()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->o()Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/g;->o()Lcom/squareup/okhttp/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/http/l;->a(Lcom/squareup/okhttp/p;Ljava/net/Proxy$Type;Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->i()Lcom/squareup/okhttp/k;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/http/e;->z(Lcom/squareup/okhttp/k;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/squareup/okhttp/internal/http/m;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->A(Lcom/squareup/okhttp/internal/http/m;)V

    return-void
.end method

.method public e(Lcom/squareup/okhttp/internal/http/g;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lcom/squareup/okhttp/r$b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->x()Lcom/squareup/okhttp/r$b;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->n()V

    return-void
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->p()Lcom/squareup/okhttp/p;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->b:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public h(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/s;
    .locals 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/i;->i(Lcom/squareup/okhttp/r;)Lokio/Source;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/http/k;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/http/k;-><init>(Lcom/squareup/okhttp/k;Lokio/BufferedSource;)V

    return-object v1
.end method

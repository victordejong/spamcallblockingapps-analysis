.class Lcom/squareup/okhttp/internal/http/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field final synthetic c:Lcom/squareup/okhttp/internal/http/g;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/g;ILcom/squareup/okhttp/p;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/f;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->a(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r;
    .locals 7

    iget v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->b:I

    iget v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->y()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/m;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g$c;->a()Lcom/squareup/okhttp/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/t;->a()Lcom/squareup/okhttp/a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->z()I

    move-result v5

    invoke-virtual {v4}, Lcom/squareup/okhttp/a;->k()I

    move-result v4

    if-ne v5, v4, :cond_1

    iget v4, p0, Lcom/squareup/okhttp/internal/http/g$c;->b:I

    if-gt v4, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v4}, Lcom/squareup/okhttp/o;->y()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    new-instance v0, Lcom/squareup/okhttp/internal/http/g$c;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    iget v5, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    add-int/2addr v5, v1

    invoke-direct {v0, v4, v5, p1}, Lcom/squareup/okhttp/internal/http/g$c;-><init>(Lcom/squareup/okhttp/internal/http/g;ILcom/squareup/okhttp/p;)V

    iget-object p1, v4, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->y()Ljava/util/List;

    move-result-object p1

    iget v4, p0, Lcom/squareup/okhttp/internal/http/g$c;->a:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/m;

    invoke-interface {p1, v0}, Lcom/squareup/okhttp/m;->a(Lcom/squareup/okhttp/m$a;)Lcom/squareup/okhttp/r;

    move-result-object v4

    iget v0, v0, Lcom/squareup/okhttp/internal/http/g$c;->b:I

    if-ne v0, v1, :cond_3

    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->b(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/http/p;->c(Lcom/squareup/okhttp/p;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/http/g;->c(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->f()Lcom/squareup/okhttp/q;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->b(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->f()Lcom/squareup/okhttp/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/q;->a()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/p;J)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->f()Lcom/squareup/okhttp/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/q;->d(Lokio/BufferedSink;)V

    invoke-interface {v0}, Lokio/Sink;->close()V

    :cond_5
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/g$c;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/g;->d(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->n()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/s;->p()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_8

    :cond_7
    return-object p1

    :cond_8
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had non-zero Content-Length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->k()Lcom/squareup/okhttp/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/s;->p()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class abstract Lcom/squareup/okhttp/internal/http/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final b:Lokio/ForwardingTimeout;

.field protected c:Z

.field final synthetic d:Lcom/squareup/okhttp/internal/http/e;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/e;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->e(Lcom/squareup/okhttp/internal/http/e;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->b:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/e$b;-><init>(Lcom/squareup/okhttp/internal/http/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->c(Lcom/squareup/okhttp/internal/http/e;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e$b;->b:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->b(Lcom/squareup/okhttp/internal/http/e;Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->d(Lcom/squareup/okhttp/internal/http/e;I)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->f(Lcom/squareup/okhttp/internal/http/e;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {p1, v1}, Lcom/squareup/okhttp/internal/http/e;->g(Lcom/squareup/okhttp/internal/http/e;I)I

    sget-object p1, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->h(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/g;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/e;->i(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/okhttp/u/b;->j(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->f(Lcom/squareup/okhttp/internal/http/e;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->d(Lcom/squareup/okhttp/internal/http/e;I)I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->i(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/e;->c(Lcom/squareup/okhttp/internal/http/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final p()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->i(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->d:Lcom/squareup/okhttp/internal/http/e;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->d(Lcom/squareup/okhttp/internal/http/e;I)I

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$b;->b:Lokio/ForwardingTimeout;

    return-object v0
.end method

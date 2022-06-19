.class public final Lcom/squareup/okhttp/internal/http/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/squareup/okhttp/a;

.field private final b:Lcom/squareup/okhttp/l;

.field private final c:Lcom/squareup/okhttp/u/e;

.field private final d:Lcom/squareup/okhttp/o;

.field private final e:Lcom/squareup/okhttp/u/h;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/net/InetSocketAddress;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/l;Lcom/squareup/okhttp/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->l:Ljava/util/List;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/l;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lcom/squareup/okhttp/o;

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/u/b;->l(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/h;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->e:Lcom/squareup/okhttp/u/h;

    sget-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/u/b;->h(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/e;

    move-result-object p3

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/u/e;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->f()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/squareup/okhttp/internal/http/n;->m(Lcom/squareup/okhttp/l;Ljava/net/Proxy;)V

    return-void
.end method

.method public static b(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/internal/http/n;
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/n;-><init>(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/l;Lcom/squareup/okhttp/o;)V

    return-object v0
.end method

.method static c(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/n;->k:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g()Z
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/n;->i:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Ljava/net/InetSocketAddress;
    .locals 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/n;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/http/n;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v2}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()Lcom/squareup/okhttp/t;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method private k()Ljava/net/Proxy;
    .locals 3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/n;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/http/n;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/n;->l(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v2}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(Ljava/net/Proxy;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/n;->c(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->k()I

    move-result p1

    :goto_1
    const/4 v1, 0x1

    if-lt p1, v1, :cond_4

    const v1, 0xffff

    if-gt p1, v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/u/e;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/u/e;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/n;->j:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iput v2, p0, Lcom/squareup/okhttp/internal/http/n;->k:I

    return-void

    :cond_4
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; port is out of range"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private m(Lcom/squareup/okhttp/l;Ljava/net/Proxy;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lcom/squareup/okhttp/o;

    invoke-virtual {p2}, Lcom/squareup/okhttp/o;->q()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->E()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->h:Ljava/util/List;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/squareup/okhttp/internal/http/n;->i:I

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/t;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/l;

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->E()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->e:Lcom/squareup/okhttp/u/h;

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/u/h;->b(Lcom/squareup/okhttp/t;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Lcom/squareup/okhttp/t;
    .locals 4

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->j()Lcom/squareup/okhttp/t;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->k()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->f:Ljava/net/Proxy;

    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->i()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->g:Ljava/net/InetSocketAddress;

    new-instance v1, Lcom/squareup/okhttp/t;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/n;->f:Ljava/net/Proxy;

    invoke-direct {v1, v2, v3, v0}, Lcom/squareup/okhttp/t;-><init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->e:Lcom/squareup/okhttp/u/h;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u/h;->c(Lcom/squareup/okhttp/t;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->h()Lcom/squareup/okhttp/t;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

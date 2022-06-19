.class public final Lcom/squareup/okhttp/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ljava/net/Proxy;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:Ljavax/net/SocketFactory;

.field final e:Ljavax/net/ssl/SSLSocketFactory;

.field final f:Ljavax/net/ssl/HostnameVerifier;

.field final g:Lcom/squareup/okhttp/e;

.field final h:Lcom/squareup/okhttp/b;

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/squareup/okhttp/e;",
            "Lcom/squareup/okhttp/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-lez p2, :cond_3

    if-eqz p7, :cond_2

    if-eqz p9, :cond_1

    if-eqz p11, :cond_0

    iput-object p8, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    iput-object p1, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/squareup/okhttp/a;->c:I

    iput-object p3, p0, Lcom/squareup/okhttp/a;->d:Ljavax/net/SocketFactory;

    iput-object p4, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p5, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    iput-object p6, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/e;

    iput-object p7, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    invoke-static {p9}, Lcom/squareup/okhttp/u/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    invoke-static {p10}, Lcom/squareup/okhttp/u/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uriPort <= 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uriHost == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public b()Lcom/squareup/okhttp/e;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/e;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/squareup/okhttp/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/okhttp/a;

    iget-object v0, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/a;->c:I

    iget v2, p1, Lcom/squareup/okhttp/a;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/e;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/e;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    iget-object p1, p1, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->d:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/squareup/okhttp/a;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/a;->c:I

    return v0
.end method

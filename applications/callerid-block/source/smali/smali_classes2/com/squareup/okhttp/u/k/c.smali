.class public final Lcom/squareup/okhttp/u/k/c;
.super Lcom/squareup/okhttp/u/k/a;
.source ""


# instance fields
.field private final b:Lcom/squareup/okhttp/u/k/b;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/u/k/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/u/k/a;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/o;)V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/u/k/b;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/u/k/b;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/o;)V

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/u/k/c;-><init>(Lcom/squareup/okhttp/u/k/b;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/squareup/okhttp/j;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->f:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/r;->o()Lcom/squareup/okhttp/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->i:Lcom/squareup/okhttp/j;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentLengthLong()J
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->u()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/u/k/b;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/o;->J(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/o;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/u/k/c;->b:Lcom/squareup/okhttp/u/k/b;

    iget-object v0, v0, Lcom/squareup/okhttp/u/k/b;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/o;->R(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/o;

    return-void
.end method

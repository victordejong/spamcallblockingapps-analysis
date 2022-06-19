.class public final Lcom/squareup/okhttp/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/squareup/okhttp/g;

.field private final b:Lcom/squareup/okhttp/t;

.field private c:Ljava/net/Socket;

.field private d:Z

.field private e:Lcom/squareup/okhttp/internal/http/e;

.field private f:Lcom/squareup/okhttp/internal/framed/c;

.field private g:Lcom/squareup/okhttp/Protocol;

.field private h:J

.field private i:Lcom/squareup/okhttp/j;

.field private j:I

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/f;->d:Z

    sget-object v0, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    iput-object p1, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    iput-object p2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    return-void
.end method

.method private e(IIILcom/squareup/okhttp/p;Lcom/squareup/okhttp/u/a;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v2}, Lcom/squareup/okhttp/t;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/u/g;->d(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    iget-object p1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object p1, p1, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/squareup/okhttp/f;->f(IILcom/squareup/okhttp/p;Lcom/squareup/okhttp/u/a;)V

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    sget-object p2, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/squareup/okhttp/internal/http/e;

    iget-object p2, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    iget-object p3, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-direct {p1, p2, p0, p3}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;Ljava/net/Socket;)V

    iput-object p1, p0, Lcom/squareup/okhttp/f;->e:Lcom/squareup/okhttp/internal/http/e;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p1, Lcom/squareup/okhttp/internal/framed/c$h;

    iget-object p2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object p2, p2, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    iget-object p2, p2, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    const/4 p3, 0x1

    iget-object p4, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-direct {p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/c$h;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object p2, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/c$h;->h(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/framed/c$h;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c$h;->g()Lcom/squareup/okhttp/internal/framed/c;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c;->x0()V

    :goto_1
    return-void
.end method

.method private f(IILcom/squareup/okhttp/p;Lcom/squareup/okhttp/u/a;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/f;->g(IILcom/squareup/okhttp/p;)V

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->a()Lcom/squareup/okhttp/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->k()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p4, p2}, Lcom/squareup/okhttp/u/a;->a(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/h;

    move-result-object p4

    invoke-virtual {p4}, Lcom/squareup/okhttp/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/squareup/okhttp/u/g;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/j;->b(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->b()Lcom/squareup/okhttp/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/squareup/okhttp/j;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/okhttp/e;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p4}, Lcom/squareup/okhttp/h;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/u/g;->h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/f;->i:Lcom/squareup/okhttp/j;

    iput-object p2, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/u/g;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/j;->e()Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    new-instance p4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hostname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    certificate: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/squareup/okhttp/e;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    DN: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    subjectAltNames: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/squareup/okhttp/u/l/a;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object p3, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p3, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/squareup/okhttp/u/i;->m(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz p3, :cond_7

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/u/g;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_7
    invoke-static {p3}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    throw p1
.end method

.method private g(IILcom/squareup/okhttp/p;)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/squareup/okhttp/f;->h(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;

    move-result-object p3

    new-instance v0, Lcom/squareup/okhttp/internal/http/e;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    iget-object v2, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;Ljava/net/Socket;)V

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/e;->y(II)V

    invoke-virtual {p3}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/l;->z()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Lcom/squareup/okhttp/p;->i()Lcom/squareup/okhttp/k;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/squareup/okhttp/internal/http/e;->z(Lcom/squareup/okhttp/k;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->n()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->x()Lcom/squareup/okhttp/r$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/r$b;->y(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {p2}, Lcom/squareup/okhttp/r$b;->m()Lcom/squareup/okhttp/r;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/j;->e(Lcom/squareup/okhttp/r;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    cmp-long p3, v1, v3

    if-nez p3, :cond_0

    move-wide v1, v5

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/e;->t(J)Lokio/Source;

    move-result-object p3

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, v1, v2}, Lcom/squareup/okhttp/u/i;->o(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {p3}, Lokio/Source;->close()V

    invoke-virtual {p2}, Lcom/squareup/okhttp/r;->n()I

    move-result p3

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_3

    const/16 v1, 0x197

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {p3}, Lcom/squareup/okhttp/t;->a()Lcom/squareup/okhttp/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/squareup/okhttp/a;->a()Lcom/squareup/okhttp/b;

    move-result-object p3

    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/squareup/okhttp/internal/http/j;->g(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/r;Ljava/net/Proxy;)Lcom/squareup/okhttp/p;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected response code for CONNECT: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/squareup/okhttp/r;->n()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->j()J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-gtz p3, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private h(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;
    .locals 3

    new-instance v0, Lcom/squareup/okhttp/l$b;

    invoke-direct {v0}, Lcom/squareup/okhttp/l$b;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/l$b;->s(Ljava/lang/String;)Lcom/squareup/okhttp/l$b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/l$b;->h(Ljava/lang/String;)Lcom/squareup/okhttp/l$b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/l$b;->o(I)Lcom/squareup/okhttp/l$b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/l$b;->a()Lcom/squareup/okhttp/l;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/p$b;

    invoke-direct {v1}, Lcom/squareup/okhttp/p$b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/p$b;->k(Lcom/squareup/okhttp/l;)Lcom/squareup/okhttp/p$b;

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->g(Lcom/squareup/okhttp/l;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Host"

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    const-string v0, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v1, v0, v2}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, v2}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_0
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/squareup/okhttp/p$b;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;

    :cond_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/p$b;->g()Lcom/squareup/okhttp/p;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/f;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method c(IIILcom/squareup/okhttp/p;Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/squareup/okhttp/p;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;Z)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p5

    iget-boolean v1, v7, Lcom/squareup/okhttp/f;->d:Z

    if-nez v1, :cond_7

    new-instance v8, Lcom/squareup/okhttp/u/a;

    invoke-direct {v8, v0}, Lcom/squareup/okhttp/u/a;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->b()Ljava/net/Proxy;

    move-result-object v9

    iget-object v1, v7, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->a()Lcom/squareup/okhttp/a;

    move-result-object v10

    iget-object v1, v7, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object v1, v1, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v1}, Lcom/squareup/okhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/okhttp/h;->h:Lcom/squareup/okhttp/h;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    :goto_1
    iget-boolean v0, v7, Lcom/squareup/okhttp/f;->d:Z

    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v9}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v10}, Lcom/squareup/okhttp/a;->h()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_3
    iput-object v0, v7, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/f;->e(IIILcom/squareup/okhttp/p;Lcom/squareup/okhttp/u/a;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/squareup/okhttp/f;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, v7, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    iput-object v11, v7, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    if-nez v12, :cond_4

    new-instance v12, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v12, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v12, v0}, Lcom/squareup/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_4
    if-eqz p6, :cond_5

    invoke-virtual {v8, v0}, Lcom/squareup/okhttp/u/a;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    throw v12

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method d(Lcom/squareup/okhttp/o;Ljava/lang/Object;Lcom/squareup/okhttp/p;)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/squareup/okhttp/f;->w(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/f;->p()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object p2, p2, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {p2}, Lcom/squareup/okhttp/a;->c()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->r()I

    move-result v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->v()I

    move-result v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->s()Z

    move-result v6

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/squareup/okhttp/f;->c(IIILcom/squareup/okhttp/p;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/f;->q()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->h()Lcom/squareup/okhttp/g;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/squareup/okhttp/g;->g(Lcom/squareup/okhttp/f;)V

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->z()Lcom/squareup/okhttp/u/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/u/h;->a(Lcom/squareup/okhttp/t;)V

    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->r()I

    move-result p2

    invoke-virtual {p1}, Lcom/squareup/okhttp/o;->v()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/squareup/okhttp/f;->y(II)V

    return-void
.end method

.method public i()Lcom/squareup/okhttp/j;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->i:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method j()J
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/f;->h:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/c;->k0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public k()Lcom/squareup/okhttp/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public l()Lcom/squareup/okhttp/t;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method public m()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    return-object v0
.end method

.method n()V
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/f;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/f;->j:I

    return-void
.end method

.method o()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/f;->d:Z

    return v0
.end method

.method q()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method r()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/c;->n0()Z

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

.method s()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->e:Lcom/squareup/okhttp/internal/http/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method t(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/c;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/c;-><init>(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/internal/framed/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/i;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->e:Lcom/squareup/okhttp/internal/http/e;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/internal/http/e;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object v1, v1, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    iget-object v1, v1, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object v1, v1, Lcom/squareup/okhttp/t;->a:Lcom/squareup/okhttp/a;

    iget v1, v1, Lcom/squareup/okhttp/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object v1, v1, Lcom/squareup/okhttp/t;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/t;

    iget-object v1, v1, Lcom/squareup/okhttp/t;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->i:Lcom/squareup/okhttp/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/j;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/f;->j:I

    return v0
.end method

.method v()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/f;->f:Lcom/squareup/okhttp/internal/framed/c;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/f;->h:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "framedConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method w(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/f;->a:Lcom/squareup/okhttp/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/squareup/okhttp/f;->k:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Connection already has an owner!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method x(Lcom/squareup/okhttp/Protocol;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/f;->g:Lcom/squareup/okhttp/Protocol;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocol == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method y(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/f;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/f;->e:Lcom/squareup/okhttp/internal/http/e;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/squareup/okhttp/f;->e:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/e;->y(II)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {p2, p1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setTimeouts - not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

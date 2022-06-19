.class public Lk7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/a;
.implements Lk7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/c$g;
    }
.end annotation


# static fields
.field public static t:Ljavax/net/ssl/SSLContext;


# instance fields
.field public a:Lk7/j;

.field public b:Lk7/k;

.field public c:Z

.field public d:Ljavax/net/ssl/SSLEngine;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljavax/net/ssl/HostnameVerifier;

.field public i:Lk7/c$g;

.field public j:[Ljava/security/cert/X509Certificate;

.field public k:Ll7/f;

.field public l:Ll7/c;

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/Exception;

.field public final p:Lk7/l;

.field public final q:Ll7/c;

.field public r:Lk7/l;

.field public s:Ll7/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Default"

    .line 1
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    sput-object v4, Lk7/c;->t:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2
    :try_start_1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    sput-object v5, Lk7/c;->t:Ljavax/net/ssl/SSLContext;

    new-array v6, v2, [Ljavax/net/ssl/TrustManager;

    .line 3
    new-instance v7, Lk7/c$a;

    invoke-direct {v7}, Lk7/c$a;-><init>()V

    aput-object v7, v6, v1

    .line 4
    invoke-virtual {v5, v3, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    .line 5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 8
    new-instance v4, Lk7/c$b;

    invoke-direct {v4}, Lk7/c$b;-><init>()V

    aput-object v4, v2, v1

    .line 9
    invoke-virtual {v0, v3, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lk7/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lk7/l;

    invoke-direct {p3}, Lk7/l;-><init>()V

    iput-object p3, p0, Lk7/c;->p:Lk7/l;

    .line 3
    new-instance p3, Lk7/c$e;

    invoke-direct {p3, p0}, Lk7/c$e;-><init>(Lk7/c;)V

    iput-object p3, p0, Lk7/c;->q:Ll7/c;

    .line 4
    new-instance p5, Lk7/l;

    invoke-direct {p5}, Lk7/l;-><init>()V

    iput-object p5, p0, Lk7/c;->r:Lk7/l;

    .line 5
    iput-object p1, p0, Lk7/c;->a:Lk7/j;

    .line 6
    iput-object p6, p0, Lk7/c;->h:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    iput-boolean p7, p0, Lk7/c;->m:Z

    .line 8
    iput-object p4, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    .line 9
    iput-object p2, p0, Lk7/c;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 11
    new-instance p2, Lk7/k;

    invoke-direct {p2, p1}, Lk7/k;-><init>(Lk7/o;)V

    iput-object p2, p0, Lk7/c;->b:Lk7/k;

    .line 12
    new-instance p1, Lk7/c$c;

    invoke-direct {p1, p0}, Lk7/c$c;-><init>(Lk7/c;)V

    .line 13
    iput-object p1, p2, Lk7/k;->d:Ll7/f;

    .line 14
    iget-object p1, p0, Lk7/c;->a:Lk7/j;

    new-instance p2, Lk7/c$d;

    invoke-direct {p2, p0}, Lk7/c$d;-><init>(Lk7/c;)V

    invoke-interface {p1, p2}, Lk7/m;->h(Ll7/a;)V

    .line 15
    iget-object p1, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {p1, p3}, Lk7/m;->b(Ll7/c;)V

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0}, Lk7/j;->a()Lk7/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Ll7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/c;->l:Ll7/c;

    return-void
.end method

.method public final c(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 6

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lk7/c;->r:Lk7/l;

    invoke-virtual {p0, v0}, Lk7/c;->k(Lk7/l;)V

    .line 6
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lk7/c;->q:Ll7/c;

    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    invoke-interface {p1, p0, v0}, Ll7/c;->c(Lk7/m;Lk7/l;)V

    .line 8
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lk7/c;->e:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_9

    .line 9
    :cond_3
    iget-boolean p1, p0, Lk7/c;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 10
    :try_start_1
    iget-object v2, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lk7/c;->j:[Ljava/security/cert/X509Certificate;

    .line 11
    iget-object v2, p0, Lk7/c;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 12
    iget-object v3, p0, Lk7/c;->h:Ljavax/net/ssl/HostnameVerifier;

    if-nez v3, :cond_4

    .line 13
    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 14
    iget-object v3, p0, Lk7/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lk7/c;->j:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lk7/c;->j:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, p1

    invoke-static {v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v4, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lk7/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> has been denied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_0
    move-object v2, v1

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 17
    :goto_1
    :try_start_2
    iput-boolean v0, p0, Lk7/c;->e:Z

    if-eqz p1, :cond_7

    goto :goto_2

    .line 18
    :cond_7
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {p1, v2}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p0, p1}, Lk7/c;->o(Ljava/lang/Exception;)V

    .line 20
    throw p1

    .line 21
    :cond_8
    iput-boolean v0, p0, Lk7/c;->e:Z

    .line 22
    :goto_2
    iget-object p1, p0, Lk7/c;->i:Lk7/c$g;

    check-cast p1, Ln7/m;

    invoke-virtual {p1, v1, p0}, Ln7/m;->a(Ljava/lang/Exception;Lk7/b;)V

    .line 23
    iput-object v1, p0, Lk7/c;->i:Lk7/c$g;

    .line 24
    iget-object p1, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {p1, v1}, Lk7/o;->g(Ll7/a;)V

    .line 25
    invoke-virtual {p0}, Lk7/c;->a()Lk7/h;

    move-result-object p1

    new-instance v0, Lk7/c$f;

    invoke-direct {v0, p0}, Lk7/c$f;-><init>(Lk7/c;)V

    invoke-virtual {p1, v0}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    .line 26
    invoke-virtual {p0}, Lk7/c;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p0, p1}, Lk7/c;->o(Ljava/lang/Exception;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0}, Lk7/m;->close()V

    return-void
.end method

.method public d()Lk7/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0}, Lk7/m;->e()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ll7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0, p1}, Lk7/o;->g(Ll7/a;)V

    return-void
.end method

.method public h(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/c;->s:Ll7/a;

    return-void
.end method

.method public i()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->l:Ll7/c;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0}, Lk7/o;->isOpen()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v0}, Lk7/o;->j()V

    return-void
.end method

.method public k(Lk7/l;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lk7/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lk7/c;->b:Lk7/k;

    .line 3
    iget-object v0, v0, Lk7/k;->c:Lk7/l;

    .line 4
    iget v0, v0, Lk7/l;->c:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lk7/c;->g:Z

    .line 6
    iget v0, p1, Lk7/l;->c:I

    mul-int/lit8 v0, v0, 0x3

    .line 7
    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2000

    if-nez v0, :cond_2

    const/16 v0, 0x2000

    .line 8
    :cond_2
    invoke-static {v0}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 9
    :cond_3
    iget-boolean v4, p0, Lk7/c;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 10
    iget v4, p1, Lk7/l;->c:I

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 11
    :cond_4
    iget v4, p1, Lk7/l;->c:I

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lk7/l;->f()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 13
    iget-object v7, p0, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7, v6, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 14
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 15
    invoke-virtual {p1, v9}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget-object v6, p0, Lk7/c;->r:Lk7/l;

    invoke-virtual {v6, v0}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 18
    iget-object v6, p0, Lk7/c;->r:Lk7/l;

    .line 19
    iget v7, v6, Lk7/l;->c:I

    if-lez v7, :cond_6

    .line 20
    iget-object v7, p0, Lk7/c;->b:Lk7/k;

    invoke-virtual {v7, v6}, Lk7/k;->k(Lk7/l;)V

    .line 21
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_7

    mul-int/lit8 v0, v0, 0x2

    .line 23
    invoke-static {v0}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v4, -0x1

    goto :goto_2

    .line 24
    :cond_7
    iget v0, p1, Lk7/l;->c:I

    mul-int/lit8 v0, v0, 0x3

    .line 25
    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/16 v0, 0x2000

    .line 26
    :cond_8
    invoke-static {v0}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :try_start_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {p0, v6}, Lk7/c;->c(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v10, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v10

    .line 28
    :goto_1
    invoke-virtual {p0, v0}, Lk7/c;->o(Ljava/lang/Exception;)V

    move-object v0, v3

    move-object v3, v6

    .line 29
    :goto_2
    iget v6, p1, Lk7/l;->c:I

    if-ne v4, v6, :cond_9

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v6, :cond_a

    :cond_9
    iget-object v4, p0, Lk7/c;->b:Lk7/k;

    .line 31
    iget-object v4, v4, Lk7/k;->c:Lk7/l;

    .line 32
    iget v4, v4, Lk7/l;->c:I

    if-eqz v4, :cond_3

    .line 33
    :cond_a
    :goto_3
    iput-boolean v5, p0, Lk7/c;->g:Z

    .line 34
    invoke-static {v0}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public m(Ll7/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/c;->k:Ll7/f;

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/c;->p:Lk7/l;

    invoke-static {p0, v0}, Li4/d;->p(Lk7/m;Lk7/l;)V

    .line 2
    iget-boolean v0, p0, Lk7/c;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk7/c;->p:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk7/c;->s:Ll7/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lk7/c;->o:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk7/c;->i:Lk7/c$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lk7/c;->i:Lk7/c$g;

    .line 3
    iget-object v2, p0, Lk7/c;->a:Lk7/j;

    new-instance v3, Ll7/c$a;

    invoke-direct {v3}, Ll7/c$a;-><init>()V

    invoke-interface {v2, v3}, Lk7/m;->b(Ll7/c;)V

    .line 4
    iget-object v2, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v2}, Lk7/o;->j()V

    .line 5
    iget-object v2, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v2, v1}, Lk7/o;->g(Ll7/a;)V

    .line 6
    iget-object v2, p0, Lk7/c;->a:Lk7/j;

    invoke-interface {v2}, Lk7/m;->close()V

    .line 7
    check-cast v0, Ln7/m;

    invoke-virtual {v0, p1, v1}, Ln7/m;->a(Ljava/lang/Exception;Lk7/b;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lk7/c;->s:Ll7/a;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

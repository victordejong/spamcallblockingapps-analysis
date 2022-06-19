.class public Lokhttp3/internal/e/b;
.super Lokhttp3/internal/e/f;
.source "ConscryptPlatform.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lokhttp3/internal/e/f;-><init>()V

    .line 37
    return-void
.end method

.method public static b()Lokhttp3/internal/e/f;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 100
    :try_start_0
    const-string/jumbo v1, "org.conscrypt.ConscryptEngineSocket"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/conscrypt/Conscrypt;->setUseEngineSocketByDefault(Z)V

    .line 107
    new-instance v1, Lokhttp3/internal/e/b;

    invoke-direct {v1}, Lokhttp3/internal/e/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public K_()Ljavax/net/ssl/SSLContext;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-direct {p0}, Lokhttp3/internal/e/b;->e()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lokhttp3/internal/e/f;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p2, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 70
    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-static {p3}, Lokhttp3/internal/e/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/e/f;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

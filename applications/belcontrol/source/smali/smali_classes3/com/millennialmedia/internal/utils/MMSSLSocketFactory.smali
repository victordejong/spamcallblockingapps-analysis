.class public Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;,
        Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$MMSSLContextFactory;
    }
.end annotation


# static fields
.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

.field private static final SUPPORTED_PROTOCOLS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

.field private static sslContextFactoryClass:Ljava/lang/String;


# instance fields
.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-class v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    const-string v0, "TLSv1.1"

    const-string v1, "TLSv1.2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v4, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v6, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v7, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v11, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v12, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v13, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v14, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v15, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->sslContextFactoryClass:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;-><init>()V

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->init()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->instance:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method private static getEnabledEntries([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->instance:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    return-object v0
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4

    sget-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->sslContextFactoryClass:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$MMSSLContextFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate custom MMSSLContextFactory using class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->sslContextFactoryClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;-><init>(Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$1;)V

    :cond_1
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$MMSSLContextFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private init()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    const-string v1, "Initializing MMSSLSocketFactory"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->getEnabledEntries([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->getEnabledEntries([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocols enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher suites enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0

    :cond_2
    sget-object v1, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to instantiate a valid SSLContext."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    const-string v3, "Failed to initialize MMSSLSocketFactory"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private secureSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 4

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    const-string v1, "Setting enabled protocols and cipher suites on secure socket"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set secure socket properties - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static setSSLContextFactoryClass(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->sslContextFactoryClass:Ljava/lang/String;

    sget-object p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->instance:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->init()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->secureSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->secureSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->secureSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->secureSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->secureSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;,
        Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static volatile h:Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;


# instance fields
.field private e:Ljavax/net/ssl/SSLSocketFactory;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 47
    const-class v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "TLSv1.1"

    const-string v1, "TLSv1.2"

    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->b:[Ljava/lang/String;

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

    .line 49
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->d:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    invoke-direct {v0}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;-><init>()V

    invoke-direct {v0}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a()Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->h:Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->g:[Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;
    .locals 5

    const/4 v0, 0x3

    .line 104
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Initializing SSLSocketFactory"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 117
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->b:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->g:[Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->c:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    .line 120
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 122
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Protocols enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->g:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cipher suites enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_1
    return-object p0

    .line 127
    :cond_2
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Failed to instantiate a valid SSLContext."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 132
    sget-object v2, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Failed to initialize SSLSocketFactory"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 4

    .line 227
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 228
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Setting enabled protocols and cipher suites on secure socket"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 236
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 237
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    sget-object v1, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set secure socket properties - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 251
    new-instance p0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 256
    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private b()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not instantiate custom SSLContextFactory using class = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;-><init>(Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$1;)V

    :cond_1
    const-string v1, "TLS"

    .line 160
    invoke-interface {v0, v1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;
    .locals 1

    .line 166
    sget-object v0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->h:Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 221
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->f:[Ljava/lang/String;

    return-object v0
.end method

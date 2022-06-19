.class public Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSSocketFactory.java"


# static fields
.field private static final DEFAULT_TRUST_MANAGERS:Ljavax/net/ssl/X509TrustManager;

.field private static final PROTOCOL_ARRAY:[Ljava/lang/String;


# instance fields
.field private delegate:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "TLSv1.2"

    const-string v2, "TLSv1.1"

    const-string v3, "TLSv1"

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 2
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->PROTOCOL_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    const-string v5, "SSLv3"

    if-lt v0, v4, :cond_1

    .line 3
    filled-new-array {v5, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->PROTOCOL_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->PROTOCOL_ARRAY:[Ljava/lang/String;

    .line 5
    :goto_0
    new-instance v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory$1;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->DEFAULT_TRUST_MANAGERS:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    :try_start_0
    const-string v0, "TLS"

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    .line 3
    sget-object v4, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->DEFAULT_TRUST_MANAGERS:Ljavax/net/ssl/X509TrustManager;

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    sget-object v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->PROTOCOL_ARRAY:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->setSupportProtocolAndCipherSuites(Ljava/net/Socket;)V

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

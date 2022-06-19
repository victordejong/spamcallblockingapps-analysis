.class public Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CS_CERTIFICATE_REQUEST_RECEIVED:S = 0x5s

.field private static final CS_CERTIFICATE_VERIFY_SEND:S = 0x8s

.field private static final CS_CLIENT_CHANGE_CIPHER_SPEC_SEND:S = 0x9s

.field private static final CS_CLIENT_FINISHED_SEND:S = 0xas

.field private static final CS_CLIENT_HELLO_SEND:S = 0x1s

.field private static final CS_CLIENT_KEY_EXCHANGE_SEND:S = 0x7s

.field private static final CS_DONE:S = 0xcs

.field private static final CS_SERVER_CERTIFICATE_RECEIVED:S = 0x3s

.field private static final CS_SERVER_CHANGE_CIPHER_SPEC_RECEIVED:S = 0xbs

.field private static final CS_SERVER_HELLO_DONE_RECEIVED:S = 0x6s

.field private static final CS_SERVER_HELLO_RECEIVED:S = 0x2s

.field private static final CS_SERVER_KEY_EXCHANGE_RECEIVED:S = 0x4s

.field private static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"

.field private static final emptybuf:[B


# instance fields
.field private alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field private certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field private changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private clientExtensions:Ljava/util/Hashtable;

.field private closed:Z

.field private connection_state:S

.field private failedWithError:Z

.field private handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field private offeredCipherSuites:[I

.field private offeredCompressionMethods:[S

.field private random:Ljava/security/SecureRandom;

.field private rs:Lorg/bouncycastle/crypto/tls/RecordStream;

.field private securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field private tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

.field private tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

.field private tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const v1, 0xff01

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private static arrayContains([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static arrayContains([SS)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-short v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static createRenegotiationInfo([B)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    return-object v1
.end method

.method private failWithError(SS)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    const-string v1, "Internal TLS error, this could be an attack"

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processAlert()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-array v0, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v2, v0, v3

    int-to-short v2, v2

    const/4 v4, 0x1

    aget-byte v0, v0, v4

    int-to-short v0, v0

    if-eq v2, v1, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v1, v1, v3

    const/4 v2, 0x2

    const/16 v3, 0xa

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v0, v3, :cond_1

    const/16 v0, 0x28

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->serverClientSpecReceived()V

    const/16 v0, 0xb

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 8

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    new-array v0, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v0, v2, v1, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x4

    if-lt v5, v6, :cond_2

    new-array v5, v3, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v7, v5, v2, v3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    if-eqz v4, :cond_1

    const/16 v6, 0x14

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processHandshakeMessage(S[B)V

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    return-void
.end method

.method private processHandshakeMessage(S[B)V
    .locals 11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p2, 0xc

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    const/16 v2, 0x28

    const/16 v3, 0xa

    const/4 v4, 0x2

    if-eq p1, v4, :cond_10

    const/16 v5, 0x14

    if-eq p1, v5, :cond_d

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_9

    :pswitch_0
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq p1, v9, :cond_0

    if-eq p1, v8, :cond_1

    if-eq p1, v7, :cond_1

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_9

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x6

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v6

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    if-nez v6, :cond_3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    goto :goto_1

    :cond_3
    invoke-interface {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {v6}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange()V

    const/4 p1, 0x7

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eqz v6, :cond_4

    instance-of p1, v6, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_4

    check-cast v6, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendCertificateVerify([B)V

    const/16 p1, 0x8

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    :cond_4
    new-array p1, v1, [B

    aput-byte v1, p1, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v5, p1, v10, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    const/16 p1, 0x9

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    const/16 v2, 0x30

    const-string v4, "master secret"

    invoke-static {p1, v4, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-static {p1, v10}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->clientCipherSpecDecided(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object v0

    const-string v1, "client finished"

    invoke-static {p1, v1, v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v5, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v0, 0x16

    array-length v1, p1

    invoke-virtual {p2, v0, p1, v10, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_9

    :pswitch_1
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq p1, v9, :cond_5

    if-eq p1, v8, :cond_6

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-nez p1, :cond_7

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_7
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result p1

    new-array p2, p1, [S

    :goto_3
    if-ge v10, p1, :cond_8

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    aput-short v1, p2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_9

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    :goto_5
    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_9

    :pswitch_2
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq p1, v4, :cond_a

    if-eq p1, v9, :cond_b

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCertificate()V

    iput-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :cond_b
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    :goto_6
    iput-short v8, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_9

    :pswitch_3
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq p1, v4, :cond_c

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_7

    :cond_c
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_7
    iput-short v9, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_9

    :cond_d
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v5, 0xb

    if-eq p1, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    new-array p1, p2, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash()[B

    move-result-object v3

    const-string v5, "server finished"

    invoke-static {v0, v5, v3, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_f
    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    goto/16 :goto_9

    :cond_10
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq p1, v1, :cond_11

    goto/16 :goto_0

    :cond_11
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 p2, 0x20

    new-array v1, p2, [B

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v1, p1

    const/16 v3, 0x2f

    if-le v1, p2, :cond_12

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_12
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    invoke-static {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->arrayContains([II)Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p2, 0xff

    if-ne p1, p2, :cond_14

    :cond_13
    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_14
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    invoke-static {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->arrayContains([SS)Z

    move-result p2

    if-nez p2, :cond_15

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_15
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p2

    if-lez p2, :cond_18

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p2

    if-lez p2, :cond_18

    new-instance p2, Ljava/lang/Integer;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v5

    invoke-direct {p2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {p2, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v6, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_16

    const/16 v6, 0x6e

    invoke-direct {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_16
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_17
    invoke-virtual {p1, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_18
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    sget-object p2, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_19
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_1a
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_9

    :cond_1b
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-ne p1, p2, :cond_1c

    const/16 p1, 0x64

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    :cond_1c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private safeReadData()V
    .locals 4

    const/16 v0, 0x50

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    throw v2

    :catch_1
    move-exception v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    throw v2

    :catch_2
    move-exception v0

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    throw v0
.end method

.method private safeWriteMessage(S[BII)V
    .locals 3

    const/16 v0, 0x50

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    throw p1

    :catch_1
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    throw p1

    :catch_2
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    throw p1
.end method

.method private sendAlert(SS)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v1, p2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private sendCertificateVerify([B)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v1, p1

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private sendClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v1, p1

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private sendClientKeyExchange()V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    array-length v2, v0

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private static writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {p2, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/LegacyTlsClient;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/LegacyTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V

    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .locals 6

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeGMTUnixTime([BI)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    array-length v3, v3

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    if-eqz v0, :cond_3

    const/16 v0, 0xff

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/16 v0, 0x16

    array-length v3, p1

    invoke-direct {p0, v0, p1, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    :goto_3
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v0, 0xc

    if-eq p1, v0, :cond_6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsInputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method public processData(S[BII)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readApplicationData([BII)I
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    return p3
.end method

.method public writeData([BII)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    :cond_2
    const/16 v0, 0x4000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_2

    return-void
.end method

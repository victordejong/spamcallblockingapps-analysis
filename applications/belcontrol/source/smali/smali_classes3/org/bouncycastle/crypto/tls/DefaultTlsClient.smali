.class public abstract Lorg/bouncycastle/crypto/tls/DefaultTlsClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClient;


# instance fields
.field public cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public selectedCipherSuite:I

.field public selectedCompressionMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method public createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method public createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method public createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method public createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    return-object v0
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    const/16 v1, 0xa

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x9

    :goto_0
    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v3, 0x7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc003
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc008
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc00d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc012
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x39
        0x38
        0x33
        0x32
        0x16
        0x13
        0x35
        0x2f
        0xa
    .end array-data
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCompressionMethod:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getCompressionMethods()[S
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_0
    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_1
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_2
    :pswitch_6
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_3
    :pswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_4
    :pswitch_8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc003
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc008
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc00d
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc012
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 0

    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCompressionMethod:I

    return-void
.end method

.method public notifySessionID([B)V
    .locals 0

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 0

    return-void
.end method

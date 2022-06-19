.class public Lorg/bouncycastle/crypto/tls/TlsECDSASigner;
.super Lorg/bouncycastle/crypto/tls/TlsDSASigner;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method public createDSAImpl()Lorg/bouncycastle/crypto/DSA;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    return-object v0
.end method

.method public isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 0

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return p1
.end method

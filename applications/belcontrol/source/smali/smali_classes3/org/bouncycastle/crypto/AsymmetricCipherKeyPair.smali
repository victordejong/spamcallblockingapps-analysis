.class public Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private privateParam:Lorg/bouncycastle/crypto/CipherParameters;

.field private publicParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getPrivate()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

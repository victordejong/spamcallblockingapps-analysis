.class public Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;
.super Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# static fields
.field private static params:Ljava/util/Hashtable;


# instance fields
.field public certainty:I

.field public engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field public initialised:Z

.field public param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field public random:Ljava/security/SecureRandom;

.field public strength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DH"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    iget v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a DHParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

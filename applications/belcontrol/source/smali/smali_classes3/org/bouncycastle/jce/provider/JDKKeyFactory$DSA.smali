.class public Lorg/bouncycastle/jce/provider/JDKKeyFactory$DSA;
.super Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1

    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1

    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.class public Lorg/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->macSize:I

    iput-object p4, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    return-object v0
.end method

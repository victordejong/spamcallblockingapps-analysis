.class public Lorg/bouncycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public clientRandom:[B

.field public masterSecret:[B

.field public serverRandom:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-void
.end method


# virtual methods
.method public getClientRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

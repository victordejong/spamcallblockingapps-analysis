.class public Lorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHC;
.super Lorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    const-string v1, "ECDHC"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method

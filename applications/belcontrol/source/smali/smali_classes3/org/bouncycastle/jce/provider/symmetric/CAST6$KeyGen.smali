.class public Lorg/bouncycastle/jce/provider/symmetric/CAST6$KeyGen;
.super Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/symmetric/CAST6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const-string v1, "CAST6"

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/al;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/AN;->A03(Lcom/facebook/ads/redexgen/X/7s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/AN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/al;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/al;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AN;I)V
    .locals 0

    .line 68691
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/al;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/al;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/al;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/al;->A03:[Ljava/lang/String;

    const-string v1, "O62aedMh2uH8SX7kKpV0hPKbmKu3dRtH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/al;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0xat
        -0x19t
        -0x19t
        -0x1at
        -0xdt
        -0x16t
        -0x11t
        -0x18t
        -0x5ft
        -0x16t
        -0x11t
        -0x1bt
        -0x1at
        -0x19t
        -0x16t
        -0x11t
        -0x16t
        -0xbt
        -0x1at
        -0x13t
        -0x6t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YT1PK3WBVS3kniXpybROmIhjWhGVClPh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "onQoUfiZJSuD3rguNgGkdAHpHQ2hvx1c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dO9MTkytiNOu4TIl66WPEIPq7WYt5YTT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LwW2ju5RHwfXyh7prhFW5VX2Thqdh31m"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wb6oMsMYcKN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2GYadBc1t2oUSCNIAMCw1GAaJcdxmHnE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MoTE5VLcrtX4ZcmexG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/al;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 68692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68693
    return-void

    .line 68694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/QB;->A02:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/al;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/al;->A03:[Ljava/lang/String;

    const-string v1, "Lqx2qyHvy7GSucr2a"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68695
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:I

    if-ne v1, v0, :cond_1

    .line 68696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(Lcom/facebook/ads/redexgen/X/ah;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A01:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/al;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0d(Lcom/facebook/ads/redexgen/X/ah;Ljava/lang/String;)V

    .line 68698
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

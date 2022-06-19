.class public final Lcom/facebook/ads/redexgen/X/XF;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XF;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 64978
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 64979
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A00:Landroid/telephony/TelephonyManager;

    .line 64980
    return-void
.end method

.method public static A01(Landroid/telephony/CellInfo;)I
    .locals 2

    .line 64981
    if-eqz p0, :cond_5

    .line 64982
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    .line 64983
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_0

    .line 64984
    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    return v0

    .line 64985
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_1

    .line 64986
    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    return v0

    .line 64987
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    .line 64988
    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    return v0

    .line 64989
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_3

    .line 64990
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    return v0

    .line 64991
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64992
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 64993
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Landroid/telephony/CellInfo;)I
    .locals 0

    .line 64994
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XF;->A01(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 64995
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XF;->A00:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XF;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XF;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6bt
        0x73t
        0x74t
        0x75t
        0x7et
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 64996
    new-instance v0, Lcom/facebook/ads/redexgen/X/XP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XP;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 64997
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 64998
    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XO;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 64999
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65000
    new-instance v0, Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XK;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65001
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65002
    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65003
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65004
    new-instance v0, Lcom/facebook/ads/redexgen/X/XL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65005
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65006
    new-instance v0, Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XM;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65007
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65008
    new-instance v0, Lcom/facebook/ads/redexgen/X/XG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XG;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65009
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65010
    new-instance v0, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XS;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65011
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65012
    new-instance v0, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XI;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65013
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65014
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XH;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65015
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65016
    new-instance v0, Lcom/facebook/ads/redexgen/X/XR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XR;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65017
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65018
    new-instance v0, Lcom/facebook/ads/redexgen/X/XQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XQ;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65019
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 65020
    new-instance v0, Lcom/facebook/ads/redexgen/X/XN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XN;-><init>(Lcom/facebook/ads/redexgen/X/XF;)V

    .line 65021
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

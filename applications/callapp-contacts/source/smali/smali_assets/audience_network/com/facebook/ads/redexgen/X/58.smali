.class public final Lcom/facebook/ads/redexgen/X/58;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InterstitialAdApi;
.implements Lcom/facebook/ads/internal/api/Repairable;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/InterstitialAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/1v;

.field public final A02:Lcom/facebook/ads/redexgen/X/F1;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/58;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/58;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V
    .locals 2

    .line 12899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12900
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    .line 12901
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12903
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 12904
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2j(Ljava/lang/String;Ljava/lang/String;)V

    .line 12905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1v;

    invoke-direct {v0, v1, p3, p2}, Lcom/facebook/ads/redexgen/X/1v;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 12906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 12907
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F1;-><init>(Lcom/facebook/ads/redexgen/X/1v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    .line 12908
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/58;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/58;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/58;->A05:[Ljava/lang/String;

    const-string v1, "dLq0XFJawohP2A9uDPm8W8ZKhW9iXRhW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/58;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        0x13t
        -0x21t
        0x14t
        -0x1bt
        0x13t
        0x11t
        0x12t
        -0x45t
        -0x49t
        -0x19t
        -0x45t
        -0x17t
        -0x42t
        -0x16t
        -0x44t
        0x26t
        0x24t
        0x52t
        0x24t
        0x53t
        0x54t
        0x51t
        0x21t
        -0x31t
        -0xct
        -0x6t
        -0x15t
        -0x8t
        -0xct
        -0x19t
        -0xet
        -0x5at
        -0x15t
        -0x8t
        -0x8t
        -0xbt
        -0x8t
        -0x4ct
        -0x70t
        -0x1dt
        0x8t
        0xet
        -0x1t
        0xct
        0xdt
        0xet
        0x3t
        0xet
        0x3t
        -0x5t
        0x6t
        -0x46t
        -0x5t
        -0x2t
        -0x46t
        -0x2t
        -0x1t
        0xdt
        0xet
        0xct
        0x9t
        0x13t
        -0x1t
        -0x2t
        -0x38t
        -0x13t
        -0xdt
        -0x1ct
        -0xft
        -0xet
        -0xdt
        -0x18t
        -0xdt
        -0x18t
        -0x20t
        -0x15t
        -0x61t
        -0x20t
        -0x1dt
        -0x61t
        -0x15t
        -0x12t
        -0x20t
        -0x1dt
        -0x61t
        -0xft
        -0x1ct
        -0x10t
        -0xct
        -0x1ct
        -0xet
        -0xdt
        -0x1ct
        -0x1dt
        -0x12t
        0x13t
        0x19t
        0xat
        0x17t
        0x18t
        0x19t
        0xet
        0x19t
        0xet
        0x6t
        0x11t
        -0x3bt
        0x6t
        0x9t
        -0x3bt
        0x18t
        0xdt
        0x14t
        0x1ct
        -0x3bt
        0x8t
        0x6t
        0x11t
        0x11t
        0xat
        0x9t
        -0xat
        -0x9t
        0x5t
        0x6t
        0x4t
        0x1t
        0xbt
        -0x1ct
        -0x11t
        -0x34t
        -0x11t
        -0x1ft
        -0x1ct
        -0x3ft
        -0x1ct
        0x31t
        0x26t
        0x2dt
        0x35t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "S822El9zG6GuADGrtluuLX363osWhxiG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZFI3hp6NIHNPBZ8p7tKJKM6DxTur89gU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rKe2xKovfMLHVnc2kJBHIfRtW7KI2joW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CTsEdbmp9bu3ZhSS7yZH02ALmjP1FNtP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mPYAOoIIU9PuPwOlU3lFT13mhy9mIxzC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HqZNdyzgU2LJRhG9zHJvoyCPzWSUAGCn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/58;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 3

    .line 12909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c(Z)V

    .line 12910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0D(Lcom/facebook/ads/InterstitialAdListener;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/58;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12911
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12912
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/58;->A05:[Ljava/lang/String;

    const-string v1, "rYQ6gTbtajntBm3fXVm84HcfyQ9ACN8J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 12913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0E(Lcom/facebook/ads/RewardData;)V

    .line 12914
    return-void
.end method

.method public final A05(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 1

    .line 12915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0F(Lcom/facebook/ads/RewardedAdListener;)V

    .line 12916
    return-void
.end method

.method public final A06(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local v1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    const/16 v2, 0x81

    const/16 v1, 0x8

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x41

    const/16 v1, 0x1e

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12917
    if-nez p2, :cond_0

    .line 12918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2g()V

    .line 12919
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F1;->A08(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 12920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 12921
    return-void

    .line 12922
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2f()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 12923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/58;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 12924
    new-instance v0, Lcom/facebook/ads/redexgen/X/59;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/59;-><init>(Lcom/facebook/ads/redexgen/X/58;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 12925
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/58;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;
    .locals 1

    .line 12926
    new-instance v0, Lcom/facebook/ads/redexgen/X/5A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5A;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x7a

    const/4 v1, 0x7

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x28

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12928
    return-void

    .line 12929
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F1;->A05()V

    .line 12930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2k()V

    .line 12931
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 12932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SV;->A04()V

    .line 12933
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 12934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A09()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 12935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F1;->A09()Z

    move-result v1

    .line 12936
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4Y(Z)V

    .line 12937
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 12938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F1;->A0A()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 2

    .line 12939
    sget-object v1, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A06(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 12940
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    .locals 0

    .line 12941
    check-cast p1, Lcom/facebook/ads/redexgen/X/59;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/59;->A00()V

    .line 12942
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 12943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 12945
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v6

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12946
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 12947
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 12948
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12949
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1v;->A0H(Ljava/lang/String;)V

    .line 12950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1v;->A0I(Ljava/lang/String;)V

    .line 12951
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x89

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x5f

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 12953
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5A;-><init>()V

    .line 12954
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F1;->A0B(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 12955
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2o(Z)V

    .line 12956
    return v1
.end method

.method public final show(Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 2

    .line 12957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 12958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/F1;->A0B(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 12959
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2o(Z)V

    .line 12960
    return v1
.end method

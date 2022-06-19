.class public final Lcom/facebook/ads/redexgen/X/58;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InterstitialAdApi;
.implements Lcom/facebook/ads/internal/api/Repairable;


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Lcom/facebook/ads/InterstitialAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/1v;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ew;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/58;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V
    .locals 2

    .line 12991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12992
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    .line 12993
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12995
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 12996
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1v;

    invoke-direct {v0, v1, p3, p2}, Lcom/facebook/ads/redexgen/X/1v;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 12998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 12999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ew;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ew;-><init>(Lcom/facebook/ads/redexgen/X/1v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    .line 13000
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/58;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/58;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        -0x40t
        -0x3bt
        -0x3ft
        -0x3ft
        -0xct
        -0x40t
        -0x1ct
        0x14t
        0x14t
        -0x1at
        -0x16t
        -0x1et
        0x16t
        -0x1et
        -0x13t
        0x12t
        0x18t
        0x9t
        0x16t
        0x12t
        0x5t
        0x10t
        -0x3ct
        0x9t
        0x16t
        0x16t
        0x13t
        0x16t
        -0x2et
        -0x52t
        0x2t
        0x27t
        0x2dt
        0x1et
        0x2bt
        0x2ct
        0x2dt
        0x22t
        0x2dt
        0x22t
        0x1at
        0x25t
        -0x27t
        0x1at
        0x1dt
        -0x27t
        0x1dt
        0x1et
        0x2ct
        0x2dt
        0x2bt
        0x28t
        0x32t
        0x1et
        0x1dt
        0x2ct
        0x51t
        0x57t
        0x48t
        0x55t
        0x56t
        0x57t
        0x4ct
        0x57t
        0x4ct
        0x44t
        0x4ft
        0x3t
        0x44t
        0x47t
        0x3t
        0x4ft
        0x52t
        0x44t
        0x47t
        0x3t
        0x55t
        0x48t
        0x54t
        0x58t
        0x48t
        0x56t
        0x57t
        0x48t
        0x47t
        0x32t
        0x57t
        0x5dt
        0x4et
        0x5bt
        0x5ct
        0x5dt
        0x52t
        0x5dt
        0x52t
        0x4at
        0x55t
        0x9t
        0x4at
        0x4dt
        0x9t
        0x5ct
        0x51t
        0x58t
        0x60t
        0x9t
        0x4ct
        0x4at
        0x55t
        0x55t
        0x4et
        0x4dt
        0x3ft
        0x43t
        0xft
        0xft
        0x13t
        0xft
        0x10t
        -0xdt
        -0xct
        0x2t
        0x3t
        0x1t
        -0x2t
        0x8t
        0x58t
        0x63t
        0x40t
        0x63t
        0x55t
        0x58t
        0x35t
        0x58t
        -0x8t
        -0x13t
        -0xct
        -0x4t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 2

    .line 13001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(Z)V

    .line 13002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0D(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 13003
    return-void

    .line 13004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 13005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0E(Lcom/facebook/ads/RewardData;)V

    .line 13006
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 1

    .line 13007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0F(Lcom/facebook/ads/RewardedAdListener;)V

    .line 13008
    return-void
.end method

.method public final A05(Ljava/util/EnumSet;Ljava/lang/String;)V
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
    const/16 v2, 0x7f

    const/16 v1, 0x8

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x38

    const/16 v1, 0x1e

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13009
    if-nez p2, :cond_0

    .line 13010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 13011
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ew;->A09(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 13012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    .line 13013
    return-void

    .line 13014
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13015
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/58;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 13016
    new-instance v0, Lcom/facebook/ads/redexgen/X/59;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/59;-><init>(Lcom/facebook/ads/redexgen/X/58;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 13017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/58;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;
    .locals 1

    .line 13018
    new-instance v0, Lcom/facebook/ads/redexgen/X/5A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5A;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x78

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f

    const/16 v1, 0x19

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13020
    return-void

    .line 13021
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ew;->A06()V

    .line 13022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2i()V

    .line 13023
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 13024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bV;->A05()V

    .line 13025
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A09()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ew;->A0A()Z

    move-result v1

    .line 13028
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4V(Z)V

    .line 13029
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 13030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ew;->A0B()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 2

    .line 13031
    sget-object v1, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A05(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 13032
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    .locals 0

    .line 13033
    check-cast p1, Lcom/facebook/ads/redexgen/X/59;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/59;->A00()V

    .line 13034
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 13035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 13037
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v6

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v1, 0x10

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13038
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/LS;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 13039
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 13040
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13041
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1v;->A0H(Ljava/lang/String;)V

    .line 13042
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1v;->A0I(Ljava/lang/String;)V

    .line 13043
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x56

    const/16 v1, 0x1b

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/58;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 13045
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5A;-><init>()V

    .line 13046
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ew;->A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 13047
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2m(Z)V

    .line 13048
    return v1
.end method

.method public final show(Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 2

    .line 13049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 13050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A02:Lcom/facebook/ads/redexgen/X/Ew;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ew;->A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 13051
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2m(Z)V

    .line 13052
    return v1
.end method

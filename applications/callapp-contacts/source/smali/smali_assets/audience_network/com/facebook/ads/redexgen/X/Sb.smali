.class public final Lcom/facebook/ads/redexgen/X/Sb;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sd;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sd;)V
    .locals 0

    .line 52784
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 1

    .line 52785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 52786
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 52787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 52788
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 52789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 52790
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 52791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 52792
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 52793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 52794
    return-void
.end method

.method public final A0B()V
    .locals 2

    .line 52795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 52796
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 52797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 52798
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 52799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sd;->A02(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/F2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A05(Lcom/facebook/ads/redexgen/X/Sd;Ljava/lang/String;)Ljava/lang/String;

    .line 52800
    check-cast p1, Lcom/facebook/ads/redexgen/X/Rw;

    .line 52801
    .local p0, "rvAdapter":Lcom/facebook/ads/redexgen/X/Rw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_0

    .line 52802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Rw;->A01(Lcom/facebook/ads/RewardData;)V

    .line 52803
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rw;->A0D()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    .line 52804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0B(Lcom/facebook/ads/redexgen/X/Sd;Z)Z

    .line 52805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 52806
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 5

    .line 52807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A08(Lcom/facebook/ads/redexgen/X/Sd;Z)V

    .line 52808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52809
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    .line 52810
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A00(Lcom/facebook/ads/redexgen/X/Sd;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 52811
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 52812
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    .line 52813
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    .line 52815
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/redexgen/X/Jl;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 52816
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52817
    return-void
.end method

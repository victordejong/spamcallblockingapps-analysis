.class public final Lcom/facebook/ads/redexgen/X/SY;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sa;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sa;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sa;)V
    .locals 0

    .line 52657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 52658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Sa;Z)Z

    .line 52659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    .line 52660
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 52661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Sa;Z)Z

    .line 52662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A02(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/F5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A02(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/F5;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/redexgen/X/SY;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A02(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/F5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0L()V

    .line 52665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A03(Lcom/facebook/ads/redexgen/X/Sa;Lcom/facebook/ads/redexgen/X/F5;)Lcom/facebook/ads/redexgen/X/F5;

    .line 52666
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 52667
    return-void
.end method

.method public final A04()V
    .locals 2

    .line 52668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 52669
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 52670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerFailed()V

    .line 52671
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 52672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerSucceeded()V

    .line 52673
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 52674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdCompleted()V

    .line 52675
    return-void
.end method

.method public final A0B()V
    .locals 2

    .line 52676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 52677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 52678
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 52679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 52680
    return-void
.end method

.method public final A0D(Landroid/view/View;)V
    .locals 0

    .line 52681
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 52682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A07(Lcom/facebook/ads/redexgen/X/Sa;Z)Z

    .line 52683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 52684
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 5

    .line 52685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52686
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 52687
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A00(Lcom/facebook/ads/redexgen/X/Sa;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 52688
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 52689
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    .line 52690
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 52692
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/redexgen/X/Jl;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 52693
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52694
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/bS;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bQ;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bQ;)V
    .locals 0

    .line 69637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 69638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A08(Lcom/facebook/ads/redexgen/X/bQ;Z)Z

    .line 69639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    .line 69640
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 69641
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A08(Lcom/facebook/ads/redexgen/X/bQ;Z)Z

    .line 69642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A02(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/F0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A02(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/F0;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bT;-><init>(Lcom/facebook/ads/redexgen/X/bS;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A02(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0J()V

    .line 69645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A03(Lcom/facebook/ads/redexgen/X/bQ;Lcom/facebook/ads/redexgen/X/F0;)Lcom/facebook/ads/redexgen/X/F0;

    .line 69646
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 69647
    return-void
.end method

.method public final A05()V
    .locals 2

    .line 69648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 69649
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 69650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerFailed()V

    .line 69651
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 69652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerSucceeded()V

    .line 69653
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 69654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdCompleted()V

    .line 69655
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 69656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 69657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 69658
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 69659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 69660
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 0

    .line 69661
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 69662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A07(Lcom/facebook/ads/redexgen/X/bQ;Z)Z

    .line 69663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 69664
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 5

    .line 69665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69666
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 69667
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A00(Lcom/facebook/ads/redexgen/X/bQ;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 69668
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 69669
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    .line 69670
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 69672
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A00(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 69673
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69674
    return-void
.end method

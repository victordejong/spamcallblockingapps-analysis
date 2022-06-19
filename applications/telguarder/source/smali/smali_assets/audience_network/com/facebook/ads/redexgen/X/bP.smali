.class public final Lcom/facebook/ads/redexgen/X/bP;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bN;->A08(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bN;)V
    .locals 0

    .line 69514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 69515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 69516
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 69517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 69518
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 69519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 69520
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 69521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 69522
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 69523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 69524
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 69525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 69526
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 69527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 69528
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 69529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bN;->A02(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/Ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A05(Lcom/facebook/ads/redexgen/X/bN;Ljava/lang/String;)Ljava/lang/String;

    .line 69530
    check-cast p1, Lcom/facebook/ads/redexgen/X/c2;

    .line 69531
    .local p0, "rvAdapter":Lcom/facebook/ads/redexgen/X/c2;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_0

    .line 69532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A01(Lcom/facebook/ads/RewardData;)V

    .line 69533
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c2;->A0D()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    .line 69534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A0A(Lcom/facebook/ads/redexgen/X/bN;Z)Z

    .line 69535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 69536
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 5

    .line 69537
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A07(Lcom/facebook/ads/redexgen/X/bN;Z)V

    .line 69538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69539
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 69540
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A00(Lcom/facebook/ads/redexgen/X/bN;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 69541
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 69542
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    .line 69543
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 69545
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bN;->A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A00(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 69546
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69547
    return-void
.end method

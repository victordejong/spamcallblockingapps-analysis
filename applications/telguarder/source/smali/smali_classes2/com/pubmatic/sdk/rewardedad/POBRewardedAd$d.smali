.class Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->l(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    :cond_0
    return-void
.end method

.method public onAdEventOccurred(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    move-result-object v0

    const-string v1, "POBRewardedAd"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getFirstReward()Lcom/pubmatic/sdk/openwrap/core/POBReward;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No Rewards Received. Hence,creating new Reward object with default values."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/pubmatic/sdk/openwrap/core/POBReward;

    const-string v0, ""

    invoke-direct {p1, v0, v2}, Lcom/pubmatic/sdk/openwrap/core/POBReward;-><init>(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-virtual {v0, v1, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onReceiveReward(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBReward;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Received video event (%s) but RewardedAdListener is not set."

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdInteractionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackImpression()V

    :cond_0
    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdRender(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : ******** onAdRender() ********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBRewardedAd"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackImpression()V

    :cond_0
    return-void
.end method

.method public onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    :cond_0
    return-void
.end method

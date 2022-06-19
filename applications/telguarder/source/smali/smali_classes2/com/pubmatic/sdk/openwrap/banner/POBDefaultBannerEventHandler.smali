.class public Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;


# instance fields
.field private a:[Lcom/pubmatic/sdk/common/POBAdSize;

.field private b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;


# direct methods
.method public varargs constructor <init>([Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->a:[Lcom/pubmatic/sdk/common/POBAdSize;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    return-void
.end method

.method public getAdSize()Lcom/pubmatic/sdk/common/POBAdSize;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onOpenWrapPartnerWin(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getSummary()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenWrap error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "No Ads available for this request"

    :cond_2
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestedAdSizes()[Lcom/pubmatic/sdk/common/POBAdSize;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->a:[Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/POBAdSize;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    return-void
.end method

.method public trackClick()V
    .locals 0

    return-void
.end method

.method public trackImpression()V
    .locals 0

    return-void
.end method

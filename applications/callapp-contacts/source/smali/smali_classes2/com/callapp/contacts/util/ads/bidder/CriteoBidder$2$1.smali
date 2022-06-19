.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

.field final synthetic val$criteoAdRenderer:Lcom/mopub/nativeads/CriteoAdRenderer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;Lcom/mopub/nativeads/CriteoAdRenderer;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->val$criteoAdRenderer:Lcom/mopub/nativeads/CriteoAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    const-string v2, "criteo"

    invoke-static {v2, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    return-void
.end method

.method public synthetic onAdClosed()V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener$-CC;->$default$onAdClosed(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v3

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "criteo"

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAdLeftApplication()V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener$-CC;->$default$onAdLeftApplication(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->val$criteoAdRenderer:Lcom/mopub/nativeads/CriteoAdRenderer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/CriteoAdRenderer;->setCriteoNativeAd(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    .line 191
    new-instance v6, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;

    invoke-direct {v6, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    .line 192
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    new-instance v0, Lcom/mopub/nativeads/NativeAd;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->val$criteoAdRenderer:Lcom/mopub/nativeads/CriteoAdRenderer;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 193
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    :cond_0
    return-void
.end method

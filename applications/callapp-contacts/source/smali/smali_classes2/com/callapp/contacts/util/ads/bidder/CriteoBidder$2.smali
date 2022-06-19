.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/mopub/nativeads/CriteoAdRenderer;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mopub/nativeads/CriteoAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    new-instance v2, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/model/AdUnit;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/model/NativeAdUnit;

    new-instance v4, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;

    invoke-direct {v4, p0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;Lcom/mopub/nativeads/CriteoAdRenderer;)V

    invoke-direct {v2, v3, v4, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;-><init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->loadAd(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

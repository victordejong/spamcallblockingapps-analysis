.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadBannerAdFromKeywordsMoPub(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic val$adUnitForHTMLAd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adUnitForHTMLAd:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object v2

    .line 1046
    iget v2, v2, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 184
    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getMoPubAdSize(I)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adUnitForHTMLAd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdResponse;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method

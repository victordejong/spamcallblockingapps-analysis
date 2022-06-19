.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadBannerAdFromKeywordsDFP(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic val$adUnitForHTMLAd:Ljava/lang/String;

.field final synthetic val$dfpAdSize:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adUnitForHTMLAd:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$dfpAdSize:Lcom/google/android/gms/ads/AdSize;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$802(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adUnitForHTMLAd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$dfpAdSize:Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 234
    sget-object v0, Lcom/amazon/device/ads/DTBAdUtil;->b:Lcom/amazon/device/ads/DTBAdUtil;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Lcom/amazon/device/ads/DTBAdResponse;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 303
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    return-void
.end method

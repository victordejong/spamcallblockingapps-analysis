.class Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->processAdValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->val$zoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheError(Ljava/lang/Throwable;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$000(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onCacheSuccess(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$000(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    invoke-direct {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;-><init>(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$200(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/AdCache;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->val$zoneId:Ljava/lang/String;

    iget-object p3, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p3}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$100(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lnet/pubnative/lite/sdk/AdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/Ad;)V

    .line 204
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$300(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->val$zoneId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    .line 205
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    new-instance p2, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$500(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->val$zoneId:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p3, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p3}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$100(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-virtual {p2, p3, v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$402(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    .line 206
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$400(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->access$400(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 209
    :cond_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;->this$0:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "The server has returned an unsupported ad asset"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

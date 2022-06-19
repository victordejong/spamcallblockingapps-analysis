.class public Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;
.super Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;
.implements Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;
.implements Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;


# instance fields
.field private mSkipOffset:I

.field private mSupportedNativeFeatures:[Ljava/lang/String;

.field private mView:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 15
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;-><init>()V

    const-string v0, "calendar"

    const-string v1, "inlineVideo"

    const-string v2, "sms"

    const-string v3, "storePicture"

    const-string v4, "tel"

    .line 16
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mSupportedNativeFeatures:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 11

    .line 37
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "extra_pn_skip_offset"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mSkipOffset:I

    .line 40
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    const-string v2, "htmlbanner"

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mSupportedNativeFeatures:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const-string v6, ""

    move-object v3, v1

    move-object v4, p0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v3 .. v10}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mSupportedNativeFeatures:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const-string v5, ""

    move-object v3, v1

    move-object v4, p0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v3 .. v10}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->setCloseLayoutListener(Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;)V

    .line 52
    :cond_2
    iget v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mSkipOffset:I

    if-lez v0, :cond_3

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->setSkipOffset(Ljava/lang/Integer;)V

    .line 56
    :cond_3
    iput-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mView:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    return-object v1
.end method

.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->CLICK:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    .line 122
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getUrlHandler()Lnet/pubnative/lite/sdk/utils/UrlHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/UrlHandler;->handleUrl(Ljava/lang/String;)V

    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureSendSms(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidShowCloseButton()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->showInterstitialCloseButton()V

    return-void
.end method

.method public mraidViewClose(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    return-void
.end method

.method public mraidViewExpand(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    return-void
.end method

.method public mraidViewLoaded(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->SHOW:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    return-void
.end method

.method public mraidViewResize(Lnet/pubnative/lite/sdk/mraid/MRAIDView;IIII)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onClose()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->hideInterstitialCloseButton()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mView:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->stopAdSession()V

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->mView:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->destroy()V

    .line 72
    :cond_0
    invoke-super {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onDestroy()V

    return-void
.end method

.method public onRemoveCloseLayout()V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->hideInterstitialCloseButton()V

    return-void
.end method

.method public onShowCloseLayout()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity;->showInterstitialCloseButton()V

    return-void
.end method

.method protected shouldShowContentInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

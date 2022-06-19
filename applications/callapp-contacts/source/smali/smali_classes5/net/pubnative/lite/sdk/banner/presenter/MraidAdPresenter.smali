.class public Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;
.implements Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter;


# instance fields
.field private final mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mContext:Landroid/content/Context;

.field private mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

.field private mIsDestroyed:Z

.field private mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

.field private mMRAIDBanner:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

.field private final mSupportedNativeFeatures:[Ljava/lang/String;

.field private final mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 56
    new-instance p2, Lnet/pubnative/lite/sdk/utils/UrlHandler;

    invoke-direct {p2, p1}, Lnet/pubnative/lite/sdk/utils/UrlHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    const-string p1, "calendar"

    const-string p2, "inlineVideo"

    const-string v0, "sms"

    const-string v1, "storePicture"

    const-string v2, "tel"

    .line 57
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mSupportedNativeFeatures:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 98
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mMRAIDBanner:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mIsDestroyed:Z

    return-void
.end method

.method public getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public load()V
    .locals 10

    .line 83
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "MraidAdPresenter is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    const-string v1, "htmlbanner"

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mSupportedNativeFeatures:[Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v1, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const-string v5, ""

    move-object v2, v0

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mMRAIDBanner:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/models/Ad;->getAssetHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mSupportedNativeFeatures:[Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v1, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const-string v4, ""

    move-object v2, v0

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mMRAIDBanner:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    :cond_2
    return-void
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
    .locals 1

    .line 171
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/UrlHandler;->handleUrl(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    if-eqz p1, :cond_1

    .line 177
    invoke-interface {p1, p0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V

    :cond_1
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

    return-void
.end method

.method public mraidViewClose(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    return-void
.end method

.method public mraidViewExpand(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 131
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mIsDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    if-eqz p1, :cond_1

    .line 136
    invoke-interface {p1, p0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V

    :cond_1
    return-void
.end method

.method public mraidViewLoaded(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0, p0, p1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V

    .line 125
    iget-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;->onImpression()V

    :cond_1
    return-void
.end method

.method public mraidViewResize(Lnet/pubnative/lite/sdk/mraid/MRAIDView;IIII)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setImpressionListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    return-void
.end method

.method public startTracking()V
    .locals 0

    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;->mMRAIDBanner:Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->stopAdSession()V

    :cond_0
    return-void
.end method

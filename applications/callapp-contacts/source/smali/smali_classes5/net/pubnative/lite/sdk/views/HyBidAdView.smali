.class public Lnet/pubnative/lite/sdk/views/HyBidAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;
.implements Lnet/pubnative/lite/sdk/auction/Auction$Listener;
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;,
        Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidAdView"

.field private static mAdFormat:Ljava/lang/String; = "banner"

.field private static mScreenIabCategory:Ljava/lang/String;

.field private static mScreenKeywords:Ljava/lang/String;

.field private static mUserIntent:Ljava/lang/String;


# instance fields
.field private autoShowOnLoad:Z

.field protected mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private mAuction:Lnet/pubnative/lite/sdk/auction/Auction;

.field protected mAuctionResponses:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/FrameLayout;

.field protected mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

.field private mPosition:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

.field private mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

.field private mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    .line 99
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getRequestManager()Lnet/pubnative/lite/sdk/api/RequestManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->init(Lnet/pubnative/lite/sdk/api/RequestManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    .line 104
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getRequestManager()Lnet/pubnative/lite/sdk/api/RequestManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->init(Lnet/pubnative/lite/sdk/api/RequestManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    .line 109
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getRequestManager()Lnet/pubnative/lite/sdk/api/RequestManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->init(Lnet/pubnative/lite/sdk/api/RequestManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    .line 115
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getRequestManager()Lnet/pubnative/lite/sdk/api/RequestManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->init(Lnet/pubnative/lite/sdk/api/RequestManager;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init(Lnet/pubnative/lite/sdk/api/RequestManager;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 120
    sget-object v0, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    .line 121
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    return-void
.end method

.method private processAdValue(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 391
    :try_start_0
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdResponse;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/models/AdResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Response cannot be parsed"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 400
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "PNApiClient - Parse error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 401
    :cond_1
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 403
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 404
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 405
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderFromCustomAd()V

    return-void

    .line 407
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "HyBid - No fill"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 410
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HyBid - Server error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->stopTracking()V

    .line 242
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->removeAllViews()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 246
    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->destroy()V

    .line 248
    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    .line 251
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 253
    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    .line 254
    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    :cond_1
    return-void
.end method

.method protected createPresenter()Lnet/pubnative/lite/sdk/presenter/AdPresenter;
    .locals 2

    .line 287
    new-instance v0, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 288
    invoke-virtual {v0, v1, p0}, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;->createPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 232
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->destroy()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    :cond_0
    return-void
.end method

.method public getBidPoints()Ljava/lang/Integer;
    .locals 1

    .line 267
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 279
    const-class v0, Lnet/pubnative/lite/sdk/views/HyBidAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestManager()Lnet/pubnative/lite/sdk/api/RequestManager;
    .locals 1

    .line 283
    new-instance v0, Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;-><init>()V

    return-object v0
.end method

.method protected invokeOnClick()V
    .locals 1

    .line 440
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;->onAdClick()V

    :cond_0
    return-void
.end method

.method protected invokeOnImpression()V
    .locals 1

    .line 446
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;->onAdImpression()V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;->onAdLoadFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFinished()V
    .locals 1

    .line 427
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public isAutoShowOnLoad()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    return v0
.end method

.method public load(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 10

    .line 136
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 137
    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Invalid zone id provided"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 141
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getConfigManager()Lnet/pubnative/lite/sdk/config/ConfigManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 145
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 146
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->type:Ljava/lang/String;

    const-string v1, "auction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->ad_sources:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/config/ConfigManager;->getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    move-result-object p2

    iget-object p2, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->placement_info:Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;

    iget-object p2, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacementInfo;->placements:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;

    .line 152
    iget-object v0, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->timeout:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->timeout:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1388

    :goto_0
    move-wide v5, v0

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->setZoneId(Ljava/lang/String;)V

    .line 157
    new-instance p1, Lnet/pubnative/lite/sdk/auction/HyBidAdSource;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v2

    invoke-direct {p1, v1, v0, v2}, Lnet/pubnative/lite/sdk/auction/HyBidAdSource;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/auction/AdSourceConfig;Lnet/pubnative/lite/sdk/models/AdSize;)V

    .line 158
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigPlacement;->ad_sources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;

    .line 161
    iget-object v0, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->type:Ljava/lang/String;

    const-string/jumbo v1, "vast_tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    new-instance v0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;-><init>()V

    .line 163
    iget-object v1, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->setName(Ljava/lang/String;)V

    .line 164
    iget-object v1, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->eCPM:Ljava/lang/Double;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->eCPM:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->setECPM(D)V

    .line 165
    iget-object p2, p2, Lnet/pubnative/lite/sdk/models/RemoteConfigAdSource;->vastTagUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->setVastTagUrl(Ljava/lang/String;)V

    .line 167
    new-instance p2, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v2

    invoke-direct {p2, v1, v0, v2}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/auction/AdSourceConfig;Lnet/pubnative/lite/sdk/models/AdSize;)V

    .line 168
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_4
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    .line 173
    new-instance p1, Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v7

    sget-object v9, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAdFormat:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lnet/pubnative/lite/sdk/auction/Auction;-><init>(Landroid/content/Context;Ljava/util/List;JLnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/auction/Auction$Listener;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuction:Lnet/pubnative/lite/sdk/auction/Auction;

    .line 174
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->runAuction()V

    return-void

    .line 176
    :cond_5
    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setZoneId(Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {p1, p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    .line 178
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V

    return-void
.end method

.method public load(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 130
    iput-object p3, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    .line 131
    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPosition:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    .line 132
    invoke-virtual {p0, p1, p3}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->load(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V

    return-void
.end method

.method public onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 0

    .line 532
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnClick()V

    return-void
.end method

.method public onAdError(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderAd()V

    .line 522
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuction:Lnet/pubnative/lite/sdk/auction/Auction;

    if-eqz p1, :cond_1

    .line 523
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/auction/Auction;->reportAuctionNextItem(Lnet/pubnative/lite/sdk/models/Ad;)V

    return-void

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "An error has occurred while rendering the ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    .line 511
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "An error has occurred while rendering the ad"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, p2}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->setupAdView(Landroid/view/View;)V

    return-void
.end method

.method public onAuctionFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 564
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAuctionSuccess(Ljava/util/PriorityQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 549
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 553
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAuctionResponses:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 554
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    if-eqz p1, :cond_1

    .line 555
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderAd()V

    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFinished()V

    return-void

    .line 550
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The auction returned no ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 504
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 1

    if-nez p1, :cond_0

    .line 491
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Server returned null ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 493
    :cond_0
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 494
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderAd()V

    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFinished()V

    return-void
.end method

.method public renderAd()V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->createPresenter()Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->load()V

    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server has returned an unsupported ad asset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public renderAd(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 0

    .line 313
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 314
    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->processAdValue(Ljava/lang/String;)V

    return-void

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The server has returned an invalid ad asset"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public renderAd(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 304
    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    .line 305
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 306
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderAd()V

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The provided ad is invalid."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public renderCustomMarkup(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->cleanup()V

    .line 345
    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mListener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 350
    sget-object p2, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$models$AdSize:[I

    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdSize;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/16 p2, 0xa

    .line 368
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    goto :goto_0

    :cond_0
    const/16 p2, 0x18

    .line 363
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    goto :goto_0

    .line 352
    :cond_1
    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/MarkupUtils;->isVastXml(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 354
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 357
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    .line 371
    :goto_0
    new-instance v1, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {v1, p2, p1, v0}, Lnet/pubnative/lite/sdk/models/Ad;-><init>(ILjava/lang/String;Lnet/pubnative/lite/sdk/models/Ad$AdType;)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 372
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderFromCustomAd()V

    return-void

    .line 374
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The server has returned an invalid ad asset"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method protected renderFromCustomAd()V
    .locals 2

    .line 379
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->createPresenter()Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz v0, :cond_0

    .line 381
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->load()V

    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server has returned an unsupported ad asset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public renderVideoTag(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 2

    .line 324
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/vast/VastUrlUtils;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;

    invoke-direct {v1, p0, p2}, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;-><init>(Lnet/pubnative/lite/sdk/views/HyBidAdView;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, p2, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void
.end method

.method public setAdSize(Lnet/pubnative/lite/sdk/models/AdSize;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setAdSize(Lnet/pubnative/lite/sdk/models/AdSize;)V

    return-void
.end method

.method public setAutoShowOnLoad(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    return-void
.end method

.method public setMediation(Z)V
    .locals 1

    .line 470
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 471
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    :goto_0
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    :cond_1
    return-void
.end method

.method public setPosition(Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPosition:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    return-void
.end method

.method public setScreenIabCategory(Ljava/lang/String;)V
    .locals 0

    .line 476
    sput-object p1, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mScreenIabCategory:Ljava/lang/String;

    return-void
.end method

.method public setScreenKeywords(Ljava/lang/String;)V
    .locals 0

    .line 480
    sput-object p1, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mScreenKeywords:Ljava/lang/String;

    return-void
.end method

.method public setUserIntent(Ljava/lang/String;)V
    .locals 0

    .line 484
    sput-object p1, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mUserIntent:Ljava/lang/String;

    return-void
.end method

.method protected setupAdView(Landroid/view/View;)V
    .locals 3

    .line 452
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPosition:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    if-nez v0, :cond_1

    .line 453
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 456
    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFinished()V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->startTracking()V

    .line 463
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnImpression()V

    return-void

    .line 465
    :cond_1
    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->show(Landroid/view/View;Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderAd()V

    return-void
.end method

.method public show(Landroid/view/View;Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    .line 191
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 193
    sget-object v1, Lnet/pubnative/lite/sdk/views/HyBidAdView$2;->$SwitchMap$net$pubnative$lite$sdk$views$HyBidAdView$Position:[I

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x51

    .line 200
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/16 p2, 0x31

    .line 195
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    const p2, 0x40008

    .line 205
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 206
    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 207
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 208
    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 209
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p2, -0x2

    .line 210
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 211
    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    if-nez p2, :cond_2

    .line 212
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    .line 215
    :cond_2
    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :cond_3
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->autoShowOnLoad:Z

    if-eqz p1, :cond_4

    .line 222
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFinished()V

    .line 225
    :cond_4
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->startTracking()V

    .line 227
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnImpression()V

    return-void
.end method

.method protected startTracking()V
    .locals 1

    .line 415
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->startTracking()V

    :cond_0
    return-void
.end method

.method protected stopTracking()V
    .locals 1

    .line 421
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView;->mPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->stopTracking()V

    :cond_0
    return-void
.end method

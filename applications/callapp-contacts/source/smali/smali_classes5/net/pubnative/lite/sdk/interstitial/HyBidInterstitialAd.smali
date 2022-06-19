.class public Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;
.implements Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidInterstitialAd"

.field private static mScreenIabCategory:Ljava/lang/String;

.field private static mScreenKeywords:Ljava/lang/String;

.field private static mUserIntent:Ljava/lang/String;


# instance fields
.field private mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mAdCache:Lnet/pubnative/lite/sdk/AdCache;

.field private final mContext:Landroid/content/Context;

.field private mIsDestroyed:Z

.field private final mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

.field private mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

.field private mReady:Z

.field private mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

.field private mSkipOffset:I

.field private final mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

.field private final mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;)V
    .locals 1

    const-string v0, ""

    .line 83
    invoke-direct {p0, p1, v0, p2}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mReady:Z

    .line 75
    iput v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mSkipOffset:I

    .line 76
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mIsDestroyed:Z

    .line 91
    new-instance v0, Lnet/pubnative/lite/sdk/api/InterstitialRequestManager;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/api/InterstitialRequestManager;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 92
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mZoneId:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    .line 95
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    .line 96
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    .line 98
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getInterstitialSkipOffset()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mSkipOffset:I

    .line 100
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    sget-object p2, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mIsDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/models/Ad;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;Lnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/models/Ad;
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object p1
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/AdCache;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    return-object p0
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    return-object p0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    return-object p0
.end method

.method static synthetic access$402(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    return-object p1
.end method

.method static synthetic access$500(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mReady:Z

    .line 139
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->destroy()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    :cond_0
    return-void
.end method

.method private processAdValue(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 176
    :try_start_0
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdResponse;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/models/AdResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 180
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Response cannot be parsed"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p1

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "PNApiClient - Parse error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 186
    :cond_1
    iget-object v1, p1, Lnet/pubnative/lite/sdk/models/AdResponse;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    iget-object v1, p1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 189
    iget-object p1, p1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 191
    iget p1, p1, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    const/16 v1, 0xf

    if-eq p1, v1, :cond_3

    const-string p1, "3"

    .line 227
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/lite/sdk/AdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/Ad;)V

    .line 228
    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v0, p1, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz p1, :cond_2

    .line 230
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The server has returned an unsupported ad asset"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 194
    :cond_3
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;-><init>()V

    .line 195
    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/models/Ad;->getVast()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;

    const-string v4, "4"

    invoke-direct {v3, p0, v4}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$1;-><init>(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v0, v3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->process(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V

    return-void

    .line 237
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "HyBid - No fill"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 241
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HyBid - Server error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lnet/pubnative/lite/sdk/models/AdResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method private renderAd()V
    .locals 3

    .line 164
    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mZoneId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    iget v2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mSkipOffset:I

    invoke-virtual {v0, v1, v2, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;ILnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server has returned an unsupported ad asset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->cleanup()V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mIsDestroyed:Z

    .line 131
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->destroy()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    :cond_0
    return-void
.end method

.method public getBidPoints()Ljava/lang/Integer;
    .locals 1

    .line 154
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

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

    .line 150
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

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

    .line 146
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected invokeOnClick()V
    .locals 1

    .line 359
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;->onInterstitialClick()V

    :cond_0
    return-void
.end method

.method protected invokeOnDismissed()V
    .locals 1

    .line 371
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;->onInterstitialDismissed()V

    :cond_0
    return-void
.end method

.method protected invokeOnImpression()V
    .locals 1

    .line 365
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;->onInterstitialImpression()V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 352
    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;->onInterstitialLoadFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFinished()V
    .locals 1

    .line 346
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mListener:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener;->onInterstitialLoaded()V

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mReady:Z

    return v0
.end method

.method public load()V
    .locals 2

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid zone id provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->cleanup()V

    .line 108
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setZoneId(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    .line 110
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V

    return-void
.end method

.method public onInterstitialClicked(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    .line 417
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnClick()V

    return-void
.end method

.method public onInterstitialDismissed(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    .line 422
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnDismissed()V

    return-void
.end method

.method public onInterstitialError(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 1

    .line 407
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "An error has occurred while rendering the interstitial"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onInterstitialLoaded(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    const/4 p1, 0x1

    .line 401
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mReady:Z

    .line 402
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFinished()V

    return-void
.end method

.method public onInterstitialShown(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    .line 412
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnImpression()V

    return-void
.end method

.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 395
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 1

    if-nez p1, :cond_0

    .line 386
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Server returned null ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 388
    :cond_0
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 389
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->renderAd()V

    return-void
.end method

.method public prepareAd(Ljava/lang/String;)V
    .locals 1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->processAdValue(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The server has returned an invalid ad asset"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public prepareAd(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 255
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 256
    new-instance p1, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mZoneId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {p1, v0, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The server has returned an unsupported ad asset"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 263
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The provided ad is invalid."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public prepareCustomMarkup(Ljava/lang/String;)V
    .locals 10

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/MarkupUtils;->isVastXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v5, Lnet/pubnative/lite/sdk/models/Ad$AdType;->VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    .line 276
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;-><init>()V

    .line 277
    iget-object v7, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$2;

    const/16 v3, 0xf

    const-string v6, "4"

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$2;-><init>(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;ILjava/lang/String;Lnet/pubnative/lite/sdk/models/Ad$AdType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, p1, v8, v9}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->process(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V

    return-void

    :cond_0
    const-string v0, "3"

    .line 309
    sget-object v1, Lnet/pubnative/lite/sdk/models/Ad$AdType;->HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    .line 310
    new-instance v2, Lnet/pubnative/lite/sdk/models/Ad;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p1, v1}, Lnet/pubnative/lite/sdk/models/Ad;-><init>(ILjava/lang/String;Lnet/pubnative/lite/sdk/models/Ad$AdType;)V

    iput-object v2, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 311
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    invoke-virtual {p1, v0, v2}, Lnet/pubnative/lite/sdk/AdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/Ad;)V

    .line 312
    new-instance p1, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {p1, v0, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz p1, :cond_1

    .line 314
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 316
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The server has returned an unsupported ad asset"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 320
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The server has returned an invalid ad asset"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public prepareVideoTag(Ljava/lang/String;)V
    .locals 3

    .line 326
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/vast/VastUrlUtils;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mContext:Landroid/content/Context;

    new-instance v1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$3;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$3;-><init>(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v2, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void
.end method

.method public setMediation(Z)V
    .locals 1

    .line 377
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 378
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    :goto_0
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    :cond_1
    return-void
.end method

.method public setSkipOffset(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 159
    iput p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mSkipOffset:I

    :cond_0
    return-void
.end method

.method public show()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mPresenter:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->mReady:Z

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->show()V

    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t display ad. Interstitial not ready."

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

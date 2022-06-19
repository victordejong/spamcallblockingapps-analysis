.class abstract Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseVideoAdInternal"


# instance fields
.field private mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

.field private mAdLoadingStartTime:J

.field private mAdState:I

.field private final mAssetsLoader:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

.field private mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

.field private final mContext:Landroid/content/Context;

.field private mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

.field private mFetcherTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

.field private final mHandler:Landroid/os/Handler;

.field private mIsReady:Z

.field private mIsRewarded:Z

.field private mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

.field private mVastData:Ljava/lang/String;

.field private mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

.field private mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsRewarded:Z

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    .line 48
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    .line 49
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVastData:Ljava/lang/String;

    .line 51
    new-instance p2, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-direct {p2}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAssetsLoader:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    .line 52
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->init(Landroid/content/Context;)V

    .line 54
    new-instance p1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getViewabilityManager()Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;-><init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdExpired()V

    return-void
.end method

.method static synthetic access$1000(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdLoadSuccess()V

    return-void
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;)Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;
    .locals 0

    .line 21
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    return-object p1
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController;
    .locals 0

    .line 21
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    return-object p0
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->prepare(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->prepareAdController(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->startPrepareTimer()V

    return-void
.end method

.method static synthetic access$700(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->createOnPrepareListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->stopPrepareTimer()V

    return-void
.end method

.method private createAssetsLoadListener()Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;
    .locals 1

    .line 250
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    return-object v0
.end method

.method private createOnPrepareListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;
    .locals 1

    .line 282
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$7;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$7;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    return-object v0
.end method

.method private fetchAd()V
    .locals 3

    .line 222
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getAdSpotDimensions()Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V

    .line 223
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVastData:Ljava/lang/String;

    new-instance v2, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$4;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$4;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->parseResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V

    return-void
.end method

.method private onAdExpired()V
    .locals 2

    .line 314
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad content is expired"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsReady:Z

    const/16 v0, 0xc8

    .line 317
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    .line 318
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAssetsLoader:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->breakLoading()V

    .line 319
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdExpired()V

    :cond_0
    return-void
.end method

.method private onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 3

    .line 325
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad fails to load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    .line 326
    iput v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsReady:Z

    .line 328
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->stopFetcherTimer()V

    .line 329
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void

    :cond_0
    const-string p1, "Warning: empty listener"

    .line 332
    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onAdLoadSuccess()V
    .locals 5

    .line 337
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->startExpirationTimer()V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    iget-wide v2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdLoadingStartTime:J

    sub-long/2addr v0, v2

    .line 342
    sget-object v2, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad successfully loaded ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsReady:Z

    const/16 v0, 0xc8

    .line 344
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    .line 345
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->stopFetcherTimer()V

    .line 346
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdLoadSuccess()V

    return-void

    :cond_0
    const-string v0, "Warning: empty listener"

    .line 349
    invoke-static {v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepare(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;)V
    .locals 7

    .line 237
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->isVpaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getAdSpotDimensions()Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    move-result-object v4

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;Ljava/lang/String;Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    goto :goto_0

    .line 240
    :cond_0
    new-instance p2, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    .line 242
    :goto_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    if-eqz p2, :cond_1

    .line 243
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->getVideoFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->getEndCardFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->prepareAdController(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_1
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAssetsLoader:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->createAssetsLoadListener()Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->load(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;)V

    return-void
.end method

.method private prepareAdController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    if-nez v0, :cond_0

    .line 265
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string p2, "Error during video loading"

    invoke-direct {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdLoadFailInternal(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    .line 266
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->UNDEFINED:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V

    .line 267
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string p2, "VideoAdController == null, after onAssetsLoaded success"

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->setVideoFilePath(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    invoke-interface {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->setEndCardFilePath(Ljava/lang/String;)V

    .line 272
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startExpirationTimer()V
    .locals 4

    .line 133
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    const-wide/32 v1, 0x927c0

    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$1;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;-><init>(JLnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    .line 142
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->start()Landroid/os/CountDownTimer;

    .line 143
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start schedule expiration"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPrepareTimer()V
    .locals 4

    .line 155
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    const-wide/16 v1, 0x3a98

    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$2;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;-><init>(JLnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    .line 169
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->start()Landroid/os/CountDownTimer;

    .line 170
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start prepare timer"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopPrepareTimer()V
    .locals 2

    .line 174
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop prepare timer"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->cancel()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mPrepareTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method cancelFetcher()V
    .locals 2

    .line 215
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cancel ad fetcher"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAssetsLoader:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->breakLoading()V

    .line 218
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method abstract dismiss()V
.end method

.method getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    return-object v0
.end method

.method abstract getAdFormat()I
.end method

.method getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;
    .locals 1

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    return-object v0
.end method

.method abstract getAdSpotDimensions()Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;
.end method

.method getAdState()I
    .locals 1

    .line 76
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    return v0
.end method

.method protected getCacheItem()Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    return-object v0
.end method

.method initAdLoadingStartTime()V
    .locals 2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdLoadingStartTime:J

    return-void
.end method

.method isReady()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsReady:Z

    return v0
.end method

.method isRewarded()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsRewarded:Z

    return v0
.end method

.method onAdClicked()V
    .locals 2

    .line 368
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad received click event"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method onAdDidReachEnd()V
    .locals 2

    .line 354
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Video reach end"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdDidReachEnd()V

    :cond_0
    return-void
.end method

.method onAdLeaveApp()V
    .locals 2

    .line 361
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "adLeaveApp"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onLeaveApp()V

    :cond_0
    return-void
.end method

.method onAdLoadFailInternal(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 1

    .line 296
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;

    invoke-direct {v0, p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onAdLoadSuccessInternal()V
    .locals 1

    .line 305
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$9;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$9;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method proceedLoad()V
    .locals 2

    .line 183
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVastData:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->prepare(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->fetchAd()V

    return-void
.end method

.method releaseAdController()V
    .locals 2

    .line 120
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release ViewControllerVast"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->destroy()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    :cond_0
    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    return-void
.end method

.method setAdState(I)V
    .locals 0

    .line 80
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mAdState:I

    return-void
.end method

.method setReady()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsReady:Z

    return-void
.end method

.method setRewarded(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mIsRewarded:Z

    return-void
.end method

.method public setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mCacheItem:Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    return-void
.end method

.method startFetcherTimer()V
    .locals 4

    .line 191
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mFetcherTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    const-wide/32 v1, 0x2bf20

    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$3;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$3;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;-><init>(JLnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mFetcherTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    .line 202
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->start()Landroid/os/CountDownTimer;

    .line 203
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start fetcher timer"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method stopExpirationTimer()V
    .locals 2

    .line 147
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop schedule expiration"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->cancel()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    :cond_0
    return-void
.end method

.method stopFetcherTimer()V
    .locals 2

    .line 207
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop fetcher timer"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mFetcherTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->cancel()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->mFetcherTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    :cond_0
    return-void
.end method

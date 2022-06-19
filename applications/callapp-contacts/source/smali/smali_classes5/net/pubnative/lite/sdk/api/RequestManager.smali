.class public Lnet/pubnative/lite/sdk/api/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestManager"


# instance fields
.field private mAdCache:Lnet/pubnative/lite/sdk/AdCache;

.field private final mAdRequestFactory:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

.field private mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

.field private mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

.field private final mConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager;

.field private final mInitializationHelper:Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;

.field private mIsDestroyed:Z

.field private mIsRewarded:Z

.field private mRequestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

.field private mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

.field private mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 68
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getApiClient()Lnet/pubnative/lite/sdk/api/PNApiClient;

    move-result-object v1

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v2

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object v3

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getConfigManager()Lnet/pubnative/lite/sdk/config/ConfigManager;

    move-result-object v4

    new-instance v5, Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    invoke-direct {v5}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;-><init>()V

    new-instance v6, Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;

    invoke-direct {v6}, Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/pubnative/lite/sdk/api/RequestManager;-><init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Lnet/pubnative/lite/sdk/AdCache;Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/models/AdRequestFactory;Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;)V

    return-void
.end method

.method constructor <init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Lnet/pubnative/lite/sdk/AdCache;Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/models/AdRequestFactory;Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mIsRewarded:Z

    .line 77
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    .line 78
    iput-object p2, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    .line 79
    iput-object p3, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    .line 80
    iput-object p5, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdRequestFactory:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    .line 81
    iput-object p6, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mInitializationHelper:Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;

    .line 82
    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x50:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 83
    iput-object p4, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/api/RequestManager;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mIsDestroyed:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lnet/pubnative/lite/sdk/api/RequestManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager;->processAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V

    return-void
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mRequestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    return-object p0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    return-object p0
.end method

.method private processAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 5

    .line 165
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    .line 168
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    if-nez v0, :cond_1

    .line 169
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    .line 171
    :cond_1
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lnet/pubnative/lite/sdk/models/Ad;->setZoneId(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lnet/pubnative/lite/sdk/AdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/Ad;)V

    .line 174
    iget v0, p2, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    .line 207
    iget-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mRequestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    if-eqz p1, :cond_2

    .line 208
    invoke-interface {p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;->onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V

    :cond_2
    return-void

    .line 177
    :cond_3
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;-><init>()V

    .line 178
    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/api/PNApiClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/Ad;->getVast()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lnet/pubnative/lite/sdk/api/RequestManager$3;

    invoke-direct {v4, p0, p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager$3;-><init>(Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->process(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mRequestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mIsDestroyed:Z

    return-void
.end method

.method public getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;
    .locals 1

    .line 226
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    return-object v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mIsRewarded:Z

    return v0
.end method

.method public requestAd()V
    .locals 5

    .line 99
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mInitializationHelper:Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/PNInitializationHelper;->isInitialized()Z

    move-result v0

    const-string v1, "HyBid SDK has not been initialized. Please call HyBid#initialize in your application\'s onCreate method."

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    const-string v1, "HyBid SDK has not been initialized yet. Please call HyBid#initialize in your application\'s onCreate method."

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mZoneId:Ljava/lang/String;

    const-string v1, "zone id cannot be null"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 118
    :cond_3
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "RequestManager has been destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 122
    :cond_4
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager;

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/config/ConfigManager;->refreshConfig()V

    .line 126
    :cond_5
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdRequestFactory:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mZoneId:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v2

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->isRewarded()Z

    move-result v3

    new-instance v4, Lnet/pubnative/lite/sdk/api/RequestManager$1;

    invoke-direct {v4, p0}, Lnet/pubnative/lite/sdk/api/RequestManager$1;-><init>(Lnet/pubnative/lite/sdk/api/RequestManager;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->createAdRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V

    return-void
.end method

.method requestAdFromApi(Lnet/pubnative/lite/sdk/models/AdRequest;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getApiClient()Lnet/pubnative/lite/sdk/api/PNApiClient;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    .line 138
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/api/RequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting ad for zone id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    new-instance v1, Lnet/pubnative/lite/sdk/api/RequestManager$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager$2;-><init>(Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/models/AdRequest;)V

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/lite/sdk/api/PNApiClient;->getAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V

    return-void
.end method

.method public setAdSize(Lnet/pubnative/lite/sdk/models/AdSize;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    return-void
.end method

.method public setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mAdRequestFactory:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    :cond_0
    return-void
.end method

.method public setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mRequestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager;->mZoneId:Ljava/lang/String;

    return-void
.end method

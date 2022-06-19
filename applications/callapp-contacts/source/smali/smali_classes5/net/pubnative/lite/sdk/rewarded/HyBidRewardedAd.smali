.class public Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;
.implements Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidRewardedAd"


# instance fields
.field private mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mAdCache:Lnet/pubnative/lite/sdk/AdCache;

.field private final mContext:Landroid/content/Context;

.field private mIsDestroyed:Z

.field private final mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

.field private mPresenter:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

.field private mReady:Z

.field private mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

.field private final mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

.field private final mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;)V
    .locals 1

    const-string v0, ""

    .line 69
    invoke-direct {p0, p1, v0, p2}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mReady:Z

    .line 66
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mIsDestroyed:Z

    .line 77
    new-instance v0, Lnet/pubnative/lite/sdk/api/RewardedRequestManager;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/api/RewardedRequestManager;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 78
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mZoneId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    .line 81
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAdCache:Lnet/pubnative/lite/sdk/AdCache;

    .line 82
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mVideoCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    .line 84
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    sget-object p2, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    return-void
.end method

.method private cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mReady:Z

    .line 121
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mPresenter:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;->destroy()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mPresenter:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    :cond_0
    return-void
.end method

.method private renderAd()V
    .locals 3

    .line 140
    new-instance v0, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mZoneId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->createRewardedPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mPresenter:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;->load()V

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server has returned an unsupported ad asset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->cleanup()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mIsDestroyed:Z

    .line 113
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->destroy()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    :cond_0
    return-void
.end method

.method public getBidPoints()Ljava/lang/Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

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

    .line 132
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

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

    .line 128
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

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

    .line 162
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onRewardedClick()V

    :cond_0
    return-void
.end method

.method protected invokeOnClosed()V
    .locals 1

    .line 174
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onRewardedClosed()V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 155
    sget-object v0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onRewardedLoadFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected invokeOnLoadFinished()V
    .locals 1

    .line 149
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onRewardedLoaded()V

    :cond_0
    return-void
.end method

.method protected invokeOnOpened()V
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onRewardedOpened()V

    :cond_0
    return-void
.end method

.method protected invokeOnReward()V
    .locals 1

    .line 180
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mListener:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;->onReward()V

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mReady:Z

    return v0
.end method

.method public load()V
    .locals 2

    .line 88
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid zone id provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->cleanup()V

    .line 92
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setZoneId(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    .line 94
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V

    return-void
.end method

.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 204
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 1

    if-nez p1, :cond_0

    .line 195
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Server returned null ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 197
    :cond_0
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 198
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->renderAd()V

    return-void
.end method

.method public onRewardedClicked(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnClick()V

    return-void
.end method

.method public onRewardedClosed(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnClosed()V

    return-void
.end method

.method public onRewardedError(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 1

    .line 216
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "An error has occurred while rendering the rewarded ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRewardedFinished(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnReward()V

    return-void
.end method

.method public onRewardedLoaded(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 0

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mReady:Z

    .line 211
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnLoadFinished()V

    return-void
.end method

.method public onRewardedOpened(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->invokeOnOpened()V

    return-void
.end method

.method public setMediation(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 187
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    :goto_0
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 99
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mPresenter:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->mReady:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;->show()V

    return-void

    .line 102
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t display ad. Rewarded ad not ready."

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

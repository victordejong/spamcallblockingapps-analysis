.class public Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Listener;
.implements Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;


# instance fields
.field private final mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIsDestroyed:Z

.field private mListener:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;

.field private mReady:Z

.field private final mSkipOffset:I

.field private final mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mReady:Z

    .line 46
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 48
    iput-object p3, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mZoneId:Ljava/lang/String;

    .line 49
    iput p4, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mSkipOffset:I

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 51
    new-instance p2, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    invoke-direct {p2, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    .line 52
    invoke-virtual {p2, p0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;->setListener(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Listener;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mListener:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mIsDestroyed:Z

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mReady:Z

    return-void
.end method

.method public getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 65
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mReady:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mIsDestroyed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "VastInterstitialPresenter is destroyed"

    invoke-static {v0, v2}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mReady:Z

    .line 75
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mListener:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;->onInterstitialLoaded(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V

    :cond_1
    return-void
.end method

.method public onReceivedAction(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mListener:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;

    invoke-virtual {v0, p1, p0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;->handleAction(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)V

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mListener:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 87
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "VastInterstitialPresenter is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;->register()V

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver;->getBroadcastId()J

    move-result-wide v1

    const-string v3, "extra_pn_broadcast_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mZoneId:Ljava/lang/String;

    const-string v2, "extra_pn_zone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mSkipOffset:I

    const-string v2, "extra_pn_skip_offset"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

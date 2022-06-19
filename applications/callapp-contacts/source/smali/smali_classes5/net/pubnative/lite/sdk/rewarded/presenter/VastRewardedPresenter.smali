.class public Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Listener;
.implements Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;


# instance fields
.field private final mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIsDestroyed:Z

.field private mListener:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;

.field private mReady:Z

.field private final mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mReady:Z

    .line 44
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 46
    iput-object p3, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mZoneId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 48
    new-instance p2, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    invoke-direct {p2, p1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    .line 49
    invoke-virtual {p2, p0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;->setListener(Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Listener;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mListener:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mIsDestroyed:Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mReady:Z

    return-void
.end method

.method public getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mReady:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 67
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mIsDestroyed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "VastRewardedPresenter is destroyed"

    invoke-static {v0, v2}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mReady:Z

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mListener:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0, p0}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;->onRewardedLoaded(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;)V

    :cond_1
    return-void
.end method

.method public onReceivedAction(Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mListener:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;

    invoke-virtual {v0, p1, p0, v1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;->handleAction(Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action;Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)V

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mListener:Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "VastRewardedPresenter is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;->register()V

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mBroadcastReceiver:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver;->getBroadcastId()J

    move-result-wide v1

    const-string v3, "extra_pn_broadcast_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mZoneId:Ljava/lang/String;

    const-string v2, "extra_pn_zone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

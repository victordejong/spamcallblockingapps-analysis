.class Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;
.super Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 112
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->CLICK:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    return-void
.end method

.method public onAdDidReachEnd()V
    .locals 2

    .line 117
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->access$102(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;Z)Z

    .line 118
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->showInterstitialCloseButton()V

    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->finish()V

    return-void
.end method

.method public onAdExpired()V
    .locals 0

    return-void
.end method

.method public onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->setProgressBarInvisible()V

    .line 105
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->ERROR:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    .line 106
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->DISMISS:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    .line 107
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->finish()V

    return-void
.end method

.method public onAdLoadSuccess()V
    .locals 2

    .line 93
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->access$100(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->access$102(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;Z)Z

    .line 96
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->setProgressBarInvisible()V

    .line 97
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->access$000(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->show()V

    .line 98
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;->this$0:Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->SHOW:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    :cond_0
    return-void
.end method

.method public onAdStarted()V
    .locals 0

    return-void
.end method

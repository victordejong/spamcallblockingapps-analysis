.class public Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBroadcastId:J

.field private final mLocalBroadcastManager:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;


# direct methods
.method constructor <init>(JLnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->mBroadcastId:J

    .line 18
    iput-object p3, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->mLocalBroadcastManager:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 13
    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->getInstance(Landroid/content/Context;)Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;-><init>(JLnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;)V

    return-void
.end method


# virtual methods
.method public getBroadcastId()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->mBroadcastId:J

    return-wide v0
.end method

.method public sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V
    .locals 3

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    iget-wide v1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->mBroadcastId:J

    const-string p1, "pn_broadcastId"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->mLocalBroadcastManager:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

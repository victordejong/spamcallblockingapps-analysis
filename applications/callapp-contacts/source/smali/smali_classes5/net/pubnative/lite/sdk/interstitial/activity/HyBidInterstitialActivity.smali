.class public abstract Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_BROADCAST_ID:Ljava/lang/String; = "extra_pn_broadcast_id"

.field public static final EXTRA_SKIP_OFFSET:Ljava/lang/String; = "extra_pn_skip_offset"

.field public static final EXTRA_ZONE_ID:Ljava/lang/String; = "extra_pn_zone_id"


# instance fields
.field private mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private mBroadcastSender:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

.field private final mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

.field private mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

.field private mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

.field private mZoneId:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity$1;-><init>(Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;->DISMISS:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action;)V

    .line 100
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->finish()V

    return-void
.end method

.method protected getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 2

    .line 147
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-nez v0, :cond_1

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/AdCache;->remove(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 152
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected getBroadcastSender()Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;
    .locals 1

    .line 158
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mBroadcastSender:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    return-object v0
.end method

.method protected getCloseableContainer()Lnet/pubnative/lite/sdk/views/CloseableContainer;
    .locals 1

    .line 121
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    return-object v0
.end method

.method protected getUrlHandler()Lnet/pubnative/lite/sdk/utils/UrlHandler;
    .locals 1

    .line 143
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    return-object v0
.end method

.method protected getZoneId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method protected hideInterstitialCloseButton()V
    .locals 2

    .line 132
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setCloseVisible(Z)V

    .line 134
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setOnCloseListener(Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    new-instance v0, Lnet/pubnative/lite/sdk/utils/UrlHandler;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/utils/UrlHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    const-string v0, "extra_pn_zone_id"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mZoneId:Ljava/lang/String;

    const-string v0, "extra_pn_broadcast_id"

    const-wide/16 v1, -0x1

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 52
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mZoneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    .line 53
    new-instance p1, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    invoke-direct {p1, p0, v3, v4}, Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;-><init>(Landroid/content/Context;J)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mBroadcastSender:Lnet/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender;

    .line 55
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    new-instance v0, Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 62
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 65
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->setProgressBarInvisible()V

    .line 67
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 70
    iget-object v2, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4, v3}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v2, p1, v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {p1, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->showInterstitialCloseButton()V

    .line 75
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->shouldShowContentInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->setContentView(Landroid/view/View;)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->finish()V

    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 109
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->removeAllViews()V

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected setClosePosition(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePosition(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;)V

    return-void
.end method

.method protected setProgressBarInvisible()V
    .locals 2

    .line 166
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected setProgressBarVisible()V
    .locals 2

    .line 162
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected abstract shouldShowContentInfo()Z
.end method

.method protected showInterstitialCloseButton()V
    .locals 2

    .line 125
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setCloseVisible(Z)V

    .line 127
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setOnCloseListener(Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;)V

    :cond_0
    return-void
.end method

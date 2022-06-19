.class public abstract Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_BROADCAST_ID:Ljava/lang/String; = "extra_pn_broadcast_id"

.field public static final EXTRA_ZONE_ID:Ljava/lang/String; = "extra_pn_zone_id"


# instance fields
.field private mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private mBroadcastSender:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;

.field private final mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

.field private mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

.field private mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

.field private mZoneId:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    new-instance v0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity$1;-><init>(Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getBroadcastSender()Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action;->CLOSE:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;->sendBroadcast(Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action;)V

    .line 119
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->finish()V

    return-void
.end method

.method protected getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 2

    .line 166
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAdCache()Lnet/pubnative/lite/sdk/AdCache;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/AdCache;->remove(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    .line 171
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected getBroadcastSender()Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;
    .locals 1

    .line 175
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mBroadcastSender:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;

    return-object v0
.end method

.method protected getCloseableContainer()Lnet/pubnative/lite/sdk/views/CloseableContainer;
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    return-object v0
.end method

.method protected getUrlHandler()Lnet/pubnative/lite/sdk/utils/UrlHandler;
    .locals 1

    .line 162
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    return-object v0
.end method

.method protected getZoneId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method protected hideRewardedCloseButton()V
    .locals 2

    .line 151
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setCloseVisible(Z)V

    .line 153
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setOnCloseListener(Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    new-instance v0, Lnet/pubnative/lite/sdk/utils/UrlHandler;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/utils/UrlHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mUrlHandlerDelegate:Lnet/pubnative/lite/sdk/utils/UrlHandler;

    const-string v0, "extra_pn_zone_id"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mZoneId:Ljava/lang/String;

    const-string v0, "extra_pn_broadcast_id"

    const-wide/16 v1, -0x1

    .line 68
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 70
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mZoneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    .line 71
    new-instance p1, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;

    invoke-direct {p1, p0, v3, v4}, Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;-><init>(Landroid/content/Context;J)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mBroadcastSender:Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender;

    .line 73
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    new-instance v0, Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    .line 78
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->hideRewardedCloseButton()V

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 81
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 84
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->setProgressBarInvisible()V

    .line 86
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    iget-object v2, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4, v3}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v2, p1, v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {p1, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setBackgroundColor(I)V

    .line 94
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->setContentView(Landroid/view/View;)V

    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->finish()V

    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->removeAllViews()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected setClosePosition(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePosition(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;)V

    return-void
.end method

.method protected setProgressBarInvisible()V
    .locals 2

    .line 183
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected setProgressBarVisible()V
    .locals 2

    .line 179
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected showRewardedCloseButton()V
    .locals 2

    .line 144
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setCloseVisible(Z)V

    .line 146
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseableContainer:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->mCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setOnCloseListener(Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;)V

    :cond_0
    return-void
.end method

.class public Lcom/mopub/mobileads/FullscreenAdController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
.implements Lcom/mopub/mraid/MraidController$UseCustomCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/FullscreenAdController$d;,
        Lcom/mopub/mobileads/FullscreenAdController$e;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Lcom/mopub/mobileads/BaseVideoViewController;

.field public final c:Lcom/mopub/mobileads/MoPubWebViewController;

.field public final d:Lcom/mopub/mobileads/AdData;

.field public f:Lcom/mopub/mobileads/FullscreenAdController$e;

.field public g:Lcom/mopub/mraid/WebViewDebugListener;

.field public h:Lcom/mopub/common/CloseableLayout;

.field public j:Lcom/mopub/mobileads/RadialCountdownWidget;

.field public k:Lcom/mopub/mobileads/FullscreenAdController$d;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Lcom/mopub/mobileads/AdData;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v1

    const-string v2, "html"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/mopub/mraid/MraidController;

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v7

    invoke-direct {v1, p1, v5, v6, v7}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V

    :goto_0
    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity."

    aput-object p4, p3, v4

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    instance-of v7, v6, Lcom/mopub/mraid/MraidController;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/mopub/mraid/MraidController;

    invoke-virtual {v6, p0}, Lcom/mopub/mraid/MraidController;->setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V

    :cond_3
    iget-object v6, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v7, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mraid/WebViewDebugListener;

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/MoPubWebViewController;->setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V

    iget-object v6, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    new-instance v7, Lcom/mopub/mobileads/FullscreenAdController$a;

    invoke-direct {v7, p0, p1, p4}, Lcom/mopub/mobileads/FullscreenAdController$a;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-direct {v7, p0}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v1, v5, v6, v7}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    :goto_2
    new-instance v1, Lcom/mopub/common/CloseableLayout;

    invoke-direct {v1, p1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "vast"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/FullscreenAdController;->g(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/Long;)Lcom/mopub/mobileads/BaseVideoViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    sget-object p2, Lcom/mopub/mobileads/FullscreenAdController$e;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseVideoViewController;->h()V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    goto :goto_3

    :cond_6
    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    :goto_3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iget-object p3, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    new-instance p3, Lcom/mopub/mobileads/FullscreenAdController$c;

    invoke-direct {p3, p0}, Lcom/mopub/mobileads/FullscreenAdController$c;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {p2, p3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    iget-object p3, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {p3}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p2, v4}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p2, v4}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_7
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/FullscreenAdController;->e(Landroid/content/Context;I)V

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result p1

    if-ltz p1, :cond_8

    invoke-virtual {p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_4

    :cond_8
    const/16 p1, 0x7530

    :goto_4
    iput p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:I

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    iput-boolean v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/mopub/mobileads/FullscreenAdController$d;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/mopub/mobileads/FullscreenAdController$d;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$a;)V

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$d;

    goto :goto_5

    :cond_9
    iput-boolean v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Z

    :goto_5
    return-void
.end method

.method public static synthetic a(Lcom/mopub/mobileads/FullscreenAdController;)Lcom/mopub/mobileads/MoPubWebViewController;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    return-object p0
.end method

.method public static synthetic b(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic c(Lcom/mopub/mobileads/FullscreenAdController;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/FullscreenAdController;->l(I)V

    return-void
.end method

.method public static synthetic d(Lcom/mopub/mobileads/FullscreenAdController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->h()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->i()V

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->k()V

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v1

    const-string v3, "com.mopub.action.fullscreen.dismiss"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x35

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public f()Z
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Z

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/Long;)Lcom/mopub/mobileads/BaseVideoViewController;
    .locals 8

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    return-object v0

    :cond_0
    new-instance p4, Lcom/mopub/mraid/MraidVideoViewController;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p4, p1, p3, p2, p0}, Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    return-object p4
.end method

.method public final h()Z
    .locals 2

    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:I

    iget v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Z

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    const-string v4, "com.mopub.action.rewardedad.complete"

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Z

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$d;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 2

    iput p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:I

    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:I

    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoViewController;->e(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->j()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->c(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->k()V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->k()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->d()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->j()V

    return-void
.end method

.method public useCustomCloseChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_2
    return-void
.end method

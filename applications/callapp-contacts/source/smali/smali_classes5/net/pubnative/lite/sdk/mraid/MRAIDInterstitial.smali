.class public Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;
.super Lnet/pubnative/lite/sdk/mraid/MRAIDView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V
    .locals 10

    move-object v9, p0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 47
    invoke-direct/range {v0 .. v8}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;Z)V

    .line 48
    iget-object v0, v9, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->webView:Landroid/webkit/WebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 49
    iget-object v0, v9, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 0

    .line 58
    invoke-super {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->close()V

    return-void
.end method

.method protected closeFromExpanded()V
    .locals 2

    .line 81
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 82
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->state:I

    .line 83
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->clearView()V

    .line 84
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial$1;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial$1;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    invoke-super {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeFromExpanded()V

    return-void
.end method

.method protected expand(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->state:I

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expand(Ljava/lang/String;)V

    return-void
.end method

.method protected expandHelper(Landroid/webkit/WebView;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->isLaidOut:Z

    .line 75
    iput p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->state:I

    .line 76
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->fireStateChangeEvent()V

    return-void
.end method

.method public hide()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->close()V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;->showAsInterstitial(Landroid/app/Activity;)V

    return-void
.end method

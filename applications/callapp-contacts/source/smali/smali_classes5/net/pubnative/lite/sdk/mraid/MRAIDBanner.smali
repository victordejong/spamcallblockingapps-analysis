.class public Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;
.super Lnet/pubnative/lite/sdk/mraid/MRAIDView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;)V
    .locals 10

    move-object v9, p0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 46
    invoke-direct/range {v0 .. v8}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;Z)V

    .line 47
    iget-object v0, v9, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 48
    iget-object v0, v9, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    .line 59
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected expand(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expand(Ljava/lang/String;)V

    return-void
.end method

.method protected expandHelper(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x2

    .line 78
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    .line 79
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    .line 80
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->fireStateChangeEvent()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 54
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutCompleted()V
    .locals 1

    .line 85
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->isPageFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->state:I

    .line 87
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->fireStateChangeEvent()V

    .line 88
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->fireReadyEvent()V

    .line 89
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->isViewable:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDBanner;->fireViewableChangeEvent()V

    :cond_0
    return-void
.end method

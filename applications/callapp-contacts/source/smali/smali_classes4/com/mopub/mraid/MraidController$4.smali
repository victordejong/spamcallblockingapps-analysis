.class final Lcom/mopub/mraid/MraidController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->c()V

    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public final onExpand(Ljava/net/URI;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/net/URI;Z)V

    return-void
.end method

.method public final onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onOpen(Ljava/net/URI;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPageFailedToLoad()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->f(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onPageLoaded()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->b()V

    .line 189
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->c(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->d(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p0

    .line 233
    iget-object v6, v5, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    .line 1582
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v7, :cond_b

    .line 1588
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v8, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v7, v8, :cond_a

    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v8, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v7, v8, :cond_0

    goto/16 :goto_2

    .line 1591
    :cond_0
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v8, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v7, v8, :cond_9

    .line 1595
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    sget-object v8, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-eq v7, v8, :cond_8

    int-to-float v7, v0

    .line 1600
    iget-object v8, v6, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v7

    int-to-float v8, v1

    .line 1601
    iget-object v9, v6, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    int-to-float v9, v2

    .line 1602
    iget-object v10, v6, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    int-to-float v10, v3

    .line 1603
    iget-object v11, v6, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v10

    .line 1604
    iget-object v11, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 2115
    iget-object v11, v11, Lcom/mopub/mraid/c;->g:Landroid/graphics/Rect;

    .line 1604
    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    .line 1605
    iget-object v9, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 3115
    iget-object v9, v9, Lcom/mopub/mraid/c;->g:Landroid/graphics/Rect;

    .line 1605
    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    .line 1606
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v7, v11

    add-int v12, v9, v8

    invoke-direct {v10, v11, v9, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v7, ")"

    const-string v9, ") and offset ("

    const-string v11, "resizeProperties specified a size ("

    const-string v12, ", "

    if-nez p6, :cond_2

    .line 1610
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 4085
    iget-object v13, v13, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    .line 1611
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-gt v14, v15, :cond_1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-gt v14, v15, :cond_1

    .line 1621
    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v5, v5, v16

    invoke-static {v14, v15, v5}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v5

    .line 1622
    iget v14, v13, Landroid/graphics/Rect;->top:I

    iget v15, v10, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v13, v13, v16

    invoke-static {v14, v15, v13}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v13

    .line 1623
    invoke-virtual {v10, v5, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1612
    :cond_1
    new-instance v4, Lcom/mopub/mraid/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 4090
    iget-object v0, v0, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    .line 1616
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 5090
    iget-object v0, v0, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    .line 1617
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1627
    :cond_2
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1628
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v4, v10, v5}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1629
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 6085
    iget-object v13, v13, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    .line 1629
    invoke-virtual {v13, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1638
    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1645
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v4}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 1648
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1649
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 8085
    iget-object v2, v2, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    .line 1649
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1650
    iget v1, v10, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 9085
    iget-object v2, v2, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    .line 1650
    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1651
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_4

    .line 1652
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_3

    .line 1653
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 1655
    :cond_3
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1656
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1657
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1659
    invoke-virtual {v6}, Lcom/mopub/mraid/MraidController;->d()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1660
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v0, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v0, :cond_5

    .line 1661
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    goto :goto_1

    .line 1663
    :cond_4
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_5

    .line 1664
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1666
    :cond_5
    :goto_1
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v4}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 1668
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {v6, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    return-void

    .line 1639
    :cond_6
    new-instance v1, Lcom/mopub/mraid/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1630
    :cond_7
    new-instance v4, Lcom/mopub/mraid/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 6090
    iget-object v0, v0, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    .line 1634
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 7090
    iget-object v0, v0, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    .line 1635
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1596
    :cond_8
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an interstitial ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_9
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an already expanded ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_2
    return-void

    .line 1583
    :cond_b
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to resize after the WebView is destroyed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onSetOrientationProperties(ZLcom/mopub/mraid/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->a(ZLcom/mopub/mraid/b;)V

    return-void
.end method

.method public final onUseCustomClose(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Z)V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    :cond_0
    return-void
.end method

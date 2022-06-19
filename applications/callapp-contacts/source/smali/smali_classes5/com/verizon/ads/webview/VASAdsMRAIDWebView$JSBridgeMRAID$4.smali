.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->resize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

.field final synthetic b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 633
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v2, "expanded"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "resize"

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v4, "hidden"

    .line 634
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v4, "loading"

    .line 635
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 642
    :cond_0
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const-string v4, "Unable to resize"

    if-nez v1, :cond_1

    .line 644
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v1, v4, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_1
    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    move-result-object v5

    .line 650
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->c(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup;

    move-result-object v6

    if-nez v6, :cond_3

    .line 651
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 652
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 653
    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v7, v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 654
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 655
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->g()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 657
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v6, v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 658
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getTranslationX()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 659
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getTranslationY()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 662
    :cond_2
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "WebView parent is not a ViewGroup. Resize cannot proceed."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 664
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v1, v4, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 672
    :cond_3
    :goto_0
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->h(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    iget v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;->a:I

    add-int/2addr v6, v7

    .line 673
    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->h(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    iget v8, v8, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;->b:I

    add-int/2addr v7, v8

    .line 674
    iget-object v8, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    iget v8, v8, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;->c:I

    .line 675
    iget-object v9, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    iget v9, v9, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;->d:I

    .line 677
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v8, v6

    add-int/2addr v9, v7

    invoke-direct {v10, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 680
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;

    iget-boolean v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;->e:Z

    if-nez v6, :cond_8

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 682
    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_4

    .line 683
    iget v6, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 686
    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_5

    .line 687
    iput v6, v10, Landroid/graphics/Rect;->left:I

    .line 688
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v10, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 690
    :cond_4
    iget v6, v10, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_5

    .line 691
    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 693
    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_5

    .line 694
    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 695
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v10, Landroid/graphics/Rect;->left:I

    .line 699
    :cond_5
    :goto_1
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    .line 700
    iget v6, v10, Landroid/graphics/Rect;->top:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 703
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_7

    .line 704
    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 705
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 707
    :cond_6
    iget v6, v10, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_7

    .line 708
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 710
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_7

    .line 711
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 712
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 717
    :cond_7
    :goto_2
    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 718
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Resize dimensions will place ad offscreen and allow offscreen is not permitted."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 719
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1, v4, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 725
    :cond_8
    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/verizon/ads/webview/R$dimen;->close_region_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 726
    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/verizon/ads/webview/R$dimen;->close_region_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 729
    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-gt v8, v9, :cond_b

    iget v8, v10, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_b

    iget v8, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v7, :cond_b

    iget v7, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v7, v5, :cond_9

    goto/16 :goto_4

    .line 740
    :cond_9
    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int v12, v3, v4

    .line 741
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Landroid/graphics/Rect;->top:I

    sub-int v13, v3, v4

    .line 742
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x3e8

    const/16 v15, 0x220

    const/16 v16, -0x3

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v4, 0x33

    .line 747
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 748
    iget v4, v10, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 750
    iget v4, v10, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 752
    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v4, v4, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationX(F)V

    .line 753
    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v4, v4, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v4, v5}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationY(F)V

    .line 756
    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v4, v4, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v5, "resized"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 757
    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v4, v4, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v4}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 758
    invoke-interface {v1, v4, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 760
    :cond_a
    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v4, v4, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v4}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 761
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v6, v6, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 762
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 765
    iget-object v7, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v7, v7, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v4, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    invoke-interface {v1, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    :goto_3
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;)V

    .line 773
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d()Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;->resize()V

    return-void

    .line 733
    :cond_b
    :goto_4
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Resize dimensions will clip the close region which is not permitted."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 734
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1, v4, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_c
    :goto_5
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$4;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v2, "Cannot resize in current state<%s>"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

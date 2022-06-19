.class public final Lcom/facebook/ads/redexgen/X/7U;
.super Lcom/facebook/ads/redexgen/X/Lg;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/L6;

.field public final A01:Lcom/facebook/ads/redexgen/X/KS;

.field public final A02:Lcom/facebook/ads/redexgen/X/KN;

.field public final A03:Lcom/facebook/ads/redexgen/X/KA;

.field public final A04:Lcom/facebook/ads/redexgen/X/Pe;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 16719
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    .line 16720
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16721
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    .line 16722
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 16723
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    .line 16724
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7Y;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KA;

    .line 16725
    new-instance v0, Lcom/facebook/ads/redexgen/X/7X;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7X;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KS;

    .line 16726
    new-instance v0, Lcom/facebook/ads/redexgen/X/7W;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7W;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KN;

    .line 16727
    new-instance v0, Lcom/facebook/ads/redexgen/X/7V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7V;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/L6;

    .line 16728
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7U;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 16729
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Pe;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    .line 16730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pe;->setChecked(Z)V

    .line 16731
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16732
    .local p1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7U;->setVisibility(I)V

    .line 16733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/7U;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16734
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7U;->setClickable(Z)V

    .line 16735
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7U;->setFocusable(Z)V

    .line 16736
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7U;)Lcom/facebook/ads/redexgen/X/Pe;
    .locals 0

    .line 16737
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16738
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A07()V

    .line 16739
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/7U;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pe;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16741
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KA;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KS;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KN;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16743
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16744
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16745
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KS;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16746
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/7U;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pe;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16748
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A08()V

    .line 16749
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 16750
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7U;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v2

    .line 16751
    .local p1, "videoView":Lcom/facebook/ads/redexgen/X/Oj;
    if-nez v2, :cond_1

    .line 16752
    return-void

    .line 16753
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    .line 16754
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    .line 16755
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_3

    .line 16756
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7U;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A05:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    goto :goto_0

    .line 16757
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_4

    .line 16758
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 16759
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "videoView":Lcom/facebook/ads/redexgen/X/Oj;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pe;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 16761
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pe;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 16763
    return-void
.end method

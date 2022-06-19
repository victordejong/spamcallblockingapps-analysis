.class public final Lcom/facebook/ads/redexgen/X/Rr;
.super Lcom/facebook/ads/redexgen/X/Ns;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V
    .locals 10

    .line 50716
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 50717
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50718
    .local p0, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v9, -0x2

    const/4 v4, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50719
    .local p1, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50720
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0T(Landroid/view/View;Landroid/content/Context;)V

    .line 50721
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50722
    .local v0, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50723
    const/16 v0, 0x50

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50724
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50725
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50726
    .local v5, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50727
    if-eqz p2, :cond_3

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50728
    .local v9, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_2

    sget v1, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    :goto_1
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50729
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50730
    .local p2, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50731
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50732
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50734
    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50735
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50736
    invoke-virtual {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Rr;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50737
    return-void

    .line 50738
    :cond_0
    const/4 v0, -0x1

    goto :goto_3

    .line 50739
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 50740
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50741
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ns;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 50742
    return-void
.end method

.method public final A0a()Z
    .locals 1

    .line 50743
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Yl;
.super Lcom/facebook/ads/redexgen/X/Nx;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Z)V
    .locals 10

    .line 61420
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 61421
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61422
    .local p0, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v9, -0x2

    const/4 v4, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61423
    .local p1, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61424
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0W(Landroid/view/View;Landroid/content/Context;)V

    .line 61425
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61426
    .local v0, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61427
    const/16 v0, 0x50

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61428
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 61429
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61430
    .local v5, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 61431
    if-eqz p2, :cond_3

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61432
    .local v9, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_2

    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    :goto_1
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 61433
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61434
    .local p2, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 61435
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61436
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61437
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCtaButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61438
    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61439
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Yl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61440
    invoke-virtual {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Yl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61441
    return-void

    .line 61442
    :cond_0
    const/4 v0, -0x1

    goto :goto_3

    .line 61443
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 61444
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

    .line 61445
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 61446
    return-void
.end method

.method public final A0a()Z
    .locals 1

    .line 61447
    const/4 v0, 0x1

    return v0
.end method

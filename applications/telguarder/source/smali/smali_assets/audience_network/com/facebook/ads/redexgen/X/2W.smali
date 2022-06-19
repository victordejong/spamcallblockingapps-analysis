.class public final Lcom/facebook/ads/redexgen/X/2W;
.super Lcom/facebook/ads/redexgen/X/9g;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5466
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2W;->A00:I

    .line 5467
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2W;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 1

    .line 5468
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9g;-><init>(Lcom/facebook/ads/redexgen/X/Nw;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 5469
    return-void
.end method


# virtual methods
.method public final A01()Z
    .locals 1

    .line 5470
    const/4 v0, 0x0

    return v0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7

    .line 5471
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v4

    .line 5472
    .local p0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/Np;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/Np;->setAlignment(I)V

    .line 5473
    const/4 v5, -0x2

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5474
    .local v4, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Np;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5475
    sget v1, Lcom/facebook/ads/redexgen/X/2W;->A00:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Np;->setPadding(IIII)V

    .line 5476
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5477
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5478
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5479
    .local v0, "adDetails":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 5480
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5481
    .local v6, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5482
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5483
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5484
    sget v0, Lcom/facebook/ads/redexgen/X/2W;->A01:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5485
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5487
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2W;->addView(Landroid/view/View;)V

    .line 5488
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/2W;->addView(Landroid/view/View;)V

    .line 5489
    return-void
.end method

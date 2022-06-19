.class public final Lcom/facebook/ads/redexgen/X/2e;
.super Lcom/facebook/ads/redexgen/X/9g;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5725
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2e;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 1

    .line 5726
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9g;-><init>(Lcom/facebook/ads/redexgen/X/O1;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V

    .line 5727
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 1

    .line 5728
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 5729
    const/4 v0, 0x0

    return v0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 7

    .line 5730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v6

    .line 5731
    .local p0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/Nu;
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Nu;->setAlignment(I)V

    .line 5732
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5733
    .local v6, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5734
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/Nu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5735
    sget v0, Lcom/facebook/ads/redexgen/X/2e;->A00:I

    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Nu;->setPadding(IIII)V

    .line 5736
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0W(Landroid/view/View;Landroid/content/Context;)V

    .line 5737
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5738
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5739
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCtaButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a7;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5740
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5741
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCtaButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5743
    return-void
.end method

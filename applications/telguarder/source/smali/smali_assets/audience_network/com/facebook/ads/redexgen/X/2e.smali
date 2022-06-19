.class public final Lcom/facebook/ads/redexgen/X/2e;
.super Lcom/facebook/ads/redexgen/X/9g;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5836
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2e;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 1

    .line 5837
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9g;-><init>(Lcom/facebook/ads/redexgen/X/Nw;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 5838
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 1

    .line 5839
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C()Z
    .locals 1

    .line 5840
    const/4 v0, 0x0

    return v0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7

    .line 5841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v6

    .line 5842
    .local p0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/Np;
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Np;->setAlignment(I)V

    .line 5843
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5844
    .local v6, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5845
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/Np;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5846
    sget v0, Lcom/facebook/ads/redexgen/X/2e;->A00:I

    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Np;->setPadding(IIII)V

    .line 5847
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0T(Landroid/view/View;Landroid/content/Context;)V

    .line 5848
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5849
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5851
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5852
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5853
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2e;->addView(Landroid/view/View;)V

    .line 5854
    return-void
.end method

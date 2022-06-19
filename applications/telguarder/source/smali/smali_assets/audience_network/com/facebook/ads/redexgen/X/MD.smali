.class public final Lcom/facebook/ads/redexgen/X/MD;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public final A00:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43852
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MD;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 43853
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 43854
    new-instance v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    .line 43855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 43857
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/MD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    const v0, -0x7f000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 43859
    sget v0, Lcom/facebook/ads/redexgen/X/MD;->A01:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/MD;->setPadding(IIII)V

    .line 43860
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 43861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 43862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/ImageView;

    return-object v0
.end method

.class public abstract Lcom/facebook/ads/redexgen/X/MP;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PP;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 43854
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43855
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43856
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43857
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43858
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43859
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 43860
    return-void
.end method

.method public A08()V
    .locals 0

    .line 43861
    return-void
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 0

    .line 43862
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:Lcom/facebook/ads/redexgen/X/PD;

    .line 43863
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->A07()V

    .line 43864
    return-void
.end method

.method public final AEO(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 1

    .line 43865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->A08()V

    .line 43866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:Lcom/facebook/ads/redexgen/X/PD;

    .line 43867
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/PD;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:Lcom/facebook/ads/redexgen/X/PD;

    return-object v0
.end method

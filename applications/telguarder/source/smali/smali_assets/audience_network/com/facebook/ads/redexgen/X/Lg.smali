.class public abstract Lcom/facebook/ads/redexgen/X/Lg;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PK;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 42918
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42919
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42920
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42921
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42922
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Lg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42923
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 42924
    return-void
.end method

.method public A08()V
    .locals 0

    .line 42925
    return-void
.end method

.method public final A8M(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 0

    .line 42926
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lg;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    .line 42927
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A07()V

    .line 42928
    return-void
.end method

.method public final AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 1

    .line 42929
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A08()V

    .line 42930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lg;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    .line 42931
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/Oj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lg;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    return-object v0
.end method

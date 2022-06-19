.class public final Lcom/facebook/ads/redexgen/X/aL;
.super Lcom/facebook/ads/redexgen/X/3D;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeAdViewPager"
.end annotation


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66872
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;-><init>(Landroid/content/Context;)V

    .line 66873
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aL;->A00:I

    .line 66874
    return-void
.end method

.method private A00(I)V
    .locals 0

    .line 66875
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aL;->A00:I

    .line 66876
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aL;I)V
    .locals 0

    .line 66877
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aL;->A00(I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 4

    .line 66878
    iget v3, p0, Lcom/facebook/ads/redexgen/X/aL;->A00:I

    .line 66879
    .local p0, "height":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aL;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 66880
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/aL;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66881
    .local p2, "child":Landroid/view/View;
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 66882
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 66883
    .local v3, "h":I
    if-le v0, v3, :cond_0

    .line 66884
    move v3, v0

    .line 66885
    .end local p2    # "child":Landroid/view/View;
    .end local v3    # "h":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66886
    .end local p1    # "i":I
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 66887
    invoke-super {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3D;->onMeasure(II)V

    .line 66888
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/MP;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MP;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 43963
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43964
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QjUwZCbDUlfOcmdTeXyvd13"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pmgXUgQY3G9embGve5GBnFw0VEVT9oeH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "awdDomzwyqRyeOiEyYHeXSv00pR55TnX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BJj1MoNnpM6JKdO5Mh8uM61yAFI5TCy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dRD1sNctYpeCeu2V1pPS6WM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8C9irfg3VZNd6lZFm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MP;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 7

    .line 43965
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 43966
    .local p0, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 43967
    .local p1, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    .line 43968
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 43969
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43970
    .local p2, "min":I
    invoke-virtual {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/MP;->setMeasuredDimension(II)V

    .line 43971
    .end local p2    # "min":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 43972
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43973
    :cond_0
    return-void

    .line 43974
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 43975
    if-lez v6, :cond_2

    .line 43976
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 43977
    :cond_2
    invoke-virtual {p0, v5, v5}, Lcom/facebook/ads/redexgen/X/MP;->setMeasuredDimension(II)V

    goto :goto_0

    .line 43978
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/MP;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/MP;->A01:[Ljava/lang/String;

    const-string v1, "z6sTWRHNr9jgarJvj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_5

    .line 43979
    if-lez v5, :cond_4

    .line 43980
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 43981
    :cond_4
    invoke-virtual {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/MP;->setMeasuredDimension(II)V

    goto :goto_0

    .line 43982
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 43983
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:Landroid/widget/ImageView$ScaleType;

    .line 43984
    return-void
.end method

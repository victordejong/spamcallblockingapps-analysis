.class public final Lcom/facebook/ads/redexgen/X/PH;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PG;
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7Z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/PG;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/Q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PH;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Q4;)V
    .locals 3

    .line 48011
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48012
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    .line 48013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 48014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    .line 48015
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48016
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/PH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48017
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ym3c0mHmt8I3OfABPCOx9UJ2Q16UuduY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K4DkQJV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KARr27mhou56jkSxhuic5Eo8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "doL6IsbVcBXoE3lEPdAb4lspmNlkYQBg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZiamaIcezCYLNnFM0CzM2w39hefukKsr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QAAEQWAERntefxGdirzkY0W9ygCVb18Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ecvamyNjiJSZyZ2FY2suHBqgS12IICXX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BDk4Rb0w5P1ojifCZQT7pVNvZTakDsaU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PH;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/Lg;)V
    .locals 2

    .line 48018
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/PH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48019
    check-cast p1, Lcom/facebook/ads/redexgen/X/7Z;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/7Z;

    .line 48020
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Lg;)V
    .locals 1

    .line 48021
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 48022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/7Z;

    .line 48023
    return-void
.end method

.method public final A03()Z
    .locals 1

    .line 48024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->A7g()Z

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 48025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 48026
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PH;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PH;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 48027
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/7Z;

    if-eqz v2, :cond_0

    .line 48028
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PH;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PH;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->layout(IIII)V

    .line 48029
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    .line 48030
    const/4 v9, 0x0

    .line 48031
    .local p0, "isinflated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getVideoWidth()I

    move-result v7

    .line 48032
    .local p1, "mVideoWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A02:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getVideoHeight()I

    move-result v5

    .line 48033
    .local p2, "mVideoHeight":I
    invoke-static {v7, p1}, Lcom/facebook/ads/redexgen/X/PH;->getDefaultSize(II)I

    move-result v0

    .line 48034
    .local v9, "width":I
    invoke-static {v5, p2}, Lcom/facebook/ads/redexgen/X/PH;->getDefaultSize(II)I

    move-result v2

    .line 48035
    .local v0, "height":I
    if-lez v7, :cond_0

    if-lez v5, :cond_0

    .line 48036
    const/4 v9, 0x1

    .line 48037
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 48038
    .local v7, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 48039
    .local v0, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 48040
    .local v5, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 48041
    .local v0, "heightSpecSize":I
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v8, v0, :cond_2

    if-ne v4, v0, :cond_2

    .line 48042
    move v0, v6

    .line 48043
    move v2, v3

    .line 48044
    mul-int v3, v7, v2

    mul-int v1, v0, v5

    if-ge v3, v1, :cond_1

    .line 48045
    mul-int v0, v2, v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/PH;->A03:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v4, v1

    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v3, v1, :cond_8

    sget-object v4, Lcom/facebook/ads/redexgen/X/PH;->A03:[Ljava/lang/String;

    const-string v3, "U4zbj2Wm0uAraatZAyMG0dkAaN2sbGyV"

    const/4 v1, 0x5

    aput-object v3, v4, v1

    const-string v3, "NaQeXa1xIolrwrGsNa3PifVvRhjqFXGF"

    const/4 v1, 0x7

    aput-object v3, v4, v1

    div-int/2addr v0, v5

    .line 48046
    .end local v7    # "widthSpecMode":I
    .end local v0    # "heightSpecSize":I
    .end local v5    # "heightSpecMode":I
    .end local v0
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/PH;->setMeasuredDimension(II)V

    .line 48047
    if-eqz v9, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A01:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PH;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48048
    :cond_1
    mul-int v3, v7, v2

    mul-int v1, v0, v5

    if-le v3, v1, :cond_0

    .line 48049
    mul-int v2, v0, v5

    div-int/2addr v2, v7

    goto :goto_0

    .line 48050
    :cond_2
    const/high16 v1, -0x80000000

    if-ne v8, v0, :cond_3

    .line 48051
    move v0, v6

    .line 48052
    mul-int v2, v0, v5

    div-int/2addr v2, v7

    .line 48053
    if-ne v4, v1, :cond_0

    if-le v2, v3, :cond_0

    .line 48054
    move v2, v3

    goto :goto_0

    .line 48055
    :cond_3
    if-ne v4, v0, :cond_4

    .line 48056
    move v2, v3

    .line 48057
    mul-int v0, v2, v7

    div-int/2addr v0, v5

    .line 48058
    if-ne v8, v1, :cond_0

    if-le v0, v6, :cond_0

    .line 48059
    move v0, v6

    goto :goto_0

    .line 48060
    :cond_4
    move v0, v7

    .line 48061
    move v2, v5

    .line 48062
    if-ne v4, v1, :cond_5

    if-le v2, v3, :cond_5

    .line 48063
    move v2, v3

    .line 48064
    mul-int v0, v2, v7

    div-int/2addr v0, v5

    .line 48065
    :cond_5
    if-ne v8, v1, :cond_0

    if-le v0, v6, :cond_0

    .line 48066
    move v0, v6

    .line 48067
    mul-int v2, v0, v5

    div-int/2addr v2, v7

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/PH;->A03:[Ljava/lang/String;

    const-string v1, "u6I59svdNPk3v5MrivI4HijRJO25VXOb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 48068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PG;->AC1()V

    .line 48069
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/PG;)V
    .locals 1

    .line 48070
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A01:Ljava/lang/ref/WeakReference;

    .line 48071
    return-void
.end method

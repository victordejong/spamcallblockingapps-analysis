.class public abstract Lcom/androidplot/util/RectFUtils;
.super Ljava/lang/Object;
.source "RectFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;
    .locals 5

    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 54
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 55
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 56
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 57
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getBottom()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static areIdentical(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    .line 38
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createFromEdges(FFFF)Landroid/graphics/RectF;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float v2, p0, p2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    cmpg-float v3, p1, p3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 76
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    move v3, p0

    goto :goto_2

    :cond_2
    move v3, p2

    :goto_2
    if-eqz v0, :cond_3

    move v4, p1

    goto :goto_3

    :cond_3
    move v4, p3

    :goto_3
    if-eqz v2, :cond_4

    move p0, p2

    :cond_4
    if-eqz v0, :cond_5

    move p1, p3

    :cond_5
    invoke-direct {v1, v3, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

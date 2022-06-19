.class public Lwb0;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Le9;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:Landroid/graphics/ColorFilter;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lwb0;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lwb0;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lwb0;->c:F

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lwb0;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 0

    iput p1, p0, Lwb0;->c:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v7, v1, v4

    const v8, 0x101009c

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwb0;->f()V

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v3, v2, :cond_5

    int-to-float v2, v3

    iget v3, p0, Lwb0;->b:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lwb0;->b:F

    div-float v6, v5, v1

    sub-float/2addr v4, v6

    iget v6, p0, Lwb0;->c:F

    div-float/2addr v6, v1

    sub-float/2addr v4, v6

    div-float/2addr v5, v1

    iget-object v6, p0, Lwb0;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v3, p0, Lwb0;->b:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v3, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lwb0;->b:F

    if-eqz v6, :cond_4

    mul-float v3, v3, v1

    :cond_4
    sub-float/2addr v2, v3

    iget v3, p0, Lwb0;->c:F

    div-float/2addr v3, v1

    sub-float v9, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lwb0;->c:F

    div-float/2addr v2, v1

    sub-float v11, v0, v2

    iget-object v12, p0, Lwb0;->a:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lwb0;->b:F

    return-void
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lwb0;->d:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwb0;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lwb0;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwb0;->g:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwb0;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lwb0;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iget-object v4, p0, Lwb0;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v3, p0, Lwb0;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lwb0;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lwb0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lwb0;->d:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    iput-object p1, p0, Lwb0;->f:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lwb0;->g:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwb0;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lwb0;->d:Landroid/graphics/ColorFilter;

    iput-object p1, p0, Lwb0;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lwb0;->d:Landroid/graphics/ColorFilter;

    iput-object p1, p0, Lwb0;->g:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

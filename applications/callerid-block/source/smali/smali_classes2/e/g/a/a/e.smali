.class public Le/g/a/a/e;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/a/e$b;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:J

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/content/res/ColorStateList;

.field private o:Z

.field private p:Z

.field private q:Z

.field private final r:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(IIILandroid/content/res/ColorStateList;III)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/e;->b:Z

    iput-boolean v0, p0, Le/g/a/a/e;->o:Z

    iput-boolean v0, p0, Le/g/a/a/e;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/e;->q:Z

    new-instance v1, Le/g/a/a/e$a;

    invoke-direct {v1, p0}, Le/g/a/a/e$a;-><init>(Le/g/a/a/e;)V

    iput-object v1, p0, Le/g/a/a/e;->r:Ljava/lang/Runnable;

    iput p7, p0, Le/g/a/a/e;->f:I

    iput p3, p0, Le/g/a/a/e;->g:I

    iput p1, p0, Le/g/a/a/e;->h:I

    iput p2, p0, Le/g/a/a/e;->i:I

    iput p5, p0, Le/g/a/a/e;->j:I

    iput p6, p0, Le/g/a/a/e;->k:I

    iput-object p4, p0, Le/g/a/a/e;->n:Landroid/content/res/ColorStateList;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/content/res/ColorStateList;IIILe/g/a/a/e$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Le/g/a/a/e;-><init>(IIILandroid/content/res/ColorStateList;III)V

    return-void
.end method

.method static synthetic a(Le/g/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/e;->g()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p0}, Le/g/a/a/e;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Le/g/a/a/e;->g:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Le/g/a/a/e;->j:I

    int-to-float v6, v5

    sub-float/2addr v6, v3

    int-to-float v7, v5

    sub-float/2addr v7, v3

    int-to-float v8, v5

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    iget v8, p0, Le/g/a/a/e;->k:I

    int-to-float v9, v8

    sub-float/2addr v7, v9

    div-float/2addr v6, v7

    iget v7, p0, Le/g/a/a/e;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    div-float/2addr v7, v6

    int-to-float v2, v5

    sub-float/2addr v9, v7

    mul-float v6, v3, v9

    add-float/2addr v2, v6

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float v5, v5, v9

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v6, p0, Le/g/a/a/e;->l:I

    iget v8, p0, Le/g/a/a/e;->m:I

    invoke-static {v6, v8, v7}, Le/g/a/b/a;->b(IIF)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sub-float v6, v2, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v5

    div-float/2addr v2, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v7, v6

    sub-float v4, v9, v6

    div-float/2addr v7, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sub-float/2addr v9, v7

    mul-float v2, v2, v9

    int-to-float v4, v8

    mul-float v4, v4, v7

    add-float/2addr v2, v4

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v5, p0, Le/g/a/a/e;->m:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Le/g/a/a/e;->j:I

    int-to-float v2, v2

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v5, p0, Le/g/a/a/e;->g:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v3, p0, Le/g/a/a/e;->m:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v3, p0, Le/g/a/a/e;->g:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Le/g/a/a/e;->j:I

    int-to-float v2, v2

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Le/g/a/a/e;->k:I

    int-to-float v2, v2

    :goto_0
    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p0}, Le/g/a/a/e;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Le/g/a/a/e;->g:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Le/g/a/a/e;->j:I

    sub-int v6, v5, v2

    iget v7, p0, Le/g/a/a/e;->k:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v8, v5

    sub-float/2addr v8, v3

    int-to-float v9, v5

    add-float/2addr v8, v9

    int-to-float v9, v2

    sub-float/2addr v8, v9

    int-to-float v9, v7

    sub-float/2addr v8, v9

    div-float/2addr v6, v8

    iget v8, p0, Le/g/a/a/e;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v6

    if-gez v10, :cond_0

    div-float/2addr v8, v6

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, v8

    int-to-float v4, v7

    sub-float/2addr v9, v8

    mul-float v4, v4, v9

    add-float/2addr v2, v4

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v5, p0, Le/g/a/a/e;->l:I

    iget v6, p0, Le/g/a/a/e;->m:I

    invoke-static {v5, v6, v8}, Le/g/a/b/a;->b(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Le/g/a/a/e;->j:I

    int-to-float v2, v2

    mul-float v9, v9, v3

    add-float/2addr v2, v9

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v5, p0, Le/g/a/a/e;->g:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-float/2addr v8, v6

    sub-float/2addr v9, v6

    div-float/2addr v8, v9

    int-to-float v2, v5

    mul-float v6, v3, v8

    add-float/2addr v2, v6

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float v5, v5, v8

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v6, p0, Le/g/a/a/e;->m:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sub-float v6, v2, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v5

    div-float/2addr v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v3, p0, Le/g/a/a/e;->m:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    iget v3, p0, Le/g/a/a/e;->g:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Le/g/a/a/e;->j:I

    int-to-float v2, v2

    :goto_0
    iget-object v3, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/e;->d:J

    const/4 v0, 0x0

    iput v0, p0, Le/g/a/a/e;->e:F

    return-void
.end method

.method private g()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/g/a/a/e;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Le/g/a/a/e;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Le/g/a/a/e;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/e;->b:Z

    :cond_0
    invoke-virtual {p0}, Le/g/a/a/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/g/a/a/e;->r:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/e;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/e;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Le/g/a/a/e;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Le/g/a/a/e;->c(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/e;->q:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/e;->p:Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Le/g/a/a/e;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Le/g/a/a/e;->h:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Le/g/a/a/e;->i:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Le/g/a/a/e;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/e;->b:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3

    const v0, 0x10100a0

    invoke-static {p1, v0}, Le/g/a/b/d;->g([II)Z

    move-result v0

    iget-object v1, p0, Le/g/a/a/e;->n:Landroid/content/res/ColorStateList;

    iget v2, p0, Le/g/a/a/e;->m:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-boolean v1, p0, Le/g/a/a/e;->o:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Le/g/a/a/e;->o:Z

    iget-boolean v0, p0, Le/g/a/a/e;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/g/a/a/e;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/g/a/a/e;->start()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le/g/a/a/e;->m:I

    if-eq v1, p1, :cond_3

    invoke-virtual {p0}, Le/g/a/a/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Le/g/a/a/e;->m:I

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, Le/g/a/a/e;->l:I

    iput p1, p0, Le/g/a/a/e;->m:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Le/g/a/a/e;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iput p1, p0, Le/g/a/a/e;->l:I

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/e;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Le/g/a/a/e;->d()V

    iget-object v0, p0, Le/g/a/a/e;->r:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/e;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/e;->b:Z

    iget-object v0, p0, Le/g/a/a/e;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.class public Lcom/a/a/a;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$1;,
        Lcom/a/a/a$d;,
        Lcom/a/a/a$b;,
        Lcom/a/a/a$c;,
        Lcom/a/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Landroid/graphics/drawable/shapes/RectShape;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:I


# direct methods
.method private constructor <init>(Lcom/a/a/a$a;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {p1}, Lcom/a/a/a$a;->a(Lcom/a/a/a$a;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 31
    invoke-static {p1}, Lcom/a/a/a$a;->a(Lcom/a/a/a$a;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    .line 32
    invoke-static {p1}, Lcom/a/a/a$a;->b(Lcom/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->f:I

    .line 33
    invoke-static {p1}, Lcom/a/a/a$a;->c(Lcom/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->g:I

    .line 34
    iget v0, p1, Lcom/a/a/a$a;->b:F

    iput v0, p0, Lcom/a/a/a;->i:F

    .line 37
    invoke-static {p1}, Lcom/a/a/a$a;->d(Lcom/a/a/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/a/a/a$a;->e(Lcom/a/a/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/a/a/a;->c:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/a/a/a$a;->f(Lcom/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->d:I

    .line 41
    invoke-static {p1}, Lcom/a/a/a$a;->g(Lcom/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->h:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    iget v1, p1, Lcom/a/a/a$a;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/a$a;->h(Lcom/a/a/a$a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/a$a;->i(Lcom/a/a/a$a;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/a$a;->j(Lcom/a/a/a$a;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    invoke-static {p1}, Lcom/a/a/a$a;->j(Lcom/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->j:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/a;->d:I

    invoke-direct {p0, v1}, Lcom/a/a/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/a;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0}, Lcom/a/a/a;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/a/a/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    return-void

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/a/a/a$a;->e(Lcom/a/a/a$a;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/a/a/a$a;Lcom/a/a/a$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/a/a/a;-><init>(Lcom/a/a/a$a;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    const v3, 0x3f666666    # 0.9f

    .line 65
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/a/a/a$d;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a$a;-><init>(Lcom/a/a/a$1;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/a/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 97
    iget v1, p0, Lcom/a/a/a;->j:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/a;->j:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 99
    iget-object v1, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_1

    .line 103
    iget v1, p0, Lcom/a/a/a;->i:F

    iget v2, p0, Lcom/a/a/a;->i:F

    iget-object v3, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p0}, Lcom/a/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 77
    iget v0, p0, Lcom/a/a/a;->j:I

    if-lez v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/a/a/a;->a(Landroid/graphics/Canvas;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 82
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget v0, p0, Lcom/a/a/a;->g:I

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 86
    :goto_0
    iget v2, p0, Lcom/a/a/a;->f:I

    if-gez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 87
    :goto_1
    iget v2, p0, Lcom/a/a/a;->h:I

    if-gez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 88
    :goto_2
    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v2, p0, Lcom/a/a/a;->c:Ljava/lang/String;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 93
    return-void

    .line 85
    :cond_1
    iget v0, p0, Lcom/a/a/a;->g:I

    goto :goto_0

    .line 86
    :cond_2
    iget v1, p0, Lcom/a/a/a;->f:I

    goto :goto_1

    .line 87
    :cond_3
    iget v2, p0, Lcom/a/a/a;->h:I

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/a/a/a;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/a/a/a;->g:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    return-void
.end method

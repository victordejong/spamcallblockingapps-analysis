.class Lcom/google/android/material/textfield/c;
.super Lcom/google/android/material/q/g;
.source "CutoutDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/q/k;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/q/k;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/textfield/c;->a:Landroid/graphics/Paint;

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/textfield/c;->c()V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    .line 52
    return-void

    .line 48
    :cond_0
    new-instance p1, Lcom/google/android/material/q/k;

    invoke-direct {p1}, Lcom/google/android/material/q/k;-><init>()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/textfield/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/c;->a(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Landroid/view/View;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/c;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable$Callback;)Z
    .locals 1

    .prologue
    .line 127
    instance-of v0, p1, Landroid/view/View;

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/c;->c:I

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/c;->c:I

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/textfield/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/c;->a(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget v0, p0, Lcom/google/android/material/textfield/c;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method a(FFFF)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/textfield/c;->invalidateSelf()V

    .line 74
    :cond_1
    return-void
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 77
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/c;->a(FFFF)V

    .line 78
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/android/material/textfield/c;->a(FFFF)V

    .line 83
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/c;->a(Landroid/graphics/Canvas;)V

    .line 88
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->draw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/textfield/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/c;->c(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.class final Lcom/google/android/material/floatingactionbutton/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/c$a;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field b:F

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field private final h:Lcom/google/android/material/k/n;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Lcom/google/android/material/floatingactionbutton/c$a;

.field private n:I

.field private o:Lcom/google/android/material/k/m;

.field private p:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lcom/google/android/material/k/m;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1083
    sget-object v0, Lcom/google/android/material/k/n$a;->a:Lcom/google/android/material/k/n;

    .line 61
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:Lcom/google/android/material/k/n;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Landroid/graphics/Path;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->l:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Lcom/google/android/material/floatingactionbutton/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/c$a;-><init>(Lcom/google/android/material/floatingactionbutton/c;Lcom/google/android/material/floatingactionbutton/c$1;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->m:Lcom/google/android/material/floatingactionbutton/c$a;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    .line 83
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    .line 85
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a()Landroid/graphics/RectF;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->l:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getState()[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    .line 103
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public final a(Lcom/google/android/material/k/m;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 125
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    .line 1224
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    .line 1225
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 1227
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/c;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x6

    new-array v9, v3, [I

    .line 1230
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->c:I

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v4, v5}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v9, v12

    .line 1231
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->d:I

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v4, v5}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v9, v5

    .line 1232
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->d:I

    .line 1234
    invoke-static {v4, v12}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 1233
    invoke-static {v4, v6}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v6, 0x2

    aput v4, v9, v6

    .line 1235
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->f:I

    .line 1237
    invoke-static {v4, v12}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 1236
    invoke-static {v4, v7}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v7, 0x3

    aput v4, v9, v7

    .line 1238
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->f:I

    iget v8, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v4, v8}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v8, 0x4

    aput v4, v9, v8

    .line 1239
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->e:I

    iget v10, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v4, v10}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    const/4 v10, 0x5

    aput v4, v9, v10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v12

    aput v2, v3, v5

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v6

    aput v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    aput v2, v3, v8

    aput v4, v3, v10

    .line 1249
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    const/4 v7, 0x0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iput-boolean v12, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 131
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 132
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 136
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    .line 1662
    iget-object v2, v2, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 137
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 141
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->m:Lcom/google/android/material/floatingactionbutton/c$a;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    .line 2662
    iget-object v0, v0, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 149
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:Lcom/google/android/material/k/n;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lcom/google/android/material/k/m;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 166
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isStateful()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 210
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 211
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    .line 213
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 216
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Z

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

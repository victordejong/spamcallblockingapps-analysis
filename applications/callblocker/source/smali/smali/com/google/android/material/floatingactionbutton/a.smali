.class Lcom/google/android/material/floatingactionbutton/a;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/a$a;
    }
.end annotation


# instance fields
.field a:F

.field private final b:Lcom/google/android/material/q/l;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/RectF;

.field private final h:Lcom/google/android/material/floatingactionbutton/a$a;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/google/android/material/q/k;

.field private p:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/material/q/l;

    invoke-direct {v0}, Lcom/google/android/material/q/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->b:Lcom/google/android/material/q/l;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->d:Landroid/graphics/Path;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->g:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Lcom/google/android/material/floatingactionbutton/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/a$a;-><init>(Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/a$1;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->h:Lcom/google/android/material/floatingactionbutton/a$a;

    .line 76
    iput-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 82
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    return-void
.end method

.method private b()Landroid/graphics/Shader;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 223
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {p0, v3}, Lcom/google/android/material/floatingactionbutton/a;->copyBounds(Landroid/graphics/Rect;)V

    .line 226
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 228
    const/4 v2, 0x6

    new-array v5, v2, [I

    .line 229
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/a;->i:I

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-static {v2, v4}, Landroidx/core/graphics/a;->a(II)I

    move-result v2

    aput v2, v5, v7

    .line 230
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/a;->j:I

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-static {v2, v4}, Landroidx/core/graphics/a;->a(II)I

    move-result v2

    aput v2, v5, v10

    .line 231
    const/4 v2, 0x2

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->j:I

    .line 233
    invoke-static {v4, v7}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    .line 232
    invoke-static {v4, v6}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    aput v4, v5, v2

    .line 234
    const/4 v2, 0x3

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->l:I

    .line 236
    invoke-static {v4, v7}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    .line 235
    invoke-static {v4, v6}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    aput v4, v5, v2

    .line 237
    const/4 v2, 0x4

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->l:I

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-static {v4, v6}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    aput v4, v5, v2

    .line 238
    const/4 v2, 0x5

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->k:I

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-static {v4, v6}, Landroidx/core/graphics/a;->a(II)I

    move-result v4

    aput v4, v5, v2

    .line 240
    const/4 v2, 0x6

    new-array v6, v2, [F

    .line 241
    aput v1, v6, v7

    .line 242
    aput v0, v6, v10

    .line 243
    const/4 v2, 0x2

    aput v8, v6, v2

    .line 244
    const/4 v2, 0x3

    aput v8, v6, v2

    .line 245
    const/4 v2, 0x4

    sub-float v0, v9, v0

    aput v0, v6, v2

    .line 246
    const/4 v0, 0x5

    aput v9, v6, v0

    .line 248
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->g:Landroid/graphics/RectF;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/a;->a:F

    .line 90
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 94
    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/a;->i:I

    .line 117
    iput p2, p0, Lcom/google/android/material/floatingactionbutton/a;->j:I

    .line 118
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/a;->k:I

    .line 119
    iput p4, p0, Lcom/google/android/material/floatingactionbutton/a;->l:I

    .line 120
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->getState()[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->p:Landroid/content/res/ColorStateList;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 103
    return-void
.end method

.method public a(Lcom/google/android/material/q/k;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 183
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 124
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/a;->b()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v3

    .line 130
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/a;->copyBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    .line 136
    invoke-virtual {v1}, Lcom/google/android/material/q/k;->f()Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/q/k;->a(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 140
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    :cond_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->h:Lcom/google/android/material/floatingactionbutton/a$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    invoke-virtual {v0}, Lcom/google/android/material/q/k;->f()Lcom/google/android/material/q/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/a;->copyBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->b:Lcom/google/android/material/q/l;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/a;->f:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/a;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/q/l;->a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->o:Lcom/google/android/material/q/k;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 165
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 199
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->p:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 210
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    if-eq v0, v1, :cond_0

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    .line 212
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/a;->m:I

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/a;->n:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 189
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->invalidateSelf()V

    .line 109
    return-void
.end method

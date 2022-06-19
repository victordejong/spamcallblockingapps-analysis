.class public Lcom/google/android/material/f/c;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/f/c$a;
    }
.end annotation


# static fields
.field public static final a:I


# instance fields
.field private final b:Lcom/google/android/material/f/c$a;

.field private final c:Landroid/view/View;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:Lcom/google/android/material/f/d$d;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 128
    const/4 v0, 0x2

    sput v0, Lcom/google/android/material/f/c;->a:I

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 130
    const/4 v0, 0x1

    sput v0, Lcom/google/android/material/f/c;->a:I

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/google/android/material/f/c;->a:I

    goto :goto_0
.end method

.method private b(Lcom/google/android/material/f/d$d;)F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 254
    iget v0, p1, Lcom/google/android/material/f/d$d;->a:F

    iget v1, p1, Lcom/google/android/material/f/d$d;->b:F

    iget-object v3, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    .line 255
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    .line 254
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/l/a;->a(FFFFFF)F

    move-result v0

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 304
    invoke-direct {p0}, Lcom/google/android/material/f/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/f/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v1, v1, Lcom/google/android/material/f/d$d;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 307
    iget-object v2, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v2, v2, Lcom/google/android/material/f/d$d;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 309
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v2, p0, Lcom/google/android/material/f/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :cond_0
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 242
    sget v0, Lcom/google/android/material/f/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/material/f/c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 244
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/material/f/c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v1, v1, Lcom/google/android/material/f/d$d;->a:F

    iget-object v2, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v2, v2, Lcom/google/android/material/f/d$d;->b:F

    iget-object v3, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v3, v3, Lcom/google/android/material/f/d$d;->c:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 251
    return-void
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    invoke-virtual {v0}, Lcom/google/android/material/f/d$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 321
    :goto_0
    sget v3, Lcom/google/android/material/f/c;->a:I

    if-nez v3, :cond_4

    .line 322
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/f/c;->j:Z

    if-eqz v0, :cond_3

    .line 324
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v1

    .line 320
    goto :goto_0

    :cond_3
    move v2, v1

    .line 322
    goto :goto_1

    .line 324
    :cond_4
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/android/material/f/c;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/android/material/f/c;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/f/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    sget v0, Lcom/google/android/material/f/c;->a:I

    if-nez v0, :cond_2

    .line 154
    iput-boolean v6, p0, Lcom/google/android/material/f/c;->i:Z

    .line 155
    iput-boolean v5, p0, Lcom/google/android/material/f/c;->j:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 158
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v2, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :cond_0
    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/android/material/f/c;->e:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    :cond_1
    iput-boolean v5, p0, Lcom/google/android/material/f/c;->i:Z

    .line 171
    iput-boolean v6, p0, Lcom/google/android/material/f/c;->j:Z

    .line 173
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 224
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Lcom/google/android/material/f/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    sget v0, Lcom/google/android/material/f/c;->a:I

    packed-switch v0, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/material/f/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/f/c;->b:Lcom/google/android/material/f/c$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/f/c$a;->a(Landroid/graphics/Canvas;)V

    .line 268
    invoke-direct {p0}, Lcom/google/android/material/f/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/f/c;->b(Landroid/graphics/Canvas;)V

    .line 301
    return-void

    .line 273
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 274
    iget-object v0, p0, Lcom/google/android/material/f/c;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 276
    iget-object v0, p0, Lcom/google/android/material/f/c;->b:Lcom/google/android/material/f/c$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/f/c$a;->a(Landroid/graphics/Canvas;)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/material/f/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_1
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v0, v0, Lcom/google/android/material/f/d$d;->a:F

    iget-object v1, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v1, v1, Lcom/google/android/material/f/d$d;->b:F

    iget-object v2, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v2, v2, Lcom/google/android/material/f/d$d;->c:F

    iget-object v3, p0, Lcom/google/android/material/f/c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/material/f/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v0, v0, Lcom/google/android/material/f/d$d;->a:F

    iget-object v1, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v1, v1, Lcom/google/android/material/f/d$d;->b:F

    iget-object v2, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    iget v2, v2, Lcom/google/android/material/f/d$d;->c:F

    iget-object v3, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/f/c;->b:Lcom/google/android/material/f/c$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/f/c$a;->a(Landroid/graphics/Canvas;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/f/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/material/f/c;->h:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    return-void
.end method

.method public a(Lcom/google/android/material/f/d$d;)V
    .locals 3

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    .line 205
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/f/c;->g()V

    .line 206
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lcom/google/android/material/f/d$d;

    invoke-direct {v0, p1}, Lcom/google/android/material/f/d$d;-><init>(Lcom/google/android/material/f/d$d;)V

    iput-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    .line 199
    :goto_1
    iget v0, p1, Lcom/google/android/material/f/d$d;->c:F

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/material/f/c;->b(Lcom/google/android/material/f/d$d;)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    .line 199
    invoke-static {v0, v1, v2}, Lcom/google/android/material/l/a;->b(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lcom/google/android/material/f/d$d;->c:F

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/d$d;->a(Lcom/google/android/material/f/d$d;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 176
    sget v0, Lcom/google/android/material/f/c;->a:I

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/f/c;->j:Z

    .line 178
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/f/c;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lcom/google/android/material/f/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method public c()Lcom/google/android/material/f/d$d;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    new-instance v0, Lcom/google/android/material/f/d$d;

    iget-object v1, p0, Lcom/google/android/material/f/c;->g:Lcom/google/android/material/f/d$d;

    invoke-direct {v0, v1}, Lcom/google/android/material/f/d$d;-><init>(Lcom/google/android/material/f/d$d;)V

    .line 215
    invoke-virtual {v0}, Lcom/google/android/material/f/d$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, v0}, Lcom/google/android/material/f/c;->b(Lcom/google/android/material/f/d$d;)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/f/d$d;->c:F

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/material/f/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/material/f/c;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/material/f/c;->b:Lcom/google/android/material/f/c$a;

    invoke-interface {v0}, Lcom/google/android/material/f/c$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/f/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

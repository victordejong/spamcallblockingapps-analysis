.class public Lcom/bumptech/glide/load/resource/d/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/l/a/a/b;
.implements Lcom/bumptech/glide/load/resource/d/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/c$a;
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/resource/d/c$a;

.field b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/l/a/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/l;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 102
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/l;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/l;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c$a;

    new-instance v8, Lcom/bumptech/glide/load/resource/d/g;

    .line 132
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/d/c$a;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/c$a;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    const-string v0, "Argument must not be null"

    .line 1023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    check-cast p1, Lcom/bumptech/glide/load/resource/d/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/g;Landroid/graphics/Paint;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/d/c$a;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    .line 147
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    return-void
.end method

.method private d()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    if-nez v0, :cond_1

    .line 226
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$b;)V

    .line 228
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->b(Lcom/bumptech/glide/load/resource/d/g$b;)V

    return-void
.end method

.method private f()Landroid/graphics/Rect;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private g()Landroid/graphics/Paint;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 1118
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 6167
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {p1}, Lcom/bumptech/glide/b/a;->g()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    .line 389
    :goto_1
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    return-void

    .line 391
    :cond_3
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    return-void
.end method

.method public final a(Landroidx/l/a/a/b$a;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 1159
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 3326
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 3327
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3328
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    .line 337
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    .line 4184
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 5155
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/resource/d/g$a;->a:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 5174
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/d/g;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 344
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    .line 347
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    if-eq v0, v2, :cond_5

    iget v1, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    if-lt v1, v0, :cond_5

    .line 5354
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 5355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 5356
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/l/a/a/b$a;

    invoke-virtual {v2, p0}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    :cond_5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 281
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 286
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->f()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 2205
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 2332
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2205
    :cond_2
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->h:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->f()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->g()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 2147
    iget v0, v0, Lcom/bumptech/glide/load/resource/d/g;->l:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 2143
    iget v0, v0, Lcom/bumptech/glide/load/resource/d/g;->k:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    .line 244
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    if-nez p1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->e()V

    goto :goto_0

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->d()V

    .line 250
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    const/4 v0, 0x0

    .line 1188
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    .line 206
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->d()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    .line 214
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->e()V

    return-void
.end method

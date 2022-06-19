.class public Landroidx/constraintlayout/utils/widget/ImageFilterView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/utils/widget/ImageFilterView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewOutlineProvider;

.field b:Landroid/graphics/RectF;

.field c:[Landroid/graphics/drawable/Drawable;

.field d:Landroid/graphics/drawable/LayerDrawable;

.field private e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-direct {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    .line 287
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 288
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    const/4 p1, 0x0

    .line 298
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-direct {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    .line 287
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 288
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    .line 303
    invoke-direct {p0, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-direct {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    .line 287
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 288
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    .line 308
    invoke-direct {p0, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 0

    .line 85
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    return p0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 8

    if-eqz p1, :cond_8

    .line 313
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/e$b;->ImageFilterView:[I

    .line 314
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 316
    sget v1, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_altSrc:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 319
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 320
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_crossfade:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 321
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    goto :goto_1

    .line 322
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_warmth:I

    if-ne v4, v5, :cond_1

    .line 323
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setWarmth(F)V

    goto :goto_1

    .line 324
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_saturation:I

    if-ne v4, v5, :cond_2

    .line 325
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setSaturation(F)V

    goto :goto_1

    .line 326
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_contrast:I

    if-ne v4, v5, :cond_3

    .line 327
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setContrast(F)V

    goto :goto_1

    .line 328
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_round:I

    const/16 v7, 0x15

    if-ne v4, v5, :cond_4

    .line 329
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_6

    .line 330
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    goto :goto_1

    .line 332
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_roundPercent:I

    if-ne v4, v5, :cond_5

    .line 333
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_6

    .line 334
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    goto :goto_1

    .line 336
    :cond_5
    sget v5, Landroidx/constraintlayout/widget/e$b;->ImageFilterView_overlay:I

    if-ne v4, v5, :cond_6

    .line 337
    iget-boolean v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1361
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_8

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 343
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->c:[Landroid/graphics/drawable/Drawable;

    .line 344
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v2

    .line 345
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    aput-object v1, p1, v0

    .line 347
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->c:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->d:Landroid/graphics/drawable/LayerDrawable;

    .line 348
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 349
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void
.end method

.method static synthetic b(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 0

    .line 85
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 599
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 605
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public setBrightness(F)V
    .locals 1

    .line 456
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->d:F

    .line 457
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setContrast(F)V
    .locals 1

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->f:F

    .line 392
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCrossfade(F)V
    .locals 3

    .line 429
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    .line 430
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->c:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 431
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->f:Z

    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->d:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->d:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->g:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 435
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setRound(F)V
    .locals 5

    .line 528
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    .line 530
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 531
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    .line 532
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    return-void

    .line 535
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 536
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_6

    .line 539
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    if-nez p1, :cond_2

    .line 540
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    .line 542
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    .line 543
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    .line 545
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_5

    .line 546
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_4

    .line 547
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a:Landroid/view/ViewOutlineProvider;

    .line 555
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 557
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 559
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result p1

    .line 560
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v1

    .line 561
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v4, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 563
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->i:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 565
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    .line 566
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 570
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_8

    .line 571
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :cond_8
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 6

    .line 477
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 478
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_5

    .line 480
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 481
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    .line 483
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    if-nez p1, :cond_2

    .line 484
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    .line 486
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 487
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_3

    .line 488
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->a:Landroid/view/ViewOutlineProvider;

    .line 497
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 499
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 502
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result p1

    .line 503
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v1

    .line 504
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->h:F

    mul-float v2, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 505
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v5, v4, v4, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 506
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 507
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->j:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->b:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 509
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    .line 510
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 514
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    .line 515
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :cond_7
    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 372
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->e:F

    .line 373
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setWarmth(F)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->g:F

    .line 411
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->e:Landroidx/constraintlayout/utils/widget/ImageFilterView$a;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.class public final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Z

.field private C:Z

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Paint;

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:[I

.field private K:Z

.field private final L:Landroid/text/TextPaint;

.field private final M:Landroid/text/TextPaint;

.field private N:Landroid/animation/TimeInterpolator;

.field private O:Landroid/animation/TimeInterpolator;

.field private P:F

.field private Q:F

.field private R:F

.field private S:Landroid/content/res/ColorStateList;

.field private T:F

.field private U:F

.field private V:F

.field private W:Landroid/content/res/ColorStateList;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroid/graphics/Typeface;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/graphics/Typeface;

.field private x:Lcom/google/android/material/n/a;

.field private y:Lcom/google/android/material/n/a;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/a;->a:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/a;->b:Landroid/graphics/Paint;

    .line 65
    sget-object v0, Lcom/google/android/material/internal/a;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/android/material/internal/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    sget-object v0, Lcom/google/android/material/internal/a;->b:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v1, p0, Lcom/google/android/material/internal/a;->i:I

    .line 80
    iput v1, p0, Lcom/google/android/material/internal/a;->j:I

    .line 81
    iput v0, p0, Lcom/google/android/material/internal/a;->k:F

    .line 82
    iput v0, p0, Lcom/google/android/material/internal/a;->l:F

    .line 132
    iput-object p1, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    .line 134
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    .line 135
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/RectF;

    .line 140
    return-void
.end method

.method private static a(FFFLandroid/animation/TimeInterpolator;)F
    .locals 1

    .prologue
    .line 815
    if-eqz p3, :cond_0

    .line 816
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 818
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/a/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 805
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 806
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 807
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 808
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 809
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    .line 810
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private a(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/google/android/material/internal/a;->k:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 236
    iget-object v0, p0, Lcom/google/android/material/internal/a;->v:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    return-void
.end method

.method private static a(FF)Z
    .locals 2

    .prologue
    .line 787
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/material/internal/a;->l:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 241
    iget-object v0, p0, Lcom/google/android/material/internal/a;->u:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 242
    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    iget-object v2, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    .line 626
    invoke-static {v2}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 627
    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Landroidx/core/f/e;->d:Landroidx/core/f/d;

    .line 630
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/f/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 627
    return v0

    :cond_0
    move v0, v1

    .line 626
    goto :goto_0

    .line 627
    :cond_1
    sget-object v0, Landroidx/core/f/e;->c:Landroidx/core/f/d;

    goto :goto_1
.end method

.method private c(Landroid/content/res/ColorStateList;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    if-nez p1, :cond_0

    .line 490
    :goto_0
    return v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->J:[I

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/google/android/material/internal/a;->J:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method private c(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 446
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(F)V

    .line 447
    iget v0, p0, Lcom/google/android/material/internal/a;->q:F

    iget v1, p0, Lcom/google/android/material/internal/a;->r:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->s:F

    .line 448
    iget v0, p0, Lcom/google/android/material/internal/a;->o:F

    iget v1, p0, Lcom/google/android/material/internal/a;->p:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->t:F

    .line 450
    iget v0, p0, Lcom/google/android/material/internal/a;->k:F

    iget v1, p0, Lcom/google/android/material/internal/a;->l:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 451
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->e(F)V

    .line 453
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    .line 457
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->k()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->g()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v1

    .line 456
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->T:F

    iget v2, p0, Lcom/google/android/material/internal/a;->P:F

    .line 463
    invoke-static {v1, v2, p1, v5}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/a;->U:F

    iget v3, p0, Lcom/google/android/material/internal/a;->Q:F

    .line 464
    invoke-static {v2, v3, p1, v5}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/internal/a;->V:F

    iget v4, p0, Lcom/google/android/material/internal/a;->R:F

    .line 465
    invoke-static {v3, v4, p1, v5}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/a;->W:Landroid/content/res/ColorStateList;

    .line 467
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/a;->S:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 466
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v4

    .line 462
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 469
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 470
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Typeface;)Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    invoke-virtual {v0}, Lcom/google/android/material/n/a;->a()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->u:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 369
    iput-object p1, p0, Lcom/google/android/material/internal/a;->u:Landroid/graphics/Typeface;

    .line 370
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(F)V
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 572
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 573
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/a;->o:F

    iget v2, p0, Lcom/google/android/material/internal/a;->p:F

    iget-object v3, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 574
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 575
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 576
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 577
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 578
    return-void
.end method

.method private d(Landroid/graphics/Typeface;)Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Lcom/google/android/material/n/a;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Lcom/google/android/material/n/a;

    invoke-virtual {v0}, Lcom/google/android/material/n/a;->a()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->v:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 383
    iput-object p1, p0, Lcom/google/android/material/internal/a;->v:Landroid/graphics/Typeface;

    .line 384
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(F)V
    .locals 2

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->f(F)V

    .line 637
    sget-boolean v0, Lcom/google/android/material/internal/a;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/a;->H:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->C:Z

    .line 639
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->C:Z

    if-eqz v0, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->m()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 645
    return-void

    .line 637
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(F)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    .line 654
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    .line 660
    iget v0, p0, Lcom/google/android/material/internal/a;->l:F

    invoke-static {p1, v0}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 661
    iget v3, p0, Lcom/google/android/material/internal/a;->l:F

    .line 662
    iput v8, p0, Lcom/google/android/material/internal/a;->H:F

    .line 663
    iget-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/google/android/material/internal/a;->u:Landroid/graphics/Typeface;

    if-eq v0, v5, :cond_b

    .line 664
    iget-object v0, p0, Lcom/google/android/material/internal/a;->u:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    move v0, v1

    .line 698
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 699
    iget v5, p0, Lcom/google/android/material/internal/a;->I:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->K:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_8

    :cond_2
    move v0, v1

    .line 700
    :goto_2
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F

    .line 701
    iput-boolean v2, p0, Lcom/google/android/material/internal/a;->K:Z

    .line 704
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_0

    .line 705
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/a;->I:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 706
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 708
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/a;->H:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 711
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 712
    invoke-static {v0, v1, v4, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iput-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    .line 715
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->B:Z

    goto :goto_0

    .line 669
    :cond_5
    iget v3, p0, Lcom/google/android/material/internal/a;->k:F

    .line 670
    iget-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/google/android/material/internal/a;->v:Landroid/graphics/Typeface;

    if-eq v0, v6, :cond_a

    .line 671
    iget-object v0, p0, Lcom/google/android/material/internal/a;->v:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;

    move v0, v1

    .line 674
    :goto_4
    iget v6, p0, Lcom/google/android/material/internal/a;->k:F

    invoke-static {p1, v6}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 676
    iput v8, p0, Lcom/google/android/material/internal/a;->H:F

    .line 682
    :goto_5
    iget v6, p0, Lcom/google/android/material/internal/a;->l:F

    iget v7, p0, Lcom/google/android/material/internal/a;->k:F

    div-float/2addr v6, v7

    .line 685
    mul-float v7, v5, v6

    .line 687
    cmpl-float v7, v7, v4

    if-lez v7, :cond_7

    .line 691
    div-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    .line 679
    :cond_6
    iget v6, p0, Lcom/google/android/material/internal/a;->k:F

    div-float v6, p1, v6

    iput v6, p0, Lcom/google/android/material/internal/a;->H:F

    goto :goto_5

    :cond_7
    move v4, v5

    .line 694
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 699
    goto :goto_2

    :cond_9
    move v1, v2

    .line 708
    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/material/internal/a;->e:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(F)V

    .line 443
    return-void
.end method

.method private k()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 10

    .prologue
    const v9, 0x800007

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 494
    iget v5, p0, Lcom/google/android/material/internal/a;->I:F

    .line 497
    iget v0, p0, Lcom/google/android/material/internal/a;->l:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->f(F)V

    .line 498
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    .line 499
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 500
    :goto_0
    iget v6, p0, Lcom/google/android/material/internal/a;->j:I

    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->B:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 501
    :goto_1
    invoke-static {v6, v2}, Landroidx/core/h/c;->a(II)I

    move-result v2

    .line 504
    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 513
    iget-object v6, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 514
    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 515
    iget-object v7, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/material/internal/a;->p:F

    .line 518
    :goto_2
    and-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_1

    .line 527
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/internal/a;->r:F

    .line 531
    :goto_3
    iget v0, p0, Lcom/google/android/material/internal/a;->k:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->f(F)V

    .line 532
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 533
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/a;->i:I

    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->B:Z

    if-eqz v2, :cond_3

    .line 534
    :goto_4
    invoke-static {v0, v3}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 537
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_2

    .line 546
    iget-object v2, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 547
    div-float/2addr v2, v8

    iget-object v3, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 548
    iget-object v3, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/internal/a;->o:F

    .line 551
    :goto_5
    and-int/2addr v0, v9

    sparse-switch v0, :sswitch_data_3

    .line 560
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/internal/a;->q:F

    .line 565
    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->n()V

    .line 567
    invoke-direct {p0, v5}, Lcom/google/android/material/internal/a;->e(F)V

    .line 568
    return-void

    :cond_1
    move v0, v1

    .line 499
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 500
    goto/16 :goto_1

    .line 506
    :sswitch_0
    iget-object v6, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/material/internal/a;->p:F

    goto :goto_2

    .line 509
    :sswitch_1
    iget-object v6, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/material/internal/a;->p:F

    goto :goto_2

    .line 520
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v8

    sub-float v0, v2, v0

    iput v0, p0, Lcom/google/android/material/internal/a;->r:F

    goto :goto_3

    .line 523
    :sswitch_3
    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Lcom/google/android/material/internal/a;->r:F

    goto/16 :goto_3

    :cond_3
    move v3, v4

    .line 533
    goto :goto_4

    .line 539
    :sswitch_4
    iget-object v2, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/internal/a;->o:F

    goto :goto_5

    .line 542
    :sswitch_5
    iget-object v2, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/internal/a;->o:F

    goto :goto_5

    .line 553
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/internal/a;->q:F

    goto :goto_6

    .line 556
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/internal/a;->q:F

    goto :goto_6

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 518
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 537
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 551
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 721
    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/a;->c(F)V

    .line 726
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->F:F

    .line 727
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->G:F

    .line 729
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 730
    iget v1, p0, Lcom/google/android/material/internal/a;->G:F

    iget v3, p0, Lcom/google/android/material/internal/a;->F:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 732
    if-lez v0, :cond_0

    if-lez v5, :cond_0

    .line 736
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    .line 738
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 739
    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 741
    iget-object v0, p0, Lcom/google/android/material/internal/a;->E:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->E:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    .line 780
    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Landroid/text/TextPaint;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/material/internal/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 154
    iput p1, p0, Lcom/google/android/material/internal/a;->k:F

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 157
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/android/material/internal/a;->i:I

    if-eq v0, p1, :cond_0

    .line 254
    iput p1, p0, Lcom/google/android/material/internal/a;->i:I

    .line 255
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 257
    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->K:Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->d()V

    .line 186
    :cond_0
    return-void
.end method

.method public a(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 145
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 171
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 583
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z

    if-eqz v0, :cond_2

    .line 584
    iget v4, p0, Lcom/google/android/material/internal/a;->s:F

    .line 585
    iget v5, p0, Lcom/google/android/material/internal/a;->t:F

    .line 587
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 591
    :goto_0
    if-eqz v1, :cond_4

    .line 592
    iget v0, p0, Lcom/google/android/material/internal/a;->F:F

    iget v3, p0, Lcom/google/android/material/internal/a;->H:F

    mul-float/2addr v0, v3

    .line 593
    iget v3, p0, Lcom/google/android/material/internal/a;->G:F

    iget v6, p0, Lcom/google/android/material/internal/a;->H:F

    mul-float/2addr v3, v6

    .line 605
    :goto_1
    if-eqz v1, :cond_0

    .line 606
    add-float/2addr v5, v0

    .line 609
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/a;->H:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 610
    iget v0, p0, Lcom/google/android/material/internal/a;->H:F

    iget v3, p0, Lcom/google/android/material/internal/a;->H:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 613
    :cond_1
    if-eqz v1, :cond_5

    .line 615
    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 621
    :cond_2
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 622
    return-void

    :cond_3
    move v1, v2

    .line 587
    goto :goto_0

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget v3, p0, Lcom/google/android/material/internal/a;->H:F

    mul-float/2addr v0, v3

    .line 596
    iget-object v3, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget v6, p0, Lcom/google/android/material/internal/a;->H:F

    mul-float/2addr v3, v6

    goto :goto_1

    .line 617
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/material/internal/a;->L:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 189
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/internal/a;->a(IIII)V

    .line 190
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 207
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 208
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 209
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 210
    if-nez v1, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result v1

    add-float/2addr v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 211
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 212
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->c(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 345
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 762
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->z:Ljava/lang/CharSequence;

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/a;->A:Ljava/lang/CharSequence;

    .line 765
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->n()V

    .line 766
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 768
    :cond_1
    return-void
.end method

.method public final a([I)Z
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/material/internal/a;->J:[I

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 418
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->a(Landroid/text/TextPaint;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/c/a;->a(FFF)F

    move-result v0

    .line 407
    iget v1, p0, Lcom/google/android/material/internal/a;->e:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 408
    iput v0, p0, Lcom/google/android/material/internal/a;->e:F

    .line 409
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->j()V

    .line 411
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/android/material/internal/a;->j:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Lcom/google/android/material/internal/a;->j:I

    .line 266
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 268
    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->K:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->d()V

    .line 198
    :cond_0
    return-void
.end method

.method public b(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 150
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 175
    iput-object p1, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 178
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 201
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/internal/a;->b(IIII)V

    .line 202
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->c(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 355
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Typeface;)Z

    move-result v1

    .line 356
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 359
    :cond_1
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Landroid/text/TextPaint;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/material/n/d;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/n/d;-><init>(Landroid/content/Context;I)V

    .line 277
    iget-object v1, v0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, v0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    .line 280
    :cond_0
    iget v1, v0, Lcom/google/android/material/n/d;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 281
    iget v1, v0, Lcom/google/android/material/n/d;->a:F

    iput v1, p0, Lcom/google/android/material/internal/a;->l:F

    .line 283
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, v0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/internal/a;->S:Landroid/content/res/ColorStateList;

    .line 286
    :cond_2
    iget v1, v0, Lcom/google/android/material/n/d;->j:F

    iput v1, p0, Lcom/google/android/material/internal/a;->Q:F

    .line 287
    iget v1, v0, Lcom/google/android/material/n/d;->k:F

    iput v1, p0, Lcom/google/android/material/internal/a;->R:F

    .line 288
    iget v1, v0, Lcom/google/android/material/n/d;->l:F

    iput v1, p0, Lcom/google/android/material/internal/a;->P:F

    .line 291
    iget-object v1, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    invoke-virtual {v1}, Lcom/google/android/material/n/a;->a()V

    .line 294
    :cond_3
    new-instance v1, Lcom/google/android/material/n/a;

    new-instance v2, Lcom/google/android/material/internal/a$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/a$1;-><init>(Lcom/google/android/material/internal/a;)V

    .line 302
    invoke-virtual {v0}, Lcom/google/android/material/n/d;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/n/a;-><init>(Lcom/google/android/material/n/a$a;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    .line 303
    iget-object v1, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->y:Lcom/google/android/material/n/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/n/d;->a(Landroid/content/Context;Lcom/google/android/material/n/f;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->h()V

    .line 306
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->g:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/graphics/Rect;

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/content/res/ColorStateList;

    .line 426
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    .line 426
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/google/android/material/internal/a;->e:F

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->l()V

    .line 752
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->j()V

    .line 754
    :cond_0
    return-void
.end method

.method public i()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

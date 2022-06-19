.class public Lc/c/a/b/y/a;
.super Lc/c/a/b/x/h;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/i$b;


# static fields
.field private static final B:I

.field private static final C:I


# instance fields
.field private D:Ljava/lang/CharSequence;

.field private final E:Landroid/content/Context;

.field private final F:Landroid/graphics/Paint$FontMetrics;

.field private final G:Lcom/google/android/material/internal/i;

.field private final H:Landroid/view/View$OnLayoutChangeListener;

.field private final I:Landroid/graphics/Rect;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:F

.field private Q:F

.field private final R:F

.field private S:F

.field private T:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/b/k;->Widget_MaterialComponents_Tooltip:I

    sput v0, Lc/c/a/b/y/a;->B:I

    .line 2
    sget v0, Lc/c/a/b/b;->tooltipStyle:I

    sput v0, Lc/c/a/b/y/a;->C:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/b/x/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lc/c/a/b/y/a;->F:Landroid/graphics/Paint$FontMetrics;

    .line 3
    new-instance p2, Lcom/google/android/material/internal/i;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/i;-><init>(Lcom/google/android/material/internal/i$b;)V

    iput-object p2, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    .line 4
    new-instance p3, Lc/c/a/b/y/a$a;

    invoke-direct {p3, p0}, Lc/c/a/b/y/a$a;-><init>(Lc/c/a/b/y/a;)V

    iput-object p3, p0, Lc/c/a/b/y/a;->H:Landroid/view/View$OnLayoutChangeListener;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    iput p3, p0, Lc/c/a/b/y/a;->P:F

    .line 7
    iput p3, p0, Lc/c/a/b/y/a;->Q:F

    const/high16 p4, 0x3f000000    # 0.5f

    .line 8
    iput p4, p0, Lc/c/a/b/y/a;->R:F

    .line 9
    iput p4, p0, Lc/c/a/b/y/a;->S:F

    .line 10
    iput p3, p0, Lc/c/a/b/y/a;->T:F

    .line 11
    iput-object p1, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 13
    invoke-virtual {p2}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private E0(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 2
    aget v0, v0, v1

    iput v0, p0, Lc/c/a/b/y/a;->O:I

    .line 3
    iget-object v0, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic q0(Lc/c/a/b/y/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/b/y/a;->E0(Landroid/view/View;)V

    return-void
.end method

.method private r0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->M:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->M:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->M:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/c/a/b/y/a;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->M:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private s0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/b/y/a;->F:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2
    iget-object v0, p0, Lc/c/a/b/y/a;->F:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private t0(Landroid/graphics/Rect;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lc/c/a/b/y/a;->s0()F

    move-result v0

    sub-float/2addr p1, v0

    return p1
.end method

.method public static u0(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc/c/a/b/y/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/y/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/b/y/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-direct {v0, p1, p2, p3}, Lc/c/a/b/y/a;->z0(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private v0()Lc/c/a/b/x/f;
    .locals 7

    .line 1
    invoke-direct {p0}, Lc/c/a/b/y/a;->r0()F

    move-result v0

    neg-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lc/c/a/b/y/a;->N:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    new-instance v1, Lc/c/a/b/x/j;

    new-instance v2, Lc/c/a/b/x/g;

    iget v3, p0, Lc/c/a/b/y/a;->N:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Lc/c/a/b/x/g;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lc/c/a/b/x/j;-><init>(Lc/c/a/b/x/f;F)V

    return-object v1
.end method

.method private x0(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->D:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lc/c/a/b/y/a;->t0(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget-object v2, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v2}, Lcom/google/android/material/internal/i;->d()Lc/c/a/b/u/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v2}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    iget-object v2, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    iget-object v3, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/i;->j(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v2}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lc/c/a/b/y/a;->T:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 8
    :cond_1
    iget-object v5, p0, Lc/c/a/b/y/a;->D:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private y0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->D:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/i;->f(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private z0(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    sget-object v2, Lc/c/a/b/l;->Tooltip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lc/c/a/b/d;->mtrl_tooltip_arrowSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lc/c/a/b/y/a;->N:I

    .line 4
    invoke-virtual {p0}, Lc/c/a/b/x/h;->D()Lc/c/a/b/x/m;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/b/x/m;->v()Lc/c/a/b/x/m$b;

    move-result-object p2

    invoke-direct {p0}, Lc/c/a/b/y/a;->v0()Lc/c/a/b/x/f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc/c/a/b/x/m$b;->s(Lc/c/a/b/x/f;)Lc/c/a/b/x/m$b;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/b/x/m$b;->m()Lc/c/a/b/x/m;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lc/c/a/b/x/h;->setShapeAppearanceModel(Lc/c/a/b/x/m;)V

    .line 6
    sget p2, Lc/c/a/b/l;->Tooltip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/c/a/b/y/a;->C0(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    sget p3, Lc/c/a/b/l;->Tooltip_android_textAppearance:I

    .line 8
    invoke-static {p2, p1, p3}, Lc/c/a/b/u/c;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lc/c/a/b/u/d;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p2}, Lc/c/a/b/y/a;->D0(Lc/c/a/b/u/d;)V

    .line 10
    iget-object p2, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    sget p3, Lc/c/a/b/b;->colorOnBackground:I

    const-class v0, Lc/c/a/b/y/a;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p2, p3, v0}, Lc/c/a/b/o/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 13
    iget-object p3, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    const-class v0, Lc/c/a/b/y/a;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1010031

    .line 15
    invoke-static {p3, v1, v0}, Lc/c/a/b/o/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    const/16 v0, 0xe5

    .line 16
    invoke-static {p3, v0}, Lb/h/e/a;->d(II)I

    move-result p3

    const/16 v0, 0x99

    .line 17
    invoke-static {p2, v0}, Lb/h/e/a;->d(II)I

    move-result p2

    .line 18
    invoke-static {p3, p2}, Lc/c/a/b/o/a;->f(II)I

    move-result p2

    .line 19
    sget p3, Lc/c/a/b/l;->Tooltip_backgroundTint:I

    .line 20
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 21
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 22
    invoke-virtual {p0, p2}, Lc/c/a/b/x/h;->a0(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object p2, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    sget p3, Lc/c/a/b/b;->colorSurface:I

    const-class v0, Lc/c/a/b/y/a;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p2, p3, v0}, Lc/c/a/b/o/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 26
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p2}, Lc/c/a/b/x/h;->l0(Landroid/content/res/ColorStateList;)V

    .line 28
    sget p2, Lc/c/a/b/l;->Tooltip_android_padding:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lc/c/a/b/y/a;->J:I

    .line 29
    sget p2, Lc/c/a/b/l;->Tooltip_android_minWidth:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lc/c/a/b/y/a;->K:I

    .line 30
    sget p2, Lc/c/a/b/l;->Tooltip_android_minHeight:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lc/c/a/b/y/a;->L:I

    .line 31
    sget p2, Lc/c/a/b/l;->Tooltip_android_layout_margin:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lc/c/a/b/y/a;->M:I

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public A0(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lc/c/a/b/y/a;->E0(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/y/a;->H:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public B0(F)V
    .locals 3

    const v0, 0x3f99999a    # 1.2f

    .line 1
    iput v0, p0, Lc/c/a/b/y/a;->S:F

    .line 2
    iput p1, p0, Lc/c/a/b/y/a;->P:F

    .line 3
    iput p1, p0, Lc/c/a/b/y/a;->Q:F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e428f5c    # 0.19f

    .line 4
    invoke-static {v0, v1, v2, v1, p1}, Lc/c/a/b/m/a;->b(FFFFF)F

    move-result p1

    iput p1, p0, Lc/c/a/b/y/a;->T:F

    .line 5
    invoke-virtual {p0}, Lc/c/a/b/x/h;->invalidateSelf()V

    return-void
.end method

.method public C0(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->D:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lc/c/a/b/y/a;->D:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/i;->i(Z)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/b/x/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public D0(Lc/c/a/b/u/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    iget-object v1, p0, Lc/c/a/b/y/a;->E:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/i;->h(Lc/c/a/b/u/d;Landroid/content/Context;)V

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/x/h;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-direct {p0}, Lc/c/a/b/y/a;->r0()F

    move-result v0

    .line 3
    iget v1, p0, Lc/c/a/b/y/a;->N:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iget v3, p0, Lc/c/a/b/y/a;->N:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    .line 4
    iget v2, p0, Lc/c/a/b/y/a;->P:F

    iget v3, p0, Lc/c/a/b/y/a;->Q:F

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lc/c/a/b/y/a;->S:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 7
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    invoke-super {p0, p1}, Lc/c/a/b/x/h;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-direct {p0, p1}, Lc/c/a/b/y/a;->x0(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/y/a;->G:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lc/c/a/b/y/a;->L:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/b/y/a;->J:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lc/c/a/b/y/a;->y0()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/b/y/a;->K:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/c/a/b/x/h;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/x/h;->D()Lc/c/a/b/x/m;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/x/m;->v()Lc/c/a/b/x/m$b;

    move-result-object p1

    invoke-direct {p0}, Lc/c/a/b/y/a;->v0()Lc/c/a/b/x/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/b/x/m$b;->s(Lc/c/a/b/x/f;)Lc/c/a/b/x/m$b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/x/m$b;->m()Lc/c/a/b/x/m;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/b/x/h;->setShapeAppearanceModel(Lc/c/a/b/x/m;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/b/x/h;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public w0(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc/c/a/b/y/a;->H:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

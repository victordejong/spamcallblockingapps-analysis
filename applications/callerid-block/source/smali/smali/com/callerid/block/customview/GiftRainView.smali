.class public Lcom/callerid/block/customview/GiftRainView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/customview/GiftRainView$c;,
        Lcom/callerid/block/customview/GiftRainView$d;
    }
.end annotation


# static fields
.field public static q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:[I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/customview/GiftRainView$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/graphics/Matrix;

.field private l:Landroid/animation/ValueAnimator;

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/callerid/block/customview/GiftRainView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/callerid/block/customview/GiftRainView;->q:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView;->i:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/callerid/block/customview/GiftRainView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/callerid/block/R$styleable;->DropDownStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->d:I

    const/4 p2, 0x5

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->f:I

    const/4 p2, 0x4

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->h:F

    const/4 p2, 0x3

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->g:F

    const/4 p2, 0x0

    const v0, 0x106000b

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->e:I

    const/4 p2, 0x2

    const/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/GiftRainView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/callerid/block/customview/GiftRainView;->h()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attributes should be provided to this view,"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/callerid/block/customview/GiftRainView;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView;->h:F

    return p0
.end method

.method static synthetic b(Lcom/callerid/block/customview/GiftRainView;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView;->g:F

    return p0
.end method

.method static synthetic c(Lcom/callerid/block/customview/GiftRainView;)J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/customview/GiftRainView;->n:J

    return-wide v0
.end method

.method static synthetic d(Lcom/callerid/block/customview/GiftRainView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/customview/GiftRainView;->n:J

    return-wide p1
.end method

.method static synthetic e(Lcom/callerid/block/customview/GiftRainView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/callerid/block/customview/GiftRainView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/customview/GiftRainView;->o:Z

    return p0
.end method

.method private h()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->l:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget v0, p0, Lcom/callerid/block/customview/GiftRainView;->e:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/callerid/block/customview/GiftRainView;->i()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callerid/block/customview/GiftRainView$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/customview/GiftRainView$a;-><init>(Lcom/callerid/block/customview/GiftRainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callerid/block/customview/GiftRainView$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/customview/GiftRainView$b;-><init>(Lcom/callerid/block/customview/GiftRainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->l:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/callerid/block/customview/GiftRainView;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->p:Lcom/callerid/block/customview/GiftRainView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callerid/block/customview/GiftRainView$c;->a()V

    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/GiftRainView;->b:I

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/GiftRainView$d;

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->c(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->f(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->j(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->c(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->d(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->f(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->g(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->i:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->i:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->e(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {v1}, Lcom/callerid/block/customview/GiftRainView$d;->a(Lcom/callerid/block/customview/GiftRainView$d;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->k:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/callerid/block/customview/GiftRainView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callerid/block/customview/GiftRainView;->m:J

    iput-wide p1, p0, Lcom/callerid/block/customview/GiftRainView;->n:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView;->b:I

    return-void
.end method

.method public setGiftCount(I)V
    .locals 7

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->c:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->n(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/callerid/block/customview/GiftRainView;->c:[I

    rem-int/lit8 v4, v0, 0x4

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/callerid/block/customview/GiftRainView$d;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/callerid/block/customview/GiftRainView;->f:I

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/callerid/block/customview/GiftRainView$d;-><init>(Lcom/callerid/block/customview/GiftRainView;FLandroid/graphics/Bitmap;I)V

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->a(Lcom/callerid/block/customview/GiftRainView$d;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->c(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->f(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callerid/block/customview/GiftRainView$d;->b(Lcom/callerid/block/customview/GiftRainView$d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    sget-object v2, Lcom/callerid/block/customview/GiftRainView;->q:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->c(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->a(Lcom/callerid/block/customview/GiftRainView$d;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/callerid/block/customview/GiftRainView;->q:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView$d;->c(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcom/callerid/block/customview/GiftRainView$d;->b(Lcom/callerid/block/customview/GiftRainView$d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_1
    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public varargs setImages([I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView;->c:[I

    iget p1, p0, Lcom/callerid/block/customview/GiftRainView;->d:I

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/GiftRainView;->setGiftCount(I)V

    return-void
.end method

.method public setSpeed(I)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/GiftRainView$d;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/callerid/block/customview/GiftRainView$d;->p(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

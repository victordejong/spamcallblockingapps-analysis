.class public Lcom/callapp/contacts/widget/MarqueeView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field a:[I

.field b:[F

.field c:[I

.field d:[F

.field private e:Landroid/widget/TextView;

.field private f:Landroid/animation/ObjectAnimator;

.field private g:Landroid/animation/ObjectAnimator;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/view/animation/Interpolator;

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Z

.field private final v:Landroid/animation/Animator$AnimatorListener;

.field private w:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->g:Landroid/animation/ObjectAnimator;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    const/16 v0, 0x3c

    .line 67
    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    const/16 v0, 0x7d0

    .line 69
    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    .line 71
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->q:Z

    .line 73
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    .line 79
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->u:Z

    .line 80
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    .line 115
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->g:Landroid/animation/ObjectAnimator;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    const/16 v0, 0x3c

    .line 67
    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    const/16 v0, 0x7d0

    .line 69
    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    .line 71
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->q:Z

    .line 73
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    .line 79
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->u:Z

    .line 80
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    .line 121
    invoke-direct {p0, p2}, Lcom/callapp/contacts/widget/MarqueeView;->a(Landroid/util/AttributeSet;)V

    .line 122
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->g:Landroid/animation/ObjectAnimator;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    const/16 p3, 0x3c

    .line 67
    iput p3, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    const/16 p3, 0x7d0

    .line 69
    iput p3, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    .line 71
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->q:Z

    .line 73
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p3, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    const/4 p3, 0x1

    .line 75
    iput-boolean p3, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    .line 79
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->u:Z

    .line 80
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    .line 128
    invoke-direct {p0, p2}, Lcom/callapp/contacts/widget/MarqueeView;->a(Landroid/util/AttributeSet;)V

    .line 129
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->b()V

    return-void
.end method

.method private a(Landroid/view/View;FFIII)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "translationX"

    .line 276
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p4

    .line 277
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p2, p6

    .line 278
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 279
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 281
    iget-object p2, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private a(FI)V
    .locals 9

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Ljava/lang/String;)Z

    move-result v7

    .line 289
    iget v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v4, v0

    if-eqz v7, :cond_0

    int-to-float v0, p2

    goto :goto_0

    :cond_0
    neg-float v0, p1

    :goto_0
    move v8, v0

    .line 291
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationX()F

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/MarqueeView;->a(Landroid/view/View;FFIII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    int-to-float v0, p2

    add-float v1, v0, p1

    .line 294
    iget v2, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v4, v1

    if-eqz v7, :cond_1

    neg-float v0, p1

    :cond_1
    move v2, v0

    .line 296
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    const/4 v5, -0x1

    iget v6, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    move-object v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/MarqueeView;->a(Landroid/view/View;FFIII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->g:Landroid/animation/ObjectAnimator;

    .line 297
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->e()V

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    and-int/lit8 v3, p1, -0x1

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, -0x22000001

    and-int/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, 0xffffff

    and-int/2addr p1, v3

    aput p1, v1, v2

    .line 418
    iput-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->a:[I

    new-array p1, v0, [F

    .line 419
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->b:[F

    .line 421
    invoke-static {v1}, Lcom/callapp/contacts/widget/MarqueeView;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->c:[I

    .line 422
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->b:[F

    invoke-static {p1}, Lcom/callapp/contacts/widget/MarqueeView;->a([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->d:[F

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/R$styleable;->asia_ivity_android_marqueeview_MarqueeView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    const/16 v1, 0x3c

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    const/4 v0, 0x3

    const/16 v1, 0x7d0

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->q:Z

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 148
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->i:I

    .line 152
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/MarqueeView;FI)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/MarqueeView;->a(FI)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/MarqueeView;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/MarqueeView;->setTextViewWidthAndPos(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/MarqueeView;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 229
    new-instance v0, Ljava/text/Bidi;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a([F)[F
    .locals 6

    .line 455
    array-length v0, p0

    new-array v0, v0, [F

    .line 456
    array-length v1, p0

    const/4 v2, 0x0

    .line 457
    aget v3, p0, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v1, v2, :cond_0

    .line 460
    aget v3, p0, v1

    aput v3, v0, v1

    :goto_0
    if-ge v2, v1, :cond_0

    sub-int v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 462
    aget v5, p0, v2

    sub-float/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a([I)[I
    .locals 5

    .line 440
    array-length v0, p0

    new-array v0, v0, [I

    .line 441
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v2

    .line 443
    aget v4, p0, v2

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 3

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 162
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    .line 164
    iget v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->n:Z

    .line 165
    iget v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->l:I

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(I)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    if-eqz p1, :cond_0

    .line 236
    new-instance p1, Lcom/callapp/contacts/widget/MarqueeView$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/MarqueeView$1;-><init>(Lcom/callapp/contacts/widget/MarqueeView;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->t:Ljava/lang/Runnable;

    .line 243
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->t:Ljava/lang/Runnable;

    iget v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/MarqueeView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/MarqueeView;)F
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->d()F

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isPowerSaverOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()F
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/MarqueeView;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->c()Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/MarqueeView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/MarqueeView;->u:Z

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/MarqueeView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->u:Z

    return v0
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/widget/MarqueeView;->w:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 348
    new-instance v0, Lcom/callapp/contacts/widget/MarqueeView$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/MarqueeView$3;-><init>(Lcom/callapp/contacts/widget/MarqueeView;)V

    return-object v0
.end method

.method static synthetic h(Lcom/callapp/contacts/widget/MarqueeView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    return p0
.end method

.method private setTextViewWidth(I)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 405
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 406
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 407
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTextViewWidthAndPos(I)V
    .locals 1

    .line 392
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/MarqueeView;->setTextViewWidth(I)V

    .line 395
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setX(F)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->s:Z

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->t:Ljava/lang/Runnable;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->invalidate()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/MarqueeView;->b(Z)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 470
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 472
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->n:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1485
    iget v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->i:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1487
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->i:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 311
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 312
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->e()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView;->f:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView;->v:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 172
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_4

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/MarqueeView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 179
    instance-of p4, p2, Landroid/widget/ScrollView;

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Landroid/widget/ScrollView;

    invoke-virtual {p4}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p5

    if-ne p5, p3, :cond_0

    .line 180
    invoke-virtual {p4, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 183
    :cond_0
    instance-of p2, p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 187
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/MarqueeView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    .line 189
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->d()F

    move-result p2

    .line 191
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredWidth()I

    move-result p4

    int-to-float p5, p4

    cmpl-float p5, p2, p5

    if-lez p5, :cond_1

    const/4 p1, 0x1

    .line 192
    :cond_1
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->m:Z

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->e:Landroid/widget/TextView;

    float-to-int p5, p2

    .line 1326
    invoke-direct {p0, p5}, Lcom/callapp/contacts/widget/MarqueeView;->setTextViewWidthAndPos(I)V

    .line 1328
    new-instance p5, Lcom/callapp/contacts/widget/MarqueeView$2;

    invoke-direct {p5, p0}, Lcom/callapp/contacts/widget/MarqueeView$2;-><init>(Lcom/callapp/contacts/widget/MarqueeView;)V

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    invoke-direct {p0}, Lcom/callapp/contacts/widget/MarqueeView;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->q:Z

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MarqueeView;->a()V

    .line 197
    invoke-direct {p0, p2, p4}, Lcom/callapp/contacts/widget/MarqueeView;->a(FI)V

    .line 198
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/MarqueeView;->a(Z)V

    goto :goto_0

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The child view of this MarqueeView must be a TextView instance."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    .line 173
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MarqueeView must have exactly one child element."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 1426
    iget-boolean p2, p0, Lcom/callapp/contacts/widget/MarqueeView;->n:Z

    if-eqz p2, :cond_0

    .line 1427
    iget-object p2, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1429
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p4, p0, Lcom/callapp/contacts/widget/MarqueeView;->i:I

    int-to-float v3, p4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/callapp/contacts/widget/MarqueeView;->a:[I

    iget-object v6, p0, Lcom/callapp/contacts/widget/MarqueeView;->b:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1430
    iget-object p4, p0, Lcom/callapp/contacts/widget/MarqueeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1433
    iget-object p2, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1434
    new-instance p2, Landroid/graphics/LinearGradient;

    iget p3, p0, Lcom/callapp/contacts/widget/MarqueeView;->i:I

    sub-int p3, p1, p3

    int-to-float v1, p3

    int-to-float v3, p1

    iget-object v5, p0, Lcom/callapp/contacts/widget/MarqueeView;->c:[I

    iget-object v6, p0, Lcom/callapp/contacts/widget/MarqueeView;->d:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1435
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFirstTextOutAnimListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->w:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->r:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setPauseBetweenAnimations(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->p:I

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/callapp/contacts/widget/MarqueeView;->o:I

    return-void
.end method

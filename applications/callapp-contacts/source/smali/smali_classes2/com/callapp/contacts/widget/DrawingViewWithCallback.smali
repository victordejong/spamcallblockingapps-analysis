.class public Lcom/callapp/contacts/widget/DrawingViewWithCallback;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:[Landroid/animation/ValueAnimator;

.field public b:Landroid/view/View;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/widget/ImageView;

.field private h:I

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/graphics/Paint;

.field private k:F

.field private final l:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 32
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    .line 33
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    iput-object v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v1, v0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 32
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    .line 33
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    iput-object v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 32
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    .line 33
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 191
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    neg-float p4, p4

    float-to-double v0, p4

    mul-double v0, v0, p1

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 192
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method private synthetic a(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 169
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    iget v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    sub-float/2addr v1, p1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    return-void
.end method

.method private a(FLandroid/graphics/Bitmap;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 116
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060244

    invoke-static {v2, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, p2, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 197
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    neg-float v1, v1

    iget v2, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    .line 198
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    neg-float p1, p1

    iget v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 60
    sget-object v1, Lcom/callapp/contacts/R$styleable;->DrawingViewWithCallback:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    if-nez p3, :cond_0

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    .line 64
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_1

    :cond_0
    if-ne p3, v0, :cond_1

    .line 66
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    .line 67
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->j:Landroid/graphics/Paint;

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->j:Landroid/graphics/Paint;

    const/16 v1, 0x66

    const v3, 0x7f060244

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/ColorUtils;->a(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x3

    new-array v1, p3, [Landroid/animation/ValueAnimator;

    .line 71
    iput-object v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    aput v5, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    .line 74
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    mul-int/lit16 v4, v1, 0x12c

    add-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    const-wide/16 v4, 0x4b0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    new-instance v4, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$zsBLUWWHE7ndzq5O9BY3i7oVvM0;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$zsBLUWWHE7ndzq5O9BY3i7oVvM0;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    .line 81
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 85
    :cond_3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    .line 86
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 1225
    iput v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 1226
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1227
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method private static b(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 212
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 214
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 215
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v4, -0x1

    .line 216
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p0, v6

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v6

    invoke-virtual {v1, v4, v5, p0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 219
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private synthetic b(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 163
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-double v0, p4

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 164
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method private synthetic c(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 0

    double-to-float p1, p1

    .line 136
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 137
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    .line 138
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$5340I_8LdmcM5PN1-y62I6o8rNk(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$9_1Lu9vwadc7aST2X-TBSMfzjEw(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$LxVYPQwc2LF8ZATETTen0IJI0aQ(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$RE7dhPf0Ia1_biJ_9WIfFICO9yc(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c(DLandroid/graphics/Bitmap;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$RqDViWLMrALxrkPde9md6ZxDysY(Lcom/callapp/contacts/widget/DrawingViewWithCallback;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$zsBLUWWHE7ndzq5O9BY3i7oVvM0(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final a(IIDLandroid/graphics/Bitmap;)V
    .locals 2

    int-to-float p1, p1

    .line 127
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    int-to-float p1, p2

    .line 128
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    .line 129
    iget p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    if-nez p1, :cond_0

    double-to-float p1, p3

    .line 130
    invoke-direct {p0, p1, p5}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 132
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RE7dhPf0Ia1_biJ_9WIfFICO9yc;

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RE7dhPf0Ia1_biJ_9WIfFICO9yc;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(IIDLandroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 2

    int-to-float p1, p1

    .line 145
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    int-to-float p1, p2

    .line 146
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 147
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;

    invoke-direct {p2, p0, p6}, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    iget p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    if-nez p1, :cond_0

    double-to-float p1, p3

    .line 161
    invoke-direct {p0, p1, p5}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    .line 162
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$5340I_8LdmcM5PN1-y62I6o8rNk;

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$5340I_8LdmcM5PN1-y62I6o8rNk;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 168
    iget p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    .line 169
    iget-object p2, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(IIFLandroid/graphics/Bitmap;)V
    .locals 0

    int-to-float p1, p1

    .line 102
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    int-to-float p1, p2

    .line 103
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    .line 104
    iget p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    if-nez p1, :cond_0

    .line 105
    iput p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    .line 106
    invoke-direct {p0, p3, p4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 108
    iput p3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->invalidate()V

    return-void
.end method

.method public final b(IIDLandroid/graphics/Bitmap;)V
    .locals 2

    int-to-float p1, p1

    .line 176
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    int-to-float p1, p2

    .line 177
    iput p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 178
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/DrawingViewWithCallback$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/DrawingViewWithCallback$2;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 188
    iget p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    if-nez p1, :cond_0

    double-to-float p1, p3

    .line 189
    invoke-direct {p0, p1, p5}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(FLandroid/graphics/Bitmap;)V

    .line 190
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$9_1Lu9vwadc7aST2X-TBSMfzjEw;

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$9_1Lu9vwadc7aST2X-TBSMfzjEw;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;DLandroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 196
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$LxVYPQwc2LF8ZATETTen0IJI0aQ;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$LxVYPQwc2LF8ZATETTen0IJI0aQ;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 239
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 241
    iget v1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    iget v2, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 244
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    iget v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    iget v4, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->d:F

    iget-object v5, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    :cond_1
    iget v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->k:F

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 251
    iget v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->e:F

    iget v4, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->f:F

    iget-object v5, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 256
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    const v4, 0x7f060244

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v3, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    sub-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    iget-object v5, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 263
    iget-object v6, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    iget-object v5, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 265
    iget-object v6, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->l:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 267
    :goto_1
    iget-object v7, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    return-void
.end method

.method public setCoverImageView(Landroid/widget/ImageView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->g:Landroid/widget/ImageView;

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

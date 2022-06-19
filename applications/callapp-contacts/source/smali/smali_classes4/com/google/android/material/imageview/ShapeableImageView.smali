.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/imageview/ShapeableImageView$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/android/material/k/n;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Path;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Lcom/google/android/material/k/h;

.field private j:Lcom/google/android/material/k/m;

.field private k:F

.field private l:Landroid/graphics/Path;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_ShapeableImageView:I

    sput v0, Lcom/google/android/material/imageview/ShapeableImageView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 96
    sget v0, Lcom/google/android/material/imageview/ShapeableImageView;->a:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1083
    sget-object p1, Lcom/google/android/material/k/n$a;->a:Lcom/google/android/material/k/n;

    .line 65
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->b:Lcom/google/android/material/k/n;

    .line 70
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:Z

    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->f:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, -0x1

    .line 102
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->c:Landroid/graphics/RectF;

    .line 105
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->d:Landroid/graphics/RectF;

    .line 106
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    .line 107
    sget-object v2, Lcom/google/android/material/a$l;->ShapeableImageView:[I

    .line 108
    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 111
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_strokeColor:I

    .line 112
    invoke-static {v1, v2, v4}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/content/res/ColorStateList;

    .line 115
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_strokeWidth:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:F

    .line 118
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_contentPadding:I

    .line 119
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 120
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    .line 121
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    .line 122
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    .line 123
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    .line 126
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingLeft:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    .line 128
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingTop:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    .line 130
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingRight:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    .line 132
    sget v4, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingBottom:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    .line 136
    sget p1, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingStart:I

    const/high16 v4, -0x80000000

    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    .line 138
    sget p1, Lcom/google/android/material/a$l;->ShapeableImageView_contentPaddingEnd:I

    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 141
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->e:Landroid/graphics/Paint;

    .line 144
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    invoke-static {v1, p2, p3, v0}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/k/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Lcom/google/android/material/k/m;

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 149
    new-instance p1, Lcom/google/android/material/imageview/ShapeableImageView$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/imageview/ShapeableImageView$a;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/k/h;)Lcom/google/android/material/k/h;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Lcom/google/android/material/k/h;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/m;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Lcom/google/android/material/k/m;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->c:Landroid/graphics/RectF;

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 479
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->b:Lcom/google/android/material/k/n;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Lcom/google/android/material/k/m;

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 483
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 484
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->d:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 487
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->d:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 262
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()I
    .locals 2

    .line 283
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/h;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Lcom/google/android/material/k/h;

    return-object p0
.end method

.method private c()I
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    if-eq v0, v1, :cond_0

    return v0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    if-eq v0, v1, :cond_1

    return v0

    .line 305
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method private d()I
    .locals 2

    .line 315
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    if-eq v0, v1, :cond_0

    return v0

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    if-eq v0, v1, :cond_1

    return v0

    .line 323
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    return v0
.end method

.method private e()I
    .locals 2

    .line 334
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    return v0
.end method

.method private f()Z
    .locals 2

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 2

    .line 401
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v0

    .line 5272
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .line 412
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    .line 423
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .line 434
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .line 445
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->e()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .line 456
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v0

    .line 5348
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 198
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1491
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1496
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/content/res/ColorStateList;

    .line 1497
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1499
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1501
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 167
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 168
    iget-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:Z

    if-eqz p1, :cond_0

    return-void

    .line 172
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isLayoutDirectionResolved()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:Z

    .line 180
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isPaddingRelative()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result p1

    .line 183
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result p2

    .line 184
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v0

    .line 185
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v1

    .line 181
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    return-void

    .line 190
    :cond_3
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result p1

    .line 191
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result p2

    .line 192
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v0

    .line 193
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v1

    .line 189
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->a(II)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 5

    const/high16 v0, -0x80000000

    .line 219
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:I

    .line 220
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 225
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 226
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 227
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 228
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 224
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    .line 230
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    .line 231
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    .line 232
    iput p3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    .line 233
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    return-void
.end method

.method public setContentPaddingRelative(IIII)V
    .locals 5

    .line 250
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->e()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 251
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 252
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->b()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 253
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 249
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    .line 255
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:I

    .line 256
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    .line 257
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:I

    .line 258
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->c()I

    move-result v0

    add-int/2addr p1, v0

    .line 2348
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    add-int/2addr p2, v0

    .line 370
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()I

    move-result v0

    add-int/2addr p3, v0

    .line 3272
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    add-int/2addr p4, v0

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->e()I

    move-result v0

    add-int/2addr p1, v0

    .line 3348
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:I

    add-int/2addr p2, v0

    .line 389
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->b()I

    move-result v0

    add-int/2addr p3, v0

    .line 4272
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:I

    add-int/2addr p4, v0

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 1

    .line 461
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Lcom/google/android/material/k/m;

    .line 462
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->a(II)V

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    .line 467
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/content/res/ColorStateList;

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 540
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 541
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:F

    .line 542
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    return-void
.end method

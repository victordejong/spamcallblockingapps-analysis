.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionButton$e;,
        Lcom/github/clans/fab/FloatingActionButton$f;,
        Lcom/github/clans/fab/FloatingActionButton$d;
    }
.end annotation


# static fields
.field public static final W:Landroid/graphics/Xfermode;


# instance fields
.field public A:Z

.field public B:Landroid/graphics/RectF;

.field public C:Landroid/graphics/Paint;

.field public D:Landroid/graphics/Paint;

.field public E:Z

.field public F:J

.field public G:F

.field public H:J

.field public I:D

.field public J:Z

.field public K:I

.field public L:F

.field public M:F

.field public N:F

.field public O:I

.field public P:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Landroid/view/GestureDetector;

.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:I

.field public m:Landroid/view/animation/Animation;

.field public n:Landroid/view/animation/Animation;

.field public o:Ljava/lang/String;

.field public p:Landroid/view/View$OnClickListener;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:F

    .line 8
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Landroid/graphics/RectF;

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/Paint;

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    const/high16 v1, 0x43430000    # 195.0f

    .line 12
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    const-wide/16 v3, 0x0

    .line 13
    iput-wide v3, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 14
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Z

    const/16 v1, 0x10

    .line 15
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->K:I

    const/16 v3, 0x64

    .line 16
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 17
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/github/clans/fab/FloatingActionButton$b;

    invoke-direct {v5, p0}, Lcom/github/clans/fab/FloatingActionButton$b;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Landroid/view/GestureDetector;

    .line 18
    sget-object v3, Lj4/w0;->K:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    const v3, -0x25bcca

    .line 19
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    const/16 p2, 0xa

    const v3, -0x18afbd

    .line 20
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    const/16 p2, 0x8

    const v3, -0x555556

    .line 21
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    const/16 p2, 0xb

    const v3, -0x66000001

    .line 22
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    const/16 p2, 0x1a

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    const/16 p2, 0x15

    const/high16 v3, 0x66000000

    .line 24
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 25
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    const/16 v3, 0x16

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 26
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    const/16 v3, 0x17

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 27
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    const/16 v3, 0x18

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    const/16 p2, 0x1b

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    const/16 p2, 0xe

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Ljava/lang/String;

    const/16 p2, 0x12

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    const/16 p2, 0x11

    const v3, -0xff6978

    .line 31
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    const/high16 p2, 0x4d000000    # 1.34217728E8f

    .line 32
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 33
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    const/16 v1, 0x13

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    const/16 p2, 0x14

    .line 34
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    const/16 p2, 0xf

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    .line 37
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    :cond_0
    const/16 p2, 0xc

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    :cond_2
    :goto_0
    const/16 p2, 0x19

    const v1, 0x7f010022

    .line 43
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/view/animation/Animation;

    const/16 p2, 0xd

    const v1, 0x7f010021

    .line 45
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 49
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    goto :goto_1

    .line 51
    :cond_3
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    if-eqz p1, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 53
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    invoke-virtual {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->m(IZ)V

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result p0

    return p0
.end method

.method private getCircleSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-nez v1, :cond_0

    const v1, 0x7f0700b3

    goto :goto_0

    :cond_0
    const v1, 0x7f0700b2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShadowX()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getShadowY()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 3
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 3
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final f(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$d;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton$d;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$a;)V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    .line 3
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    .line 4
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v1, [I

    iget v7, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    aput v7, v6, v4

    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$a;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/FloatingActionButton$a;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    .line 8
    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method public getButtonSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    return v0
.end method

.method public getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelView()Lj2/e;
    .locals 1

    const v0, 0x7f09015e

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/e;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lj2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    return v0
.end method

.method public getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    :cond_1
    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public j()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public k()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const v2, 0x101009e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 7
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:Z

    :cond_2
    return-void
.end method

.method public declared-synchronized m(IZ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    .line 3
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:Z

    .line 4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    .line 8
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    .line 9
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 10
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 11
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    if-le p1, v0, :cond_3

    move p1, v0

    :cond_3
    :goto_0
    int-to-float p1, p1

    .line 13
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    if-lez v0, :cond_5

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    if-nez p2, :cond_6

    .line 17
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    .line 3
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()I

    move-result v5

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    int-to-float v0, v5

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->d()I

    move-result v5

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-direct {v2, v4, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Landroid/graphics/RectF;

    return-void
.end method

.method public o(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    :cond_1
    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v0, :cond_9

    .line 3
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    sub-long/2addr v0, v4

    long-to-float v4, v0

    .line 7
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    .line 8
    iget-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    const-wide/16 v7, 0xc8

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    .line 9
    iget-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->I:D

    long-to-double v0, v0

    add-double/2addr v5, v0

    iput-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->I:D

    const-wide v0, 0x407f400000000000L    # 500.0

    cmpl-double v2, v5, v0

    if-lez v2, :cond_1

    sub-double/2addr v5, v0

    .line 10
    iput-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->I:D

    const-wide/16 v5, 0x0

    .line 11
    iput-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 12
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Z

    .line 13
    :cond_1
    iget-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->I:D

    div-double/2addr v5, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 14
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->K:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    .line 15
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Z

    if-eqz v2, :cond_2

    mul-float v0, v0, v1

    .line 16
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:F

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    .line 17
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->L:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 18
    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:F

    goto :goto_0

    :cond_3
    add-long/2addr v5, v0

    .line 19
    iput-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 20
    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    sub-float/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 22
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    .line 23
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->K:I

    int-to-float v1, v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:F

    add-float/2addr v1, v2

    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    const/high16 v1, 0x43070000    # 135.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43070000    # 135.0f

    goto :goto_1

    :cond_5
    move v6, v0

    move v7, v1

    .line 26
    :goto_1
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Landroid/graphics/RectF;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 27
    :cond_6
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 29
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    mul-float v0, v0, v1

    .line 30
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_7

    sub-float/2addr v1, v0

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    goto :goto_2

    :cond_7
    add-float/2addr v1, v0

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 33
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    const/4 v0, 0x1

    .line 34
    :cond_8
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v3, v0

    :goto_3
    if-eqz v3, :cond_9

    .line 35
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V

    :cond_9
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->d()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/github/clans/fab/FloatingActionButton$e;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->a:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 6
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->b:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 7
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    .line 8
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->e:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    .line 9
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->f:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 10
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->g:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 11
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->k:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 12
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->l:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 13
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->d:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    .line 14
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$e;->m:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:Z

    .line 15
    iget-boolean p1, p1, Lcom/github/clans/fab/FloatingActionButton$e;->n:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$e;

    invoke-direct {v1, v0}, Lcom/github/clans/fab/FloatingActionButton$e;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->a:F

    .line 4
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->b:F

    .line 5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    .line 6
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->e:I

    .line 7
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->f:I

    .line 8
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->g:I

    .line 9
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->k:Z

    .line 10
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->l:Z

    .line 11
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->d:I

    .line 12
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->m:Z

    .line 13
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$e;->n:Z

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:Z

    invoke-virtual {p0, v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->m(IZ)V

    .line 7
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    goto :goto_2

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v0, :cond_5

    .line 9
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v0, :cond_4

    .line 10
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:F

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 11
    :goto_0
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_1

    .line 12
    :cond_4
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:F

    .line 13
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 14
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setX(F)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setY(F)V

    .line 16
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    .line 17
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 18
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 19
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/Paint;

    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/Paint;

    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f09015e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/e;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lj2/e;->d()V

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->k()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lj2/e;->d()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->k()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Lcom/github/clans/fab/FloatingActionButton$f;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/github/clans/fab/FloatingActionButton$f;-><init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$a;)V

    aput-object v5, v4, v2

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v4, -0x1

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v5

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    :goto_1
    sub-int/2addr v5, v4

    div-int/2addr v5, v3

    .line 11
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 13
    :cond_4
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v4, :cond_5

    .line 14
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->u:I

    add-int/2addr v6, v4

    add-int/2addr v2, v4

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    :goto_3
    add-int v10, v6, v5

    add-int v11, v2, v5

    move-object v6, v0

    move v8, v10

    move v9, v11

    .line 16
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 17
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonSize(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FabSize constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-eq v0, p1, :cond_2

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_2
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/high16 v0, 0x26000000

    .line 1
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 4
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-nez v2, :cond_0

    move v0, p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Z

    .line 7
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v0, 0x7f09015e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    .line 4
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:J

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lj2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lj2/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lj2/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lj2/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lj2/e;->setHandleVisibilityChanges(Z)V

    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Z

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/View$OnClickListener;

    const p1, 0x7f09015e

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$c;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/FloatingActionButton$c;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/view/animation/Animation;

    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShowShadow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f09015e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

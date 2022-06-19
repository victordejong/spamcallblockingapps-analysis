.class public Lcom/github/clans/fab/Label;
.super Landroid/widget/TextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/Label$c;
    }
.end annotation


# static fields
.field private static final t:Landroid/graphics/Xfermode;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/github/clans/fab/FloatingActionButton;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Z

.field private r:Z

.field s:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/Label;->t:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->g:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->r:Z

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/github/clans/fab/Label$b;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/Label$b;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/github/clans/fab/Label;->s:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->g:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->r:Z

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/github/clans/fab/Label$b;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/Label$b;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/github/clans/fab/Label;->s:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->g:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->r:Z

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/github/clans/fab/Label$b;

    invoke-direct {p3, p0}, Lcom/github/clans/fab/Label$b;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/github/clans/fab/Label;->s:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/github/clans/fab/Label;->n:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic b(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->m:I

    return p0
.end method

.method static synthetic c(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->j:I

    return p0
.end method

.method static synthetic d()Landroid/graphics/Xfermode;
    .locals 1

    sget-object v0, Lcom/github/clans/fab/Label;->t:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic e(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->b:I

    return p0
.end method

.method static synthetic f(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->c:I

    return p0
.end method

.method static synthetic g(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->d:I

    return p0
.end method

.method static synthetic h(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->e:I

    return p0
.end method

.method static synthetic i(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->h:I

    return p0
.end method

.method static synthetic j(Lcom/github/clans/fab/Label;)I
    .locals 0

    iget p0, p0, Lcom/github/clans/fab/Label;->i:I

    return p0
.end method

.method private k()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/Label;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->i:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->m()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private l()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/Label;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->h:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->n()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/github/clans/fab/Label;->k:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->p(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    iget v3, p0, Lcom/github/clans/fab/Label;->j:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->p(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v1, [I

    iget v7, p0, Lcom/github/clans/fab/Label;->l:I

    aput v7, v6, v4

    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/github/clans/fab/Label$a;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/Label$a;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClipToOutline(Z)V

    iput-object v2, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    return-object v2

    :cond_0
    iput-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private p(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/github/clans/fab/Label;->m:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x2

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x3

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x4

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x5

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x6

    aput v3, v1, v4

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/github/clans/fab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setShadow(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->e:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->b:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->c:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->g:Z

    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method m()I
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->b:I

    iget v1, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method n()I
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->b:I

    iget v1, p0, Lcom/github/clans/fab/Label;->c:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->l()I

    move-result p1

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->k()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->n:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->n:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->t()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->n:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->A()V

    :goto_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->s:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method q(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->u()V

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->r:Z

    return v0
.end method

.method s()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method setCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/Label;->m:I

    return-void
.end method

.method setFab(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->n:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0, p1}, Lcom/github/clans/fab/Label;->setShadow(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method

.method setHandleVisibilityChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->r:Z

    return-void
.end method

.method setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    return-void
.end method

.method setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->o:Landroid/view/animation/Animation;

    return-void
.end method

.method setShowShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->g:Z

    return-void
.end method

.method setUsingStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->q:Z

    return-void
.end method

.method t()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method w(III)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/Label;->j:I

    iput p2, p0, Lcom/github/clans/fab/Label;->k:I

    iput p3, p0, Lcom/github/clans/fab/Label;->l:I

    return-void
.end method

.method x(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->v()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method y()V
    .locals 9

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/github/clans/fab/Label$c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/github/clans/fab/Label$c;-><init>(Lcom/github/clans/fab/Label;Lcom/github/clans/fab/Label$a;)V

    aput-object v4, v3, v1

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/github/clans/fab/Label;->b:I

    iget v2, p0, Lcom/github/clans/fab/Label;->c:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v5, v1, v2

    iget v1, p0, Lcom/github/clans/fab/Label;->b:I

    iget v2, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v6, v1, v2

    iget v1, p0, Lcom/github/clans/fab/Label;->b:I

    iget v2, p0, Lcom/github/clans/fab/Label;->c:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v7, v1, v2

    iget v1, p0, Lcom/github/clans/fab/Label;->b:I

    iget v2, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v8, v1, v2

    const/4 v4, 0x1

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;
.source "SourceFile"


# instance fields
.field private final A:F

.field private final B:F

.field private final C:F

.field private final D:F

.field private final E:F

.field private final F:[F

.field private final G:[I

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:[Lcom/skyfishjy/library/RippleBackground;

.field private L:Landroid/animation/ValueAnimator;

.field s:Ljava/lang/Runnable;

.field t:I

.field u:Landroid/os/Handler;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private final z:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    .line 26
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    .line 27
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->w:I

    .line 28
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->x:I

    .line 29
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07016d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->y:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->z:I

    const p1, 0x40b5c28f    # 5.68f

    .line 37
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->A:F

    const/high16 p1, 0x41f60000    # 30.75f

    .line 38
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->B:F

    const p1, 0x425d28f6    # 55.29f

    .line 39
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->C:F

    const p1, 0x429c23d7    # 78.07f

    .line 40
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->D:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 41
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->E:F

    const/4 p1, 0x6

    new-array p2, p1, [F

    .line 43
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->F:[F

    new-array p1, p1, [I

    .line 52
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->G:[I

    .line 64
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->s:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->H:Ljava/lang/Runnable;

    .line 85
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$3;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->I:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 96
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->t:I

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->u:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x40b5c28f    # 5.68f
        0x41f60000    # 30.75f
        0x425d28f6    # 55.29f
        0x429c23d7    # 78.07f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x7f0a0770
        0x7f0a0771
        0x7f0a0772
        0x7f0a0773
        0x7f0a0774
    .end array-data
.end method

.method private a(F)F
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->F:[F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;F)Z
    .locals 1

    .line 8507
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)[Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->K:[Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;F)V
    .locals 3

    .line 9347
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->t:I

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->F:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    .line 9348
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->K:[Lcom/skyfishjy/library/RippleBackground;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 9349
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->u:Landroid/os/Handler;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->s:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9350
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->t:I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isDragging()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager;->getTutorialProgress()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->a(F)F

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 299
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    .line 300
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$11;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$11;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;F)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f()V

    .line 325
    iput v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->t:I

    .line 326
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->J:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->w:I

    return p0
.end method

.method private f()V
    .locals 5

    .line 334
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    :goto_0
    const/4 v1, 0x6

    new-array v2, v1, [Lcom/skyfishjy/library/RippleBackground;

    .line 339
    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->K:[Lcom/skyfishjy/library/RippleBackground;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 342
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->K:[Lcom/skyfishjy/library/RippleBackground;

    iget-object v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->G:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/skyfishjy/library/RippleBackground;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->x:I

    return p0
.end method

.method private g()V
    .locals 4

    const v0, 0x7f0a04b0

    .line 365
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 368
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Lcom/skyfishjy/library/RippleBackground;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private getPositionOfIcon(I)D
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-nez p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 5153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 454
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->x:I

    int-to-double v4, p1

    add-double/2addr v2, v4

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    :goto_0
    int-to-double v4, p1

    div-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 6153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 457
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->J:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic m(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V
    .locals 3

    const v0, 0x7f0a04b0

    .line 9355
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    const v1, 0x3f0ccccd    # 0.55f

    .line 9357
    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->setAlpha(F)V

    const/4 v1, 0x0

    .line 9358
    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

    .line 9359
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 9360
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->H:Ljava/lang/Runnable;

    const-wide/16 v1, 0x578

    invoke-virtual {v0, p0, v1, v2}, Lcom/skyfishjy/library/RippleBackground;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g()V

    .line 416
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 134
    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->w:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$4;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    iput v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->m:I

    .line 155
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$5;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final a(Lcom/facebook/rebound/e;)V
    .locals 11

    .line 424
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Lcom/facebook/rebound/e;)V

    .line 2462
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result p1

    const/4 v0, 0x3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getPositionOfIcon(I)D

    move-result-wide v5

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result p1

    int-to-double v7, p1

    div-double/2addr v7, v1

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->y:I

    int-to-double v9, p1

    sub-double/2addr v7, v9

    cmpg-double p1, v5, v7

    if-ltz p1, :cond_1

    .line 2463
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getPositionOfIcon(I)D

    move-result-wide v5

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result p1

    int-to-double v7, p1

    div-double/2addr v7, v1

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->y:I

    int-to-double v9, p1

    sub-double/2addr v7, v9

    cmpg-double p1, v5, v7

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 2465
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getPositionOfIcon(I)D

    move-result-wide v5

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result p1

    int-to-double v7, p1

    div-double/2addr v7, v1

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->y:I

    int-to-double v9, p1

    add-double/2addr v7, v9

    cmpl-double p1, v5, v7

    if-gtz p1, :cond_4

    .line 2466
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getPositionOfIcon(I)D

    move-result-wide v5

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result p1

    int-to-double v7, p1

    div-double/2addr v7, v1

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->y:I

    int-to-double v1, p1

    add-double/2addr v7, v1

    cmpl-double p1, v5, v7

    if-lez p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->j:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_a

    if-eq p1, v0, :cond_a

    .line 427
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 3217
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->b:D

    double-to-int v0, v0

    .line 428
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 429
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 4153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int v1, v1

    .line 429
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    sub-int/2addr v1, v2

    .line 430
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b(I)V

    .line 431
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    int-to-double v5, v1

    .line 5113
    invoke-virtual {v2, v5, v6, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 435
    :cond_6
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->a(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    int-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    goto :goto_1

    .line 439
    :cond_7
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 440
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b(I)V

    .line 441
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    int-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    :cond_8
    :goto_1
    if-nez p1, :cond_9

    .line 445
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void

    :cond_9
    if-ne p1, v3, :cond_a

    .line 447
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_a
    return-void
.end method

.method public final a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 497
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 498
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->p:Ljava/lang/Boolean;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 502
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 503
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b()V

    return-void
.end method

.method protected final b(I)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 407
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    return-void
.end method

.method public final b(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 565
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(Lcom/facebook/rebound/e;)V

    .line 566
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isDragging()Z

    move-result p1

    if-nez p1, :cond_2

    .line 567
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 571
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 573
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 574
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->d(Z)V

    .line 575
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->I:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c()V

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->j:Z

    .line 515
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 256
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->w:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    .line 257
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$9;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$9;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected final d(Z)V
    .locals 6

    .line 537
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 8153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 538
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 540
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->a(Z)V

    .line 541
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b(Z)V

    .line 545
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getIconResId()I
    .locals 1

    .line 113
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0804e5

    return v0

    :cond_0
    const v0, 0x7f080307

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d01cd

    return v0
.end method

.method public setChatHeadToDefaultPosition(Z)V
    .locals 3

    .line 475
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 476
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 477
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-eq p1, v1, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->setIconOrientation(I)V

    .line 481
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 482
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 485
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->setIconOrientation(I)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->setIconOrientation(I)V

    .line 489
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 490
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void
.end method

.method public setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V
    .locals 5

    .line 520
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v0

    .line 521
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 522
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipRightShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->isTooltipLeftShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 524
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 525
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->c(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 7153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    int-to-double v3, p1

    add-double/2addr v1, v3

    const/4 p1, 0x1

    .line 8113
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void

    .line 528
    :cond_1
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->c(Z)V

    return-void

    .line 530
    :cond_2
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne p1, v0, :cond_3

    .line 531
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->d(Z)V

    :cond_3
    return-void
.end method

.method protected setupLeftTooltipLayout(Z)V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 182
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0d01cc

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a093b

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    const v0, 0x7f0a0703

    .line 185
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->J:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a08a4

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 189
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 190
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 194
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 195
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 1153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 197
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->x:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const/4 v2, 0x1

    .line 2113
    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    const/4 p1, 0x0

    .line 198
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->e(Z)V

    .line 200
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 201
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method protected setupRightTooltipLayout(Z)V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 215
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0d01cc

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a093b

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    const v0, 0x7f0a0703

    .line 217
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->J:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v1, 0x7f0a08a4

    .line 220
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 221
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i:I

    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_0

    .line 224
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->v:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->e(Z)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$7;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

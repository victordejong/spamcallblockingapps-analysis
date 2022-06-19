.class public Lcom/victor/loading/newton/NewtonCradleLoading;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private b:Lcom/victor/loading/newton/CradleBall;

.field private c:Lcom/victor/loading/newton/CradleBall;

.field private d:Lcom/victor/loading/newton/CradleBall;

.field private e:Lcom/victor/loading/newton/CradleBall;

.field private f:Lcom/victor/loading/newton/CradleBall;

.field private g:Z

.field h:Landroid/view/animation/RotateAnimation;

.field i:Landroid/view/animation/RotateAnimation;

.field j:Landroid/view/animation/TranslateAnimation;

.field k:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->g:Z

    invoke-direct {p0, p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->g:Z

    invoke-direct {p0, p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->g:Z

    invoke-direct {p0, p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/victor/loading/newton/NewtonCradleLoading;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/victor/loading/newton/NewtonCradleLoading;)V
    .locals 0

    invoke-direct {p0}, Lcom/victor/loading/newton/NewtonCradleLoading;->k()V

    return-void
.end method

.method static synthetic c(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;
    .locals 0

    iget-object p0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->c:Lcom/victor/loading/newton/CradleBall;

    return-object p0
.end method

.method static synthetic d(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;
    .locals 0

    iget-object p0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->d:Lcom/victor/loading/newton/CradleBall;

    return-object p0
.end method

.method static synthetic e(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;
    .locals 0

    iget-object p0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->e:Lcom/victor/loading/newton/CradleBall;

    return-object p0
.end method

.method static synthetic f(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;
    .locals 0

    iget-object p0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->f:Lcom/victor/loading/newton/CradleBall;

    return-object p0
.end method

.method static synthetic g(Lcom/victor/loading/newton/NewtonCradleLoading;)V
    .locals 0

    invoke-direct {p0}, Lcom/victor/loading/newton/NewtonCradleLoading;->j()V

    return-void
.end method

.method private h()V
    .locals 15

    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3e100000    # -30.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, -0x3fc00000    # -3.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    new-instance v5, Lcom/victor/loading/newton/NewtonCradleLoading$a;

    invoke-direct {v5, p0}, Lcom/victor/loading/newton/NewtonCradleLoading$a;-><init>(Lcom/victor/loading/newton/NewtonCradleLoading;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v1, v5, v6, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->j:Landroid/view/animation/TranslateAnimation;

    new-instance v7, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v7, v6}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, -0x3fc00000    # -3.0f

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    new-instance v1, Lcom/victor/loading/newton/NewtonCradleLoading$b;

    invoke-direct {v1, p0}, Lcom/victor/loading/newton/NewtonCradleLoading$b;-><init>(Lcom/victor/loading/newton/NewtonCradleLoading;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-direct {v0, v5, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/victor/loading/newton/NewtonCradleLoading$c;

    invoke-direct {v1, p0}, Lcom/victor/loading/newton/NewtonCradleLoading$c;-><init>(Lcom/victor/loading/newton/NewtonCradleLoading;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Le/h/a/d;->newton_cradle_loading:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->b:Lcom/victor/loading/newton/CradleBall;

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->c:Lcom/victor/loading/newton/CradleBall;

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->d:Lcom/victor/loading/newton/CradleBall;

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->e:Lcom/victor/loading/newton/CradleBall;

    iget-object v1, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Le/h/a/c;->ball_one:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/newton/CradleBall;

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->b:Lcom/victor/loading/newton/CradleBall;

    sget v0, Le/h/a/c;->ball_two:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/newton/CradleBall;

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->c:Lcom/victor/loading/newton/CradleBall;

    sget v0, Le/h/a/c;->ball_three:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/newton/CradleBall;

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->d:Lcom/victor/loading/newton/CradleBall;

    sget v0, Le/h/a/c;->ball_four:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/newton/CradleBall;

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->e:Lcom/victor/loading/newton/CradleBall;

    sget v0, Le/h/a/c;->ball_five:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/newton/CradleBall;

    iput-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->f:Lcom/victor/loading/newton/CradleBall;

    invoke-direct {p0}, Lcom/victor/loading/newton/NewtonCradleLoading;->h()V

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->b:Lcom/victor/loading/newton/CradleBall;

    invoke-virtual {v0, p1}, Lcom/victor/loading/newton/CradleBall;->setLoadingColor(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->c:Lcom/victor/loading/newton/CradleBall;

    invoke-virtual {v0, p1}, Lcom/victor/loading/newton/CradleBall;->setLoadingColor(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->d:Lcom/victor/loading/newton/CradleBall;

    invoke-virtual {v0, p1}, Lcom/victor/loading/newton/CradleBall;->setLoadingColor(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->e:Lcom/victor/loading/newton/CradleBall;

    invoke-virtual {v0, p1}, Lcom/victor/loading/newton/CradleBall;->setLoadingColor(I)V

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading;->f:Lcom/victor/loading/newton/CradleBall;

    invoke-virtual {v0, p1}, Lcom/victor/loading/newton/CradleBall;->setLoadingColor(I)V

    return-void
.end method

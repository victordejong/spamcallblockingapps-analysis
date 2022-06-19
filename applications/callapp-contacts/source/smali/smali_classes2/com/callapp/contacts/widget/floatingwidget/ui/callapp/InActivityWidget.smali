.class public abstract Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
.source "SourceFile"


# instance fields
.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:I

.field public final i:I

.field protected j:Z

.field public k:Landroid/animation/ValueAnimator;

.field public l:Landroid/animation/ValueAnimator;

.field protected m:I

.field protected n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected o:Landroid/view/View;

.field protected p:Ljava/lang/Boolean;

.field final q:Ljava/lang/Runnable;

.field final r:Ljava/lang/Runnable;

.field private final s:I

.field private t:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    .line 39
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07037d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->h:I

    .line 40
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07037b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->s:I

    .line 41
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07037c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->t:I

    .line 42
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070379

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->i:I

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->j:Z

    .line 56
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    .line 58
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$InActivityWidget$ewG2XBiDXtTDsAGa06n3kalaErk;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$InActivityWidget$ewG2XBiDXtTDsAGa06n3kalaErk;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->q:Ljava/lang/Runnable;

    .line 65
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$InActivityWidget$qqSbko1seH2w8ZanN4q53Ij90TI;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$InActivityWidget$qqSbko1seH2w8ZanN4q53Ij90TI;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->r:Ljava/lang/Runnable;

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->d()V

    .line 89
    new-instance p3, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V

    invoke-interface {p1, p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->setViewAdapter(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getAnimationDelay()J

    move-result-wide p3

    invoke-virtual {p0, p2, p3, p4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->t:I

    return p0
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c(I)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->s:I

    return p0
.end method

.method private synthetic f()V
    .locals 6

    .line 66
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 10153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->i:I

    sub-int/2addr v0, v4

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->i:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 11113
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 73
    :cond_1
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->d(Z)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->j:Z

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x157c

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->j:Z

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$ewG2XBiDXtTDsAGa06n3kalaErk(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g()V

    return-void
.end method

.method public static synthetic lambda$qqSbko1seH2w8ZanN4q53Ij90TI(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 433
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 9153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    .line 434
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    const/4 v3, 0x1

    .line 10113
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_0
    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c(Z)V

    .line 437
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    return-void
.end method

.method protected a(I)V
    .locals 5

    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    .line 168
    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->s:I

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    .line 169
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 170
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->k:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 188
    iput v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->m:I

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-float p1, v2

    .line 410
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->h:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c:F

    .line 7153
    iget-object p1, p2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide p1, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-float p1, p1

    .line 411
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->d:F

    goto :goto_0

    .line 413
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->d(Z)V

    .line 416
    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->j:Z

    return-void
.end method

.method public final a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;FF)V
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c:F

    add-float/2addr v0, p3

    iget-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v0, p3

    iget p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->h:I

    int-to-float p3, p3

    add-float/2addr v0, p3

    float-to-double v0, v0

    const/4 p3, 0x1

    .line 8113
    invoke-virtual {p1, v0, v1, p3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 424
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->d:F

    add-float/2addr p1, p4

    float-to-double v0, p1

    .line 9113
    invoke-virtual {p2, v0, v1, p3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void

    .line 427
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;FF)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->setupRightTooltipLayout(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b()V

    .line 125
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 210
    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 213
    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    .line 1224
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v0, 0x7f0a08a4

    .line 1225
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    const/4 v0, 0x0

    .line 1226
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 1227
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 152
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->setupLeftTooltipLayout(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 374
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->p:Ljava/lang/Boolean;

    .line 375
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(IZ)V

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(IZ)V

    .line 379
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->i:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 5113
    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_1
    return-void
.end method

.method protected c(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f0a0945

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(IZ)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 368
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(IZ)V

    :cond_1
    return-void
.end method

.method protected d(Z)V
    .locals 5

    .line 392
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipLeftShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->isTooltipRightShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 5153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 393
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Z)V

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(Z)V

    :cond_1
    return-void
.end method

.method protected abstract e()Z
.end method

.method protected getAnimationDelay()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getIconOrientation()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method abstract getIconResId()I
.end method

.method protected abstract getLayoutResource()I
.end method

.method public isTooltipLeftShown()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTooltipRightShown()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setIconOrientation(I)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method protected setupLeftTooltipLayout(Z)V
    .locals 5

    .line 326
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0d01c3

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a093b

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    .line 330
    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0578

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0768

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    const v1, 0x7f0a0945

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x5

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f12068c

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const v2, 0x7f0a08a4

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    .line 340
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 341
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 345
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 346
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 347
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->t:I

    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->s:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 348
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 2153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    .line 351
    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->t:I

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->s:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    sub-double/2addr v1, v3

    .line 3113
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 355
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 356
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 357
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->t:I

    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->h:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 358
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 3153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    .line 359
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    .line 4113
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method

.method protected setupRightTooltipLayout(Z)V
    .locals 5

    .line 291
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0d01c3

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a093b

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    .line 295
    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0574

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a076e

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    const v1, 0x7f0a0768

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    const v1, 0x7f0a0945

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f12068c

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v2, 0x7f0a08a4

    .line 304
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 305
    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->i:I

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->h:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 306
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a08a5

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 311
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    const/4 v2, 0x0

    .line 312
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 313
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.class public Lcom/allinone/callerid/customview/e/d;
.super Ljava/lang/Object;
.source "ViewAnimator.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/customview/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/view/View;

.field private i:Lcom/allinone/callerid/customview/e/b;

.field private j:Lcom/allinone/callerid/customview/e/c;

.field private k:Lcom/allinone/callerid/customview/e/d;

.field private l:Lcom/allinone/callerid/customview/e/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->a:Ljava/util/List;

    const-wide/16 v0, 0xbb8

    .line 3
    iput-wide v0, p0, Lcom/allinone/callerid/customview/e/d;->b:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/allinone/callerid/customview/e/d;->c:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/allinone/callerid/customview/e/d;->e:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/allinone/callerid/customview/e/d;->f:I

    .line 8
    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->h:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->k:Lcom/allinone/callerid/customview/e/d;

    .line 10
    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->l:Lcom/allinone/callerid/customview/e/d;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/e/d;->i:Lcom/allinone/callerid/customview/e/b;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/e/d;->j:Lcom/allinone/callerid/customview/e/c;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/e/d;->l:Lcom/allinone/callerid/customview/e/d;

    return-object p0
.end method

.method static synthetic d(Lcom/allinone/callerid/customview/e/d;Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/d;->k:Lcom/allinone/callerid/customview/e/d;

    return-object p1
.end method

.method static synthetic e(Lcom/allinone/callerid/customview/e/d;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/e/d;->g:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/customview/e/d;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/e/d;->h:Landroid/view/View;

    return-object p0
.end method

.method public static varargs h([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/customview/e/d;

    invoke-direct {v0}, Lcom/allinone/callerid/customview/e/d;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/allinone/callerid/customview/e/d;->g([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs g([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/customview/e/a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/customview/e/a;-><init>(Lcom/allinone/callerid/customview/e/d;[Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected i()Landroid/animation/AnimatorSet;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/customview/e/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/e/a;

    .line 3
    invoke-virtual {v2}, Lcom/allinone/callerid/customview/e/a;->b()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lcom/allinone/callerid/customview/e/a;->e()Landroid/view/animation/Interpolator;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 6
    invoke-virtual {v2}, Lcom/allinone/callerid/customview/e/a;->e()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/customview/e/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/e/a;

    .line 9
    invoke-virtual {v2}, Lcom/allinone/callerid/customview/e/a;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/allinone/callerid/customview/e/a;->g()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/customview/e/d;->h:Landroid/view/View;

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 12
    instance-of v3, v2, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 13
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 14
    iget v3, p0, Lcom/allinone/callerid/customview/e/d;->e:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 15
    iget v3, p0, Lcom/allinone/callerid/customview/e/d;->f:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_2

    .line 16
    :cond_5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 17
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 18
    iget-wide v2, p0, Lcom/allinone/callerid/customview/e/d;->b:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 19
    iget-wide v2, p0, Lcom/allinone/callerid/customview/e/d;->c:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/d;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    :cond_6
    new-instance v0, Lcom/allinone/callerid/customview/e/d$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/e/d$a;-><init>(Lcom/allinone/callerid/customview/e/d;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method public j(J)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/customview/e/d;->b:J

    return-object p0
.end method

.method public k(Landroid/view/animation/Interpolator;)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/d;->d:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public l(Lcom/allinone/callerid/customview/e/c;)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/d;->j:Lcom/allinone/callerid/customview/e/c;

    return-object p0
.end method

.method public m(I)Lcom/allinone/callerid/customview/e/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/e/d;->e:I

    return-object p0
.end method

.method public n()Lcom/allinone/callerid/customview/e/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/d;->k:Lcom/allinone/callerid/customview/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/e/d;->i()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/e/d;->g:Landroid/animation/AnimatorSet;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/customview/e/d;->h:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/customview/e/d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/customview/e/d$b;-><init>(Lcom/allinone/callerid/customview/e/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-object p0
.end method

.class final Lit/gmariotti/cardslib/library/view/CardView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lit/gmariotti/cardslib/library/view/CardView;II)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 928
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 930
    new-instance p2, Lit/gmariotti/cardslib/library/view/CardView$a$3;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/view/CardView$a$3;-><init>(Lit/gmariotti/cardslib/library/view/CardView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/CardView$b;)V
    .locals 0

    .line 844
    invoke-static {p0}, Lit/gmariotti/cardslib/library/view/CardView$a;->d(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/CardView$b;)V
    .locals 0

    .line 844
    invoke-static {p0}, Lit/gmariotti/cardslib/library/view/CardView$a;->c(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    return-void
.end method

.method private static c(Lit/gmariotti/cardslib/library/view/CardView$b;)V
    .locals 2

    .line 1820
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 852
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 853
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;

    .line 855
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardView;->j()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardView;->j()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v1

    .line 4820
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    .line 857
    invoke-interface {v0, v1, p0}, Lit/gmariotti/cardslib/library/view/a/a$a;->a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    return-void

    .line 5820
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    const/4 v1, 0x0

    .line 860
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->s:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 862
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->s:Landroid/animation/Animator;

    new-instance v1, Lit/gmariotti/cardslib/library/view/CardView$a$1;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/CardView$a$1;-><init>(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 871
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object p0

    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardView;->s:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 6820
    :cond_2
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 873
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7820
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 874
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p0

    invoke-interface {p0}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    .line 875
    :cond_3
    sget-object p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->a:Ljava/lang/String;

    const-string v0, "Does the card have the ViewToClickToExpand?"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Lit/gmariotti/cardslib/library/view/CardView$b;)V
    .locals 3

    .line 9820
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 886
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10820
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 887
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;

    .line 889
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardView;->j()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardView;->j()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v1

    .line 12820
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    .line 891
    invoke-interface {v0, v1, p0}, Lit/gmariotti/cardslib/library/view/a/a$a;->b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    return-void

    .line 13820
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    .line 894
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 896
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView$b;->a()Lit/gmariotti/cardslib/library/view/CardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lit/gmariotti/cardslib/library/view/CardView$a;->a(Lit/gmariotti/cardslib/library/view/CardView;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 897
    new-instance v1, Lit/gmariotti/cardslib/library/view/CardView$a$2;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/CardView$a$2;-><init>(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 919
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

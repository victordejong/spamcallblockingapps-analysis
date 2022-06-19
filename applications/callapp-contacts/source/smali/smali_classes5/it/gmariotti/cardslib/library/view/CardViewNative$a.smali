.class final Lit/gmariotti/cardslib/library/view/CardViewNative$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lit/gmariotti/cardslib/library/view/CardViewNative;II)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 927
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 929
    new-instance p2, Lit/gmariotti/cardslib/library/view/CardViewNative$a$3;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a$3;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
    .locals 0

    .line 851
    invoke-static {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->d(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
    .locals 0

    .line 851
    invoke-static {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->c(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    return-void
.end method

.method private static c(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getOnExpandListAnimatorListener()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getOnExpandListAnimatorListener()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v1

    .line 1834
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    .line 860
    invoke-interface {v0, v1, p0}, Lit/gmariotti/cardslib/library/view/a/a$a;->a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    return-void

    .line 2834
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    const/4 v1, 0x0

    .line 863
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative;->v:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative;->v:Landroid/animation/Animator;

    new-instance v1, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 874
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object p0

    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->v:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 3834
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 876
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4834
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 877
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p0

    invoke-interface {p0}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    .line 878
    :cond_2
    sget-object p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->e:Ljava/lang/String;

    const-string v0, "Does the card have the ViewToClickToExpand?"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
    .locals 3

    .line 888
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getOnExpandListAnimatorListener()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getOnExpandListAnimatorListener()Lit/gmariotti/cardslib/library/view/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v1

    .line 6834
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    .line 890
    invoke-interface {v0, v1, p0}, Lit/gmariotti/cardslib/library/view/a/a$a;->b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    return-void

    .line 7834
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    .line 893
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 895
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a()Lit/gmariotti/cardslib/library/view/CardViewNative;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->a(Lit/gmariotti/cardslib/library/view/CardViewNative;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 896
    new-instance v1, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 918
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

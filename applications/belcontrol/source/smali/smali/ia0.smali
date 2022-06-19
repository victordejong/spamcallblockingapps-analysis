.class public Lia0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lia0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lia0$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lia0$b;

.field public c:Landroid/animation/Animator;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lga0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lga0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lia0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lia0;->b:Lia0$b;

    iput-object v0, p0, Lia0;->c:Landroid/animation/Animator;

    new-instance v0, Lia0$a;

    invoke-direct {v0, p0}, Lia0$a;-><init>(Lia0;)V

    iput-object v0, p0, Lia0;->e:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, p1}, Lia0;->h(Lga0;)V

    return-void
.end method

.method public static synthetic a(Lia0;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lia0;->c:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic b(Lia0;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lia0;->c:Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public c([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    new-instance v0, Lia0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lia0$b;-><init>([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;Lia0$a;)V

    iget-object p1, p0, Lia0;->e:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lia0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lia0;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lia0;->f()Lga0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lga0;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lia0;->c:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lia0;->c:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-virtual {p0}, Lia0;->f()Lga0;

    move-result-object v0

    iget-object v1, p0, Lia0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lia0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lia0$b;

    iget-object v3, v3, Lia0$b;->b:Landroid/animation/Animator;

    invoke-interface {v0}, Lga0;->getAnimator()Landroid/animation/Animator;

    move-result-object v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lia0;->d:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lia0;->b:Lia0$b;

    iput-object v0, p0, Lia0;->c:Landroid/animation/Animator;

    return-void
.end method

.method public f()Lga0;
    .locals 1

    iget-object v0, p0, Lia0;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lga0;

    :goto_0
    return-object v0
.end method

.method public g([I)V
    .locals 4

    iget-object v0, p0, Lia0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lia0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lia0$b;

    iget-object v3, v2, Lia0$b;->a:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p1, p0, Lia0;->b:Lia0$b;

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lia0;->d()V

    :cond_3
    iput-object v2, p0, Lia0;->b:Lia0$b;

    iget-object p1, p0, Lia0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v2}, Lia0;->i(Lia0$b;)V

    :cond_4
    return-void
.end method

.method public h(Lga0;)V
    .locals 1

    invoke-virtual {p0}, Lia0;->f()Lga0;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lia0;->e()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lia0;->d:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public final i(Lia0$b;)V
    .locals 2

    invoke-virtual {p1}, Lia0$b;->a()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iget-object v1, p1, Lia0$b;->b:Landroid/animation/Animator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p1, Lia0$b;->b:Landroid/animation/Animator;

    iput-object p1, p0, Lia0;->c:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.class public final Landroidx/core/h/y;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/h/y$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Ljava/lang/Runnable;

.field c:I

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Landroidx/core/h/y;->a:Ljava/lang/Runnable;

    .line 30
    iput-object v0, p0, Landroidx/core/h/y;->b:Ljava/lang/Runnable;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/h/y;->c:I

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/core/h/z;)V
    .locals 2

    .prologue
    .line 738
    if-eqz p2, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/core/h/y$1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/core/h/y$1;-><init>(Landroidx/core/h/y;Landroidx/core/h/z;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(F)Landroidx/core/h/y;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 139
    :cond_0
    return-object p0
.end method

.method public a(J)Landroidx/core/h/y;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 124
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroidx/core/h/y;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 255
    :cond_0
    return-object p0
.end method

.method public a(Landroidx/core/h/ab;)Landroidx/core/h/y;
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 774
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 775
    const/4 v1, 0x0

    .line 776
    if-eqz p1, :cond_0

    .line 777
    new-instance v1, Landroidx/core/h/y$2;

    invoke-direct {v1, p0, p1, v0}, Landroidx/core/h/y$2;-><init>(Landroidx/core/h/y;Landroidx/core/h/ab;Landroid/view/View;)V

    .line 784
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 787
    :cond_1
    return-object p0
.end method

.method public a(Landroidx/core/h/z;)Landroidx/core/h/y;
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 727
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 728
    invoke-direct {p0, v0, p1}, Landroidx/core/h/y;->a(Landroid/view/View;Landroidx/core/h/z;)V

    .line 734
    :cond_0
    :goto_0
    return-object p0

    .line 730
    :cond_1
    const/high16 v1, 0x7e000000

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 731
    new-instance v1, Landroidx/core/h/y$a;

    invoke-direct {v1, p0}, Landroidx/core/h/y$a;-><init>(Landroidx/core/h/y;)V

    invoke-direct {p0, v0, v1}, Landroidx/core/h/y;->a(Landroid/view/View;Landroidx/core/h/z;)V

    goto :goto_0
.end method

.method public b(F)Landroidx/core/h/y;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 184
    :cond_0
    return-object p0
.end method

.method public b(J)Landroidx/core/h/y;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 287
    :cond_0
    return-object p0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 465
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroidx/core/h/y;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 645
    :cond_0
    return-void
.end method

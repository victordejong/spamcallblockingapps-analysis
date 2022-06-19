.class public Lpq0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a02a9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public static synthetic a(Lpq0;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method private synthetic c(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lpq0;->h(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method private synthetic e(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p2, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    const/16 p3, 0xc

    invoke-static {p3}, Loe1;->c(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    iget-object p2, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Loq0;

    invoke-direct {p3, p0, p1}, Loq0;-><init>(Lpq0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lpq0$a;

    invoke-direct {v1, p0}, Lpq0$a;-><init>(Lpq0;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public synthetic d(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lpq0;->c(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public synthetic f(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lpq0;->e(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public g(Landroid/view/View$OnClickListener;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lnq0;

    invoke-direct {v2, p0, v0, p1}, Lnq0;-><init>(Lpq0;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x6

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lpq0;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.class final Lcom/google/android/exoplayer2/ui/e$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/e;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/e;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 4034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 5034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 6034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 7034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 8034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 9034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 147
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 1034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    .line 147
    instance-of p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 2034
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$1;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 3034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    .line 148
    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 3411
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3412
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3414
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->c:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3415
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3416
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

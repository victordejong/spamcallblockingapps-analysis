.class final Lcom/google/android/exoplayer2/ui/e$2;
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

    .line 182
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 1034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 2034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 3034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 4034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 5034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 6034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 7034
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 192
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 8034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    .line 194
    instance-of p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 9034
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-nez p1, :cond_5

    .line 195
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$2;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 10034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    .line 195
    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 10386
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10387
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10389
    :cond_4
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->d:Z

    .line 10390
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->c:F

    aput v3, v2, v0

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10391
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10392
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

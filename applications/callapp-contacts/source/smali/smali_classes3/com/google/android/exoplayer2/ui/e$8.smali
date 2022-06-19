.class final Lcom/google/android/exoplayer2/ui/e$8;
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

    .line 317
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 329
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 7034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 8034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 1034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 2034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 3034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 4034
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    .line 322
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 323
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 5034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e$8;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 6034
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method

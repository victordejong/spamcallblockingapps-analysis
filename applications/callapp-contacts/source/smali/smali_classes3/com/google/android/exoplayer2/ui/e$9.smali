.class final Lcom/google/android/exoplayer2/ui/e$9;
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

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$9;->a:Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$9;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 3034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$9;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 4034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$9;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 1034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$9;->a:Lcom/google/android/exoplayer2/ui/e;

    .line 2034
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

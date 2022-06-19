.class final Lcom/google/android/exoplayer2/ui/e$5;
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
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field final synthetic b:Lcom/google/android/exoplayer2/ui/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/e;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/e$5;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    const/4 v0, 0x2

    .line 2034
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    .line 263
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    .line 3034
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ui/e;->l:Z

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    .line 4034
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/e;->h:Ljava/lang/Runnable;

    .line 264
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->post(Ljava/lang/Runnable;)Z

    .line 265
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    const/4 v0, 0x0

    .line 5034
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/ui/e;->l:Z

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$5;->b:Lcom/google/android/exoplayer2/ui/e;

    const/4 v0, 0x3

    .line 1034
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    return-void
.end method

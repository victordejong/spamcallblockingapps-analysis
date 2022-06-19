.class final Lcom/google/android/exoplayer2/ui/e$6;
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

    .line 277
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e$6;->a:Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$6;->a:Lcom/google/android/exoplayer2/ui/e;

    const/4 v0, 0x0

    .line 2034
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e$6;->a:Lcom/google/android/exoplayer2/ui/e;

    const/4 v0, 0x4

    .line 1034
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    return-void
.end method

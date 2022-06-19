.class public Landroidx/transition/ChangeBounds$j;
.super Lt20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lx20;Lx20;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Landroidx/transition/ChangeBounds$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lt20;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$j;->a:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeBounds$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld30;->d(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$j;->a:Z

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/ChangeBounds$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld30;->d(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeBounds$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld30;->d(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeBounds$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ld30;->d(Landroid/view/ViewGroup;Z)V

    return-void
.end method

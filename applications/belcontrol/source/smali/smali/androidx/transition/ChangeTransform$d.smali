.class public Landroidx/transition/ChangeTransform$d;
.super Lt20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Le20;


# direct methods
.method public constructor <init>(Landroid/view/View;Le20;)V
    .locals 0

    invoke-direct {p0}, Lt20;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeTransform$d;->b:Le20;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/view/View;

    invoke-static {p1}, Li20;->b(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/view/View;

    sget v0, Lo20;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/view/View;

    sget v0, Lo20;->parent_matrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->b:Le20;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Le20;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->b:Le20;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le20;->setVisibility(I)V

    return-void
.end method

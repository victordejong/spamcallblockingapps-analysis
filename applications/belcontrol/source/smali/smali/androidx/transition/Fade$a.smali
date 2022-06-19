.class public Landroidx/transition/Fade$a;
.super Lt20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Fade;->b(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/transition/Fade;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Landroidx/transition/Fade$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lt20;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/Fade$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Li30;->h(Landroid/view/View;F)V

    iget-object v0, p0, Landroidx/transition/Fade$a;->a:Landroid/view/View;

    invoke-static {v0}, Li30;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method

.class Landroidx/transition/b0;
.super Landroidx/transition/g0;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/transition/d0;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/g0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static g(Landroid/view/ViewGroup;)Landroidx/transition/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/transition/g0;->e(Landroid/view/View;)Landroidx/transition/g0;

    move-result-object p0

    check-cast p0, Landroidx/transition/b0;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/g0;->a:Landroidx/transition/g0$a;

    invoke-virtual {v0, p1}, Landroidx/transition/g0$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/g0;->a:Landroidx/transition/g0$a;

    invoke-virtual {v0, p1}, Landroidx/transition/g0$a;->g(Landroid/view/View;)V

    return-void
.end method

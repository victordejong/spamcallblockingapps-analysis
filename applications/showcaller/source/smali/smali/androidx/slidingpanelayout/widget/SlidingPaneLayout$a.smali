.class Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Lb/h/l/a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final d:Landroid/graphics/Rect;

.field final synthetic e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lb/h/l/a;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private n(Lb/h/l/f0/c;Lb/h/l/f0/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2, v0}, Lb/h/l/f0/c;->m(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->X(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p2, v0}, Lb/h/l/f0/c;->n(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->Y(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p2}, Lb/h/l/f0/c;->N()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->F0(Z)V

    .line 7
    invoke-virtual {p2}, Lb/h/l/f0/c;->v()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->q0(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2}, Lb/h/l/f0/c;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->c0(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p2}, Lb/h/l/f0/c;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->g0(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lb/h/l/f0/c;->F()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->h0(Z)V

    .line 11
    invoke-virtual {p2}, Lb/h/l/f0/c;->E()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->d0(Z)V

    .line 12
    invoke-virtual {p2}, Lb/h/l/f0/c;->G()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->j0(Z)V

    .line 13
    invoke-virtual {p2}, Lb/h/l/f0/c;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->k0(Z)V

    .line 14
    invoke-virtual {p2}, Lb/h/l/f0/c;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->V(Z)V

    .line 15
    invoke-virtual {p2}, Lb/h/l/f0/c;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->y0(Z)V

    .line 16
    invoke-virtual {p2}, Lb/h/l/f0/c;->I()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->n0(Z)V

    .line 17
    invoke-virtual {p2}, Lb/h/l/f0/c;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/l/f0/c;->a(I)V

    .line 18
    invoke-virtual {p2}, Lb/h/l/f0/c;->t()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/h/l/f0/c;->p0(I)V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/h/l/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Landroid/view/View;Lb/h/l/f0/c;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lb/h/l/f0/c;->Q(Lb/h/l/f0/c;)Lb/h/l/f0/c;

    move-result-object v0

    .line 2
    invoke-super {p0, p1, v0}, Lb/h/l/a;->g(Landroid/view/View;Lb/h/l/f0/c;)V

    .line 3
    invoke-direct {p0, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->n(Lb/h/l/f0/c;Lb/h/l/f0/c;)V

    .line 4
    invoke-virtual {v0}, Lb/h/l/f0/c;->S()V

    .line 5
    const-class v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb/h/l/f0/c;->c0(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2, p1}, Lb/h/l/f0/c;->A0(Landroid/view/View;)V

    .line 7
    invoke-static {p1}, Lb/h/l/w;->J(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    .line 8
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lb/h/l/f0/c;->s0(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 11
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->o(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lb/h/l/w;->B0(Landroid/view/View;I)V

    .line 14
    invoke-virtual {p2, v1}, Lb/h/l/f0/c;->c(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lb/h/l/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

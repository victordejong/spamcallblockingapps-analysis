.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Lqa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lqa;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Lub;Lub;)V
    .locals 1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lub;->m(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lub;->X(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lub;->n(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lub;->Y(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lub;->N()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->F0(Z)V

    invoke-virtual {p2}, Lub;->v()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lub;->r0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lub;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lub;->c0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lub;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lub;->g0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lub;->F()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->i0(Z)V

    invoke-virtual {p2}, Lub;->E()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->d0(Z)V

    invoke-virtual {p2}, Lub;->G()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->k0(Z)V

    invoke-virtual {p2}, Lub;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->l0(Z)V

    invoke-virtual {p2}, Lub;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->V(Z)V

    invoke-virtual {p2}, Lub;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->z0(Z)V

    invoke-virtual {p2}, Lub;->I()Z

    move-result v0

    invoke-virtual {p1, v0}, Lub;->o0(Z)V

    invoke-virtual {p2}, Lub;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lub;->a(I)V

    invoke-virtual {p2}, Lub;->t()I

    move-result p2

    invoke-virtual {p1, p2}, Lub;->q0(I)V

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lqa;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lub;)V
    .locals 3

    invoke-static {p2}, Lub;->Q(Lub;)Lub;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lqa;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lub;)V

    invoke-virtual {p0, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a(Lub;Lub;)V

    invoke-virtual {v0}, Lub;->S()V

    const-class v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lub;->c0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Lub;->B0(Landroid/view/View;)V

    invoke-static {p1}, Ljb;->H(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lub;->t0(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljb;->x0(Landroid/view/View;I)V

    invoke-virtual {p2, v1}, Lub;->c(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lqa;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class Landroidx/drawerlayout/widget/DrawerLayout$b;
.super Ld/h/m/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final d:Landroid/graphics/Rect;

.field final synthetic e:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Ld/h/m/a;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private n(Ld/h/m/c0/c;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ld/h/m/c0/c;->c(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private o(Ld/h/m/c0/c;Ld/h/m/c0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ld/h/m/c0/c;->m(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->X(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ld/h/m/c0/c;->n(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->Y(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->N()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->E0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->v()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->q0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->c0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->g0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->F()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->h0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->E()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->d0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->G()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->j0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->k0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->V(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->y0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->I()Z

    move-result v0

    invoke-virtual {p1, v0}, Ld/h/m/c0/c;->n0(Z)V

    invoke-virtual {p2}, Ld/h/m/c0/c;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ld/h/m/c0/c;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->p()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->t(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->s(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Ld/h/m/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ld/h/m/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Landroid/view/View;Ld/h/m/c0/c;)V
    .locals 3

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Ld/h/m/a;->g(Landroid/view/View;Ld/h/m/c0/c;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ld/h/m/c0/c;->Q(Ld/h/m/c0/c;)Ld/h/m/c0/c;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ld/h/m/a;->g(Landroid/view/View;Ld/h/m/c0/c;)V

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->A0(Landroid/view/View;)V

    invoke-static {p1}, Ld/h/m/t;->H(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Ld/h/m/c0/c;->s0(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout$b;->o(Ld/h/m/c0/c;Ld/h/m/c0/c;)V

    invoke-virtual {v0}, Ld/h/m/c0/c;->S()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$b;->n(Ld/h/m/c0/c;Landroid/view/ViewGroup;)V

    :goto_0
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->c0(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->j0(Z)V

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->k0(Z)V

    sget-object p1, Ld/h/m/c0/c$a;->e:Ld/h/m/c0/c$a;

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->T(Ld/h/m/c0/c$a;)Z

    sget-object p1, Ld/h/m/c0/c$a;->f:Ld/h/m/c0/c$a;

    invoke-virtual {p2, p1}, Ld/h/m/c0/c;->T(Ld/h/m/c0/c$a;)Z

    return-void
.end method

.method public i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ld/h/m/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

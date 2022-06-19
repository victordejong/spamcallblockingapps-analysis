.class public Lv3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx3;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz3;->h(F)V

    return-void
.end method

.method public b(Lx3;)F
    .locals 0

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object p1

    invoke-virtual {p1}, Lz3;->d()F

    move-result p1

    return p1
.end method

.method public c(Lx3;F)V
    .locals 0

    invoke-interface {p1}, Lx3;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public d(Lx3;)F
    .locals 0

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object p1

    invoke-virtual {p1}, Lz3;->c()F

    move-result p1

    return p1
.end method

.method public e(Lx3;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object p1

    invoke-virtual {p1}, Lz3;->b()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public f(Lx3;)F
    .locals 1

    invoke-virtual {p0, p1}, Lv3;->b(Lx3;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public g(Lx3;)V
    .locals 1

    invoke-virtual {p0, p1}, Lv3;->d(Lx3;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lv3;->o(Lx3;F)V

    return-void
.end method

.method public h(Lx3;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Lz3;

    invoke-direct {p2, p3, p4}, Lz3;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, Lx3;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lx3;->f()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lv3;->o(Lx3;F)V

    return-void
.end method

.method public i(Lx3;)F
    .locals 0

    invoke-interface {p1}, Lx3;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public j(Lx3;)V
    .locals 1

    invoke-virtual {p0, p1}, Lv3;->d(Lx3;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lv3;->o(Lx3;F)V

    return-void
.end method

.method public k(Lx3;)V
    .locals 4

    invoke-interface {p1}, Lx3;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lx3;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lv3;->d(Lx3;)F

    move-result v0

    invoke-virtual {p0, p1}, Lv3;->b(Lx3;)F

    move-result v1

    invoke-interface {p1}, Lx3;->e()Z

    move-result v2

    invoke-static {v0, v1, v2}, La4;->c(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Lx3;->e()Z

    move-result v3

    invoke-static {v0, v1, v3}, La4;->d(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Lx3;->setShadowPadding(IIII)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m(Lx3;)F
    .locals 1

    invoke-virtual {p0, p1}, Lv3;->b(Lx3;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public n(Lx3;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz3;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public o(Lx3;F)V
    .locals 3

    invoke-virtual {p0, p1}, Lv3;->p(Lx3;)Lz3;

    move-result-object v0

    invoke-interface {p1}, Lx3;->b()Z

    move-result v1

    invoke-interface {p1}, Lx3;->e()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lz3;->g(FZZ)V

    invoke-virtual {p0, p1}, Lv3;->k(Lx3;)V

    return-void
.end method

.method public final p(Lx3;)Lz3;
    .locals 0

    invoke-interface {p1}, Lx3;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lz3;

    return-object p1
.end method

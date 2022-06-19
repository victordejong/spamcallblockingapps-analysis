.class public abstract Lfc0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lic0;

.field public final b:Landroid/graphics/Rect;

.field public c:Landroid/animation/Animator;

.field public d:Z

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Lic0;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfc0;->a:Lic0;

    iput-object p2, p0, Lfc0;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public static l(Landroid/graphics/Rect;)F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lfc0;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lfc0;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfc0;->c:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public abstract c(Z)Landroid/animation/Animator;
.end method

.method public abstract d()Landroid/animation/Animator;
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfc0;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result p1

    return p1
.end method

.method public abstract f(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lfc0;->h()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lfc0;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfc0;->c:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 0

    invoke-virtual {p0}, Lfc0;->a()V

    invoke-virtual {p0, p1}, Lfc0;->c(Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lfc0;->c:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lfc0;->a()V

    invoke-virtual {p0}, Lfc0;->d()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lfc0;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public k(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Lfc0;->e:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v1, v0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lfc0;->a:Lic0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic0;->D(Z)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lfc0;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-static {v0}, Lfc0;->l(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lfc0;->e:F

    invoke-virtual {p0, v0}, Lfc0;->p(F)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3

    iget-boolean v0, p0, Lfc0;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v0

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lfc0;->p(F)V

    :cond_0
    return-void
.end method

.method public p(F)V
    .locals 0

    return-void
.end method

.method public final q(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc0;->d:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-static {p1}, Lfc0;->l(Landroid/graphics/Rect;)F

    move-result p1

    :goto_0
    iput p1, p0, Lfc0;->e:F

    iput p2, p0, Lfc0;->f:F

    iget p1, p0, Lfc0;->e:F

    invoke-virtual {p0, p1}, Lfc0;->p(F)V

    return-void
.end method

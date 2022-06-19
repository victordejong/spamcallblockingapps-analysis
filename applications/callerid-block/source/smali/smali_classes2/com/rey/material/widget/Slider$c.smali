.class Lcom/rey/material/widget/Slider$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field b:Z

.field c:J

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field final synthetic j:Lcom/rey/material/widget/Slider;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Slider;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/widget/Slider$c;->b:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/rey/material/widget/Slider$c;->g:F

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/widget/Slider$c;->b:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/widget/Slider$c;->c:J

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->j(Lcom/rey/material/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider$c;->f:F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->g(Lcom/rey/material/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider$c;->d:F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->a(Lcom/rey/material/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider$c;->e:F

    iget v0, p0, Lcom/rey/material/widget/Slider$c;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, p0, Lcom/rey/material/widget/Slider$c;->h:F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->l(Lcom/rey/material/widget/Slider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->m(Lcom/rey/material/widget/Slider;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->c(Lcom/rey/material/widget/Slider;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v1}, Lcom/rey/material/widget/Slider;->n(Lcom/rey/material/widget/Slider;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->n(Lcom/rey/material/widget/Slider;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/rey/material/widget/Slider$c;->i:I

    return-void
.end method

.method public d(F)Z
    .locals 5

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->j(Lcom/rey/material/widget/Slider;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput p1, p0, Lcom/rey/material/widget/Slider$c;->g:F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$c;->c()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rey/material/widget/Slider$c;->b:Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1

    :cond_1
    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0, p1}, Lcom/rey/material/widget/Slider;->k(Lcom/rey/material/widget/Slider;F)F

    iget-object p1, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider$c;->b:Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->l(Lcom/rey/material/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v1}, Lcom/rey/material/widget/Slider;->m(Lcom/rey/material/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v1}, Lcom/rey/material/widget/Slider;->o(Lcom/rey/material/widget/Slider;)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-static {v0, v1}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->i(Lcom/rey/material/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/rey/material/widget/Slider$c;->h:F

    :goto_1
    invoke-static {v0, v1}, Lcom/rey/material/widget/Slider;->h(Lcom/rey/material/widget/Slider;F)F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    iget v1, p0, Lcom/rey/material/widget/Slider$c;->g:F

    invoke-static {v0, v1}, Lcom/rey/material/widget/Slider;->k(Lcom/rey/material/widget/Slider;F)F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/widget/Slider$c;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/widget/Slider$c;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->f(Lcom/rey/material/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->l(Lcom/rey/material/widget/Slider;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->m(Lcom/rey/material/widget/Slider;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    iget v4, p0, Lcom/rey/material/widget/Slider$c;->g:F

    iget v5, p0, Lcom/rey/material/widget/Slider$c;->f:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->k(Lcom/rey/material/widget/Slider;F)F

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->i(Lcom/rey/material/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/rey/material/widget/Slider$c;->h:F

    iget v5, p0, Lcom/rey/material/widget/Slider$c;->d:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_1
    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->h(Lcom/rey/material/widget/Slider;F)F

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->n(Lcom/rey/material/widget/Slider;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/rey/material/widget/Slider$c;->i:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->n(Lcom/rey/material/widget/Slider;)I

    move-result v3

    iget-object v4, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v4}, Lcom/rey/material/widget/Slider;->c(Lcom/rey/material/widget/Slider;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/rey/material/widget/Slider$c;->i:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->f(Lcom/rey/material/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v3

    div-float v2, v0, v2

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    iget v4, p0, Lcom/rey/material/widget/Slider$c;->e:F

    sub-float v5, v1, v2

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    iget v4, p0, Lcom/rey/material/widget/Slider$c;->g:F

    iget v5, p0, Lcom/rey/material/widget/Slider$c;->f:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->k(Lcom/rey/material/widget/Slider;F)F

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->i(Lcom/rey/material/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    cmpl-float v2, v0, v3

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->o(Lcom/rey/material/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v0, v3

    mul-float v4, v4, v5

    sub-float v3, v1, v3

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    iget v4, p0, Lcom/rey/material/widget/Slider$c;->g:F

    iget v5, p0, Lcom/rey/material/widget/Slider$c;->f:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->k(Lcom/rey/material/widget/Slider;F)F

    iget-object v3, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v3}, Lcom/rey/material/widget/Slider;->i(Lcom/rey/material/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/rey/material/widget/Slider$c;->h:F

    iget v5, p0, Lcom/rey/material/widget/Slider$c;->d:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_2
    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->h(Lcom/rey/material/widget/Slider;F)F

    float-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-double v7, v2, v4

    if-gez v7, :cond_5

    iget-object v2, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->o(Lcom/rey/material/widget/Slider;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v4}, Lcom/rey/material/widget/Slider;->e(Lcom/rey/material/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v4}, Lcom/rey/material/widget/Slider;->a(Lcom/rey/material/widget/Slider;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_3
    invoke-static {v2, v3}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    goto :goto_4

    :cond_5
    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v7, v2, v4

    if-ltz v7, :cond_6

    iget-object v2, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->o(Lcom/rey/material/widget/Slider;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-static {v4}, Lcom/rey/material/widget/Slider;->e(Lcom/rey/material/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v0, v6

    sub-float/2addr v6, v5

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    goto :goto_3

    :cond_6
    :goto_4
    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$c;->e()V

    :cond_7
    iget-boolean v0, p0, Lcom/rey/material/widget/Slider$c;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$c;->e()V

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/rey/material/widget/Slider$c;->j:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

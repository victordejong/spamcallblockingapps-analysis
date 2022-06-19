.class Lcom/rey/material/widget/Slider$d;
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
    name = "d"
.end annotation


# instance fields
.field b:Z

.field c:J

.field d:F

.field e:I

.field final synthetic f:Lcom/rey/material/widget/Slider;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Slider;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/widget/Slider$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/widget/Slider$d;->c:J

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->a(Lcom/rey/material/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider$d;->d:F

    return-void
.end method

.method public b(I)Z
    .locals 5

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-static {v0}, Lcom/rey/material/widget/Slider;->a(Lcom/rey/material/widget/Slider;)F

    move-result v0

    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput p1, p0, Lcom/rey/material/widget/Slider$d;->e:I

    iget-object p1, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$d;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rey/material/widget/Slider$d;->b:Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1

    :cond_1
    iget-object p1, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    iget v0, p0, Lcom/rey/material/widget/Slider$d;->e:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    iget-object p1, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider$d;->b:Z

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    iget v1, p0, Lcom/rey/material/widget/Slider$d;->e:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/widget/Slider$d;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-static {v1}, Lcom/rey/material/widget/Slider;->c(Lcom/rey/material/widget/Slider;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-static {v2}, Lcom/rey/material/widget/Slider;->f(Lcom/rey/material/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    iget v4, p0, Lcom/rey/material/widget/Slider$d;->e:I

    int-to-float v4, v4

    iget v5, p0, Lcom/rey/material/widget/Slider$d;->d:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/rey/material/widget/Slider;->b(Lcom/rey/material/widget/Slider;F)F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$d;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/rey/material/widget/Slider$d;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider$d;->c()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/Slider$d;->f:Lcom/rey/material/widget/Slider;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

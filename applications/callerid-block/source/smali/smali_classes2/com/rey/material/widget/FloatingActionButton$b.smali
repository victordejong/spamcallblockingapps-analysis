.class Lcom/rey/material/widget/FloatingActionButton$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field b:Z

.field c:J

.field final synthetic d:Lcom/rey/material/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->c:J

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rey/material/widget/FloatingActionButton;->e(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0, p1}, Lcom/rey/material/widget/FloatingActionButton;->b(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {p1}, Lcom/rey/material/widget/FloatingActionButton;->f(Lcom/rey/material/widget/FloatingActionButton;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v1}, Lcom/rey/material/widget/FloatingActionButton;->g(Lcom/rey/material/widget/FloatingActionButton;)Le/g/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Le/g/a/a/d;->c()F

    move-result v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v2}, Lcom/rey/material/widget/FloatingActionButton;->g(Lcom/rey/material/widget/FloatingActionButton;)Le/g/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Le/g/a/a/d;->d()F

    move-result v2

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v3}, Lcom/rey/material/widget/FloatingActionButton;->g(Lcom/rey/material/widget/FloatingActionButton;)Le/g/a/a/d;

    move-result-object v3

    invoke-virtual {v3}, Le/g/a/a/d;->c()F

    move-result v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v4}, Lcom/rey/material/widget/FloatingActionButton;->g(Lcom/rey/material/widget/FloatingActionButton;)Le/g/a/a/d;

    move-result-object v4

    invoke-virtual {v4}, Le/g/a/a/d;->d()F

    move-result v4

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {p1}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton$b;->a()V

    iput-boolean v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->b:Z

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {p1}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {p1}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {p1, v1}, Lcom/rey/material/widget/FloatingActionButton;->e(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->b:Z

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0, v1}, Lcom/rey/material/widget/FloatingActionButton;->e(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/widget/FloatingActionButton$b;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v1}, Lcom/rey/material/widget/FloatingActionButton;->h(Lcom/rey/material/widget/FloatingActionButton;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v2}, Lcom/rey/material/widget/FloatingActionButton;->i(Lcom/rey/material/widget/FloatingActionButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v3}, Lcom/rey/material/widget/FloatingActionButton;->a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-static {v3}, Lcom/rey/material/widget/FloatingActionButton;->c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sub-float v2, v1, v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton$b;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton$b;->c()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton$b;->d:Lcom/rey/material/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

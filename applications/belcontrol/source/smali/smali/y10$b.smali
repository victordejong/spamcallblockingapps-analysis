.class public Ly10$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly10;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly10$c;

.field public final synthetic b:Ly10;


# direct methods
.method public constructor <init>(Ly10;Ly10$c;)V
    .locals 0

    iput-object p1, p0, Ly10$b;->b:Ly10;

    iput-object p2, p0, Ly10$b;->a:Ly10$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Ly10$b;->b:Ly10;

    iget-object v1, p0, Ly10$b;->a:Ly10$c;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Ly10;->b(FLy10$c;Z)V

    iget-object v0, p0, Ly10$b;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->A()V

    iget-object v0, p0, Ly10$b;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->l()V

    iget-object v0, p0, Ly10$b;->b:Ly10;

    iget-boolean v1, v0, Ly10;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ly10;->g:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Ly10$b;->a:Ly10$c;

    invoke-virtual {p1, v1}, Ly10$c;->x(Z)V

    goto :goto_0

    :cond_0
    iget p1, v0, Ly10;->f:F

    add-float/2addr p1, v2

    iput p1, v0, Ly10;->f:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ly10$b;->b:Ly10;

    const/4 v0, 0x0

    iput v0, p1, Ly10;->f:F

    return-void
.end method

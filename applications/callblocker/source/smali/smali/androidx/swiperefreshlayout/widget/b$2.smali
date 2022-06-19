.class Landroidx/swiperefreshlayout/widget/b$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/swiperefreshlayout/widget/b$a;

.field final synthetic b:Landroidx/swiperefreshlayout/widget/b;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/b;Landroidx/swiperefreshlayout/widget/b$a;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/b$2;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 595
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 599
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$2;->a:Landroidx/swiperefreshlayout/widget/b$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/swiperefreshlayout/widget/b;->a(FLandroidx/swiperefreshlayout/widget/b$a;Z)V

    .line 600
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/b$a;->k()V

    .line 601
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/b$a;->c()V

    .line 602
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/b;->b:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iput-boolean v4, v0, Landroidx/swiperefreshlayout/widget/b;->b:Z

    .line 606
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 607
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 608
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 609
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/b$a;->a(Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    iget v1, v1, Landroidx/swiperefreshlayout/widget/b;->a:F

    add-float/2addr v1, v3

    iput v1, v0, Landroidx/swiperefreshlayout/widget/b;->a:F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$2;->b:Landroidx/swiperefreshlayout/widget/b;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/swiperefreshlayout/widget/b;->a:F

    .line 585
    return-void
.end method

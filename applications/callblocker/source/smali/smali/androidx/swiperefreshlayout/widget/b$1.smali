.class Landroidx/swiperefreshlayout/widget/b$1;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 568
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/b$1;->b:Landroidx/swiperefreshlayout/widget/b;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/b$1;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 572
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$1;->b:Landroidx/swiperefreshlayout/widget/b;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$1;->a:Landroidx/swiperefreshlayout/widget/b$a;

    invoke-virtual {v1, v0, v2}, Landroidx/swiperefreshlayout/widget/b;->a(FLandroidx/swiperefreshlayout/widget/b$a;)V

    .line 573
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$1;->b:Landroidx/swiperefreshlayout/widget/b;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$1;->a:Landroidx/swiperefreshlayout/widget/b$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/swiperefreshlayout/widget/b;->a(FLandroidx/swiperefreshlayout/widget/b$a;Z)V

    .line 574
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$1;->b:Landroidx/swiperefreshlayout/widget/b;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/b;->invalidateSelf()V

    .line 575
    return-void
.end method

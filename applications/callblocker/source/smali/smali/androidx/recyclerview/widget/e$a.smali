.class Landroidx/recyclerview/widget/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/e;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/e;)V
    .locals 1

    .prologue
    .line 551
    iput-object p1, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/e$a;->b:Z

    .line 552
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/e$a;->b:Z

    .line 573
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e$a;->b:Z

    if-eqz v0, :cond_0

    .line 558
    iput-boolean v2, p0, Landroidx/recyclerview/widget/e$a;->b:Z

    .line 568
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    iget-object v0, v0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    iput v2, v0, Landroidx/recyclerview/widget/e;->j:I

    .line 563
    iget-object v0, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/e;->a(I)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/recyclerview/widget/e;->j:I

    .line 566
    iget-object v0, p0, Landroidx/recyclerview/widget/e$a;->a:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->a()V

    goto :goto_0
.end method

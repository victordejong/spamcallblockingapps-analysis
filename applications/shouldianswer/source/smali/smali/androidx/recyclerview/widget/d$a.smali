.class Landroidx/recyclerview/widget/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/d;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/d;)V
    .locals 0

    .line 560
    iput-object p1, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 558
    iput-boolean p1, p0, Landroidx/recyclerview/widget/d$a;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 581
    iput-boolean p1, p0, Landroidx/recyclerview/widget/d$a;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 566
    iget-boolean p1, p0, Landroidx/recyclerview/widget/d$a;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 567
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d$a;->b:Z

    return-void

    .line 570
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    iget-object p1, p1, Landroidx/recyclerview/widget/d;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 571
    iget-object p1, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    iput v0, p1, Landroidx/recyclerview/widget/d;->j:I

    .line 572
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/d;->a(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/d$a;->a:Landroidx/recyclerview/widget/d;

    const/4 v0, 0x2

    iput v0, p1, Landroidx/recyclerview/widget/d;->j:I

    .line 575
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d;->a()V

    :goto_0
    return-void
.end method

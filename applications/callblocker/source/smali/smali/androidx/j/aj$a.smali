.class Landroidx/j/aj$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/j/a$a;
.implements Landroidx/j/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Landroid/view/ViewGroup;

.field private final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/j/aj$a;->a:Z

    .line 534
    iput-object p1, p0, Landroidx/j/aj$a;->b:Landroid/view/View;

    .line 535
    iput p2, p0, Landroidx/j/aj$a;->c:I

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/j/aj$a;->d:Landroid/view/ViewGroup;

    .line 537
    iput-boolean p3, p0, Landroidx/j/aj$a;->e:Z

    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/j/aj$a;->a(Z)V

    .line 540
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 604
    iget-boolean v0, p0, Landroidx/j/aj$a;->a:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/j/aj$a;->c:I

    invoke-static {v0, v1}, Landroidx/j/ac;->a(Landroid/view/View;I)V

    .line 607
    iget-object v0, p0, Landroidx/j/aj$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroidx/j/aj$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 612
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/j/aj$a;->a(Z)V

    .line 613
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroidx/j/aj$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/j/aj$a;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/j/aj$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 617
    iput-boolean p1, p0, Landroidx/j/aj$a;->f:Z

    .line 618
    iget-object v0, p0, Landroidx/j/aj$a;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;Z)V

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method public b(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Landroidx/j/aj$a;->a()V

    .line 586
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 587
    return-void
.end method

.method public c(Landroidx/j/m;)V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/j/aj$a;->a(Z)V

    .line 596
    return-void
.end method

.method public d(Landroidx/j/m;)V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/j/aj$a;->a(Z)V

    .line 601
    return-void
.end method

.method public e(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/aj$a;->a:Z

    .line 563
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Landroidx/j/aj$a;->a()V

    .line 576
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 546
    iget-boolean v0, p0, Landroidx/j/aj$a;->a:Z

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/j/aj$a;->c:I

    invoke-static {v0, v1}, Landroidx/j/ac;->a(Landroid/view/View;I)V

    .line 549
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 555
    iget-boolean v0, p0, Landroidx/j/aj$a;->a:Z

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/ac;->a(Landroid/view/View;I)V

    .line 558
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

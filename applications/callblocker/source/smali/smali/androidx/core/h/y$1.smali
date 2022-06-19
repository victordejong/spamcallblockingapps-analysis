.class Landroidx/core/h/y$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/y;->a(Landroid/view/View;Landroidx/core/h/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/z;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/h/y;


# direct methods
.method constructor <init>(Landroidx/core/h/y;Landroidx/core/h/z;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Landroidx/core/h/y$1;->c:Landroidx/core/h/y;

    iput-object p2, p0, Landroidx/core/h/y$1;->a:Landroidx/core/h/z;

    iput-object p3, p0, Landroidx/core/h/y$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Landroidx/core/h/y$1;->a:Landroidx/core/h/z;

    iget-object v1, p0, Landroidx/core/h/y$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/h/z;->c(Landroid/view/View;)V

    .line 743
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Landroidx/core/h/y$1;->a:Landroidx/core/h/z;

    iget-object v1, p0, Landroidx/core/h/y$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/h/z;->b(Landroid/view/View;)V

    .line 748
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Landroidx/core/h/y$1;->a:Landroidx/core/h/z;

    iget-object v1, p0, Landroidx/core/h/y$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/h/z;->a(Landroid/view/View;)V

    .line 753
    return-void
.end method

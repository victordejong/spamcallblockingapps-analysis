.class Landroidx/core/g/y$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/g/y;->a(Landroid/view/View;Landroidx/core/g/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/g/z;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/g/y;


# direct methods
.method constructor <init>(Landroidx/core/g/y;Landroidx/core/g/z;Landroid/view/View;)V
    .locals 0

    .line 739
    iput-object p1, p0, Landroidx/core/g/y$1;->c:Landroidx/core/g/y;

    iput-object p2, p0, Landroidx/core/g/y$1;->a:Landroidx/core/g/z;

    iput-object p3, p0, Landroidx/core/g/y$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 742
    iget-object p1, p0, Landroidx/core/g/y$1;->a:Landroidx/core/g/z;

    iget-object v0, p0, Landroidx/core/g/y$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/g/z;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 747
    iget-object p1, p0, Landroidx/core/g/y$1;->a:Landroidx/core/g/z;

    iget-object v0, p0, Landroidx/core/g/y$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/g/z;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 752
    iget-object p1, p0, Landroidx/core/g/y$1;->a:Landroidx/core/g/z;

    iget-object v0, p0, Landroidx/core/g/y$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/g/z;->a(Landroid/view/View;)V

    return-void
.end method

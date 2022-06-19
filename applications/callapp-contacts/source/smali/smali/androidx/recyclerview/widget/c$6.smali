.class final Landroidx/recyclerview/widget/c$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$v;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Landroidx/recyclerview/widget/c;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/RecyclerView$v;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroidx/recyclerview/widget/c$6;->f:Landroidx/recyclerview/widget/c;

    iput-object p2, p0, Landroidx/recyclerview/widget/c$6;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    iput p3, p0, Landroidx/recyclerview/widget/c$6;->b:I

    iput-object p4, p0, Landroidx/recyclerview/widget/c$6;->c:Landroid/view/View;

    iput p5, p0, Landroidx/recyclerview/widget/c$6;->d:I

    iput-object p6, p0, Landroidx/recyclerview/widget/c$6;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 300
    iget p1, p0, Landroidx/recyclerview/widget/c$6;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/c$6;->d:I

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 310
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->f:Landroidx/recyclerview/widget/c;

    iget-object v0, p0, Landroidx/recyclerview/widget/c$6;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 1292
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 312
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->f:Landroidx/recyclerview/widget/c;

    iget-object p1, p1, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/c$6;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Landroidx/recyclerview/widget/c$6;->f:Landroidx/recyclerview/widget/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/c;->c()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

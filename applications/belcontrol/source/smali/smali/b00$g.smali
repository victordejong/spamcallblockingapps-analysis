.class public Lb00$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb00;->R(Lb00$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb00$i;

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lb00;


# direct methods
.method public constructor <init>(Lb00;Lb00$i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lb00$g;->d:Lb00;

    iput-object p2, p0, Lb00$g;->a:Lb00$i;

    iput-object p3, p0, Lb00$g;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lb00$g;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb00$g;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lb00$g;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lb00$g;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lb00$g;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lb00$g;->d:Lb00;

    iget-object v0, p0, Lb00$g;->a:Lb00$i;

    iget-object v0, v0, Lb00$i;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ln00;->C(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    iget-object p1, p0, Lb00$g;->d:Lb00;

    iget-object p1, p1, Lb00;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lb00$g;->a:Lb00$i;

    iget-object v0, v0, Lb00$i;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb00$g;->d:Lb00;

    invoke-virtual {p1}, Lb00;->V()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb00$g;->d:Lb00;

    iget-object v0, p0, Lb00$g;->a:Lb00$i;

    iget-object v0, v0, Lb00$i;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ln00;->D(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    return-void
.end method

.class public final Lgd$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd;->a(Landroidx/fragment/app/Fragment;Lgd$d;Lud$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Lud$g;

.field public final synthetic e:Lp9;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lud$g;Lp9;)V
    .locals 0

    iput-object p1, p0, Lgd$c;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lgd$c;->b:Landroid/view/View;

    iput-object p3, p0, Lgd$c;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lgd$c;->d:Lud$g;

    iput-object p5, p0, Lgd$c;->e:Lp9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lgd$c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lgd$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lgd$c;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lgd$c;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgd$c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lgd$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lgd$c;->d:Lud$g;

    iget-object v0, p0, Lgd$c;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lgd$c;->e:Lp9;

    invoke-interface {p1, v0, v1}, Lud$g;->a(Landroidx/fragment/app/Fragment;Lp9;)V

    :cond_0
    return-void
.end method

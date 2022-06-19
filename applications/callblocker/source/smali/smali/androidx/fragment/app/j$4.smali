.class Landroidx/fragment/app/j$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/j$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Landroidx/fragment/app/j;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Landroidx/fragment/app/j$4;->d:Landroidx/fragment/app/j;

    iput-object p2, p0, Landroidx/fragment/app/j$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/j$4;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/j$4;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1117
    iget-object v0, p0, Landroidx/fragment/app/j$4;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/j$4;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1120
    iget-object v0, p0, Landroidx/fragment/app/j$4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Landroidx/fragment/app/j$4;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1122
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j$4;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/j$4;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroidx/fragment/app/j$4;->d:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/j$4;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/j$4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->ap()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1125
    :cond_0
    return-void
.end method

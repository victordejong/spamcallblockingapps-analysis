.class public Lj2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj2/c;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lj2/c;->a:Lcom/github/clans/fab/FloatingActionMenu;

    .line 2
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionMenu;->L:Z

    .line 3
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->j:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    goto :goto_3

    :cond_0
    if-nez v1, :cond_7

    .line 5
    iget v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    :cond_2
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 12
    :cond_4
    :goto_1
    iput-boolean v3, p1, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    :goto_2
    if-ltz v1, :cond_6

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 15
    instance-of v6, v5, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 16
    check-cast v5, Lcom/github/clans/fab/FloatingActionButton;

    .line 17
    iget-object v6, p1, Lcom/github/clans/fab/FloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v7, Lj2/d;

    invoke-direct {v7, p1, v5, v0}, Lj2/d;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    iget v5, p1, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    add-int/2addr v4, v5

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 19
    :cond_6
    iget-object v0, p1, Lcom/github/clans/fab/FloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/a;

    invoke-direct {v1, p1}, Lcom/github/clans/fab/a;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/2addr v2, v3

    iget p1, p1, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    mul-int v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    return-void
.end method

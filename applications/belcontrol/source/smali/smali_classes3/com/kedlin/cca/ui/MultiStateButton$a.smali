.class public Lcom/kedlin/cca/ui/MultiStateButton$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/MultiStateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/MultiStateButton;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/MultiStateButton;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->b(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->a(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->c(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->c(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->d(Lcom/kedlin/cca/ui/MultiStateButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/MultiStateButton$b;

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->f(Lcom/kedlin/cca/ui/MultiStateButton;)I

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->d(Lcom/kedlin/cca/ui/MultiStateButton;)I

    move-result v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v2}, Lcom/kedlin/cca/ui/MultiStateButton;->c(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kedlin/cca/ui/MultiStateButton;->e(Lcom/kedlin/cca/ui/MultiStateButton;I)I

    :cond_1
    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->c(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v2}, Lcom/kedlin/cca/ui/MultiStateButton;->d(Lcom/kedlin/cca/ui/MultiStateButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/MultiStateButton$b;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->g(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v5, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->g(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->b(Lcom/kedlin/cca/ui/MultiStateButton$b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->g(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v2}, Lcom/kedlin/cca/ui/MultiStateButton;->g(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton$a;->a:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-static {v0}, Lcom/kedlin/cca/ui/MultiStateButton;->h(Lcom/kedlin/cca/ui/MultiStateButton;)V

    return-void
.end method

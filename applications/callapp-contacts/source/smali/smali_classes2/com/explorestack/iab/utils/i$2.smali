.class final Lcom/explorestack/iab/utils/i$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/i;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/i;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/explorestack/iab/utils/i$2;->a:Lcom/explorestack/iab/utils/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 190
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 195
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 196
    iget-object p1, p0, Lcom/explorestack/iab/utils/i$2;->a:Lcom/explorestack/iab/utils/i;

    iget-object p1, p1, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/explorestack/iab/utils/i$2;->a:Lcom/explorestack/iab/utils/i;

    iget-object p1, p1, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/explorestack/iab/utils/i$2;->a:Lcom/explorestack/iab/utils/i;

    iget-object v0, v0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

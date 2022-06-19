.class Lcom/callapp/contacts/widget/MarqueeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/MarqueeView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/MarqueeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/MarqueeView;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->h(Lcom/callapp/contacts/widget/MarqueeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/MarqueeView;->a()V

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->f(Lcom/callapp/contacts/widget/MarqueeView;)Z

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$3;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->g(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

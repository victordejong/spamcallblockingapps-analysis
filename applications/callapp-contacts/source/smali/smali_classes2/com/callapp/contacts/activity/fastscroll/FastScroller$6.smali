.class Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fastscroll/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 466
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 467
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 459
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 460
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.class Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;
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

    .line 418
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 429
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 430
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 423
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

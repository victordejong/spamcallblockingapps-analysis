.class Lcom/callapp/contacts/activity/base/BaseSwipeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseSwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseSwipeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

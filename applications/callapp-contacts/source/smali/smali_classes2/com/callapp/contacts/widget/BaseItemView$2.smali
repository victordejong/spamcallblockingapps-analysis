.class Lcom/callapp/contacts/widget/BaseItemView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/BaseItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/BaseItemView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/BaseItemView;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$2;->a:Lcom/callapp/contacts/widget/BaseItemView;

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

    .line 330
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$2;->a:Lcom/callapp/contacts/widget/BaseItemView;

    const v0, 0x7f0a0193

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$2;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->a(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$2;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->b(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$2;->a:Lcom/callapp/contacts/widget/BaseItemView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/BaseItemView;->requestDisallowInterceptTouchEvent(Z)V

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

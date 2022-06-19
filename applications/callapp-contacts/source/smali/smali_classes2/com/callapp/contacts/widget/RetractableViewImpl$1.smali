.class Lcom/callapp/contacts/widget/RetractableViewImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/RetractableViewImpl;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/RetractableViewImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/RetractableViewImpl;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl$1;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.class Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/tooltip/ToolTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisappearanceAnimatorListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/tooltip/ToolTipView;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/util/tooltip/ToolTipView;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;->a:Lcom/callapp/contacts/util/tooltip/ToolTipView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/util/tooltip/ToolTipView;Lcom/callapp/contacts/util/tooltip/ToolTipView$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;-><init>(Lcom/callapp/contacts/util/tooltip/ToolTipView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;->a:Lcom/callapp/contacts/util/tooltip/ToolTipView;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;->a:Lcom/callapp/contacts/util/tooltip/ToolTipView;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;->a:Lcom/callapp/contacts/util/tooltip/ToolTipView;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
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

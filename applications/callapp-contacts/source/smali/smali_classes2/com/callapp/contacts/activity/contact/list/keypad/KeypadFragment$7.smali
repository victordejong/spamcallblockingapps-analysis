.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 440
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 420
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setVisibility(I)V

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 425
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    :cond_1
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 432
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 433
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    :cond_0
    return-void
.end method

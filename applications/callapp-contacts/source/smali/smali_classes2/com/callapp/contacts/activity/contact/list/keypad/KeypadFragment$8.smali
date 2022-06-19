.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(ZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator$AnimatorListener;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->a:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setVisibility(I)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Z)Z

    .line 503
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2

    .line 504
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Z)Z

    .line 511
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 512
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

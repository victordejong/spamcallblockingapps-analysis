.class Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

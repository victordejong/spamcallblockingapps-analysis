.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 233
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

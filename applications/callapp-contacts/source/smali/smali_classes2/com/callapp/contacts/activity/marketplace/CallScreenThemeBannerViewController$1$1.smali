.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;Z)Z

    .line 80
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->getListener()Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;->onCloseCallScreenThemeBannerClicked()V

    :cond_0
    return-void
.end method

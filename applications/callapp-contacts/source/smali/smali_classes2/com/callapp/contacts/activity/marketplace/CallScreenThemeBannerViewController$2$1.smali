.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "Call Screen Theme"

    const-string v2, "Get It Now Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;Z)Z

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->getListener()Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;->onGetItNowCallScreenThemeBannerClicked()V

    :cond_0
    return-void
.end method

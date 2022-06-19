.class Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->c:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 144
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->c:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->c:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->isShowingLoyaltyGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v0, "Contact List"

    const-string v1, "Bottom bar button clicked:Marketplace"

    .line 147
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eA:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->c:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->a:Landroid/content/Context;

    const-class v6, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;)V

    const-string v4, "Contact List"

    const-string v5, "Bottom bar button clicked:Marketplace"

    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V

    .line 163
    :cond_1
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1200ef

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

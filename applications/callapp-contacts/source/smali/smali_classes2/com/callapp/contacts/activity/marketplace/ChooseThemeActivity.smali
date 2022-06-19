.class public Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;
.super Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d002a

    return v0
.end method

.method public getNewFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 37
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;-><init>()V

    .line 38
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->setAdditionalAnimatorsListener(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    .line 77
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getLastChosenThemeSku()Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->b:Z

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->isLightTheme()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 79
    :cond_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onBackPressed()V

    return-void

    .line 83
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v4, "Change theme from %s to %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Settings"

    const-string v5, "Clicked"

    invoke-virtual {v2, v4, v3, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V

    invoke-direct {v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1201dc

    .line 61
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getThemeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a:Ljava/lang/String;

    .line 64
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->b:Z

    .line 66
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Choose Theme Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 115
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Choose Theme Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onDestroy()V

    return-void
.end method

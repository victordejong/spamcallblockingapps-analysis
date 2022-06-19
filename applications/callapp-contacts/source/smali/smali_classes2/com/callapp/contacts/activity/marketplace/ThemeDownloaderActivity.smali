.class public Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 65
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 55
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "RETURN_TO_PREVIOUS_CLASS"

    .line 58
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 1072
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    .line 185
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->setDefaultTheme(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)V

    .line 187
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "THEMES_FRAGMENT"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    const v1, 0x7f0a0432

    .line 189
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    :cond_0
    return-void
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 1

    .line 197
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store Themes screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    .line 81
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->setAdditionalAnimatorsListener(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;)V

    .line 160
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->setThemeChangeEventsListener(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 178
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Store Themes screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onDestroy()V

    return-void
.end method

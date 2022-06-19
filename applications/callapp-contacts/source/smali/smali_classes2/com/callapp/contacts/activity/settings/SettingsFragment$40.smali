.class Lcom/callapp/contacts/activity/settings/SettingsFragment$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    .line 1647
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 1650
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Settings"

    const-string v2, "Send purchases"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1654
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 1655
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$40;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p1, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    const/4 p1, 0x0

    return p1
.end method

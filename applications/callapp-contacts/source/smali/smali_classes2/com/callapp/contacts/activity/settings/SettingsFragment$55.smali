.class Lcom/callapp/contacts/activity/settings/SettingsFragment$55;
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

    .line 2033
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$55;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 2036
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$55;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$55;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;-><init>(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;)V

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    return p1
.end method

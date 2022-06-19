.class Lcom/callapp/contacts/activity/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic d:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->d:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 235
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->d:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-static {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    goto :goto_0

    .line 240
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, p2, :cond_1

    .line 241
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.class Lcom/callapp/contacts/activity/settings/SettingsFragment$6;
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

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;->c:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 303
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 305
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 306
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

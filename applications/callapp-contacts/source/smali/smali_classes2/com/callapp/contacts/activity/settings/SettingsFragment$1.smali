.class Lcom/callapp/contacts/activity/settings/SettingsFragment$1;
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

    .line 219
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;->c:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 222
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->c()V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 225
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

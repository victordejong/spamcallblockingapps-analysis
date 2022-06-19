.class Lcom/callapp/contacts/activity/settings/SettingsFragment$23;
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

.field final synthetic b:Landroid/preference/CheckBoxPreference;

.field final synthetic c:Landroid/preference/CheckBoxPreference;

.field final synthetic d:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic e:Landroid/preference/PreferenceCategory;

.field final synthetic f:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/bluetooth/BluetoothAdapter;Landroid/preference/PreferenceCategory;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->f:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->b:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->c:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->d:Landroid/bluetooth/BluetoothAdapter;

    iput-object p6, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->e:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 1184
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1185
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->b:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1186
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return p2

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->f:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->b:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->c:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;->e:Landroid/preference/PreferenceCategory;

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/bluetooth/BluetoothAdapter;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    return p2
.end method

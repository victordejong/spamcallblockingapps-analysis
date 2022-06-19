.class Lcom/callapp/contacts/activity/settings/SettingsFragment$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic c:Landroid/preference/CheckBoxPreference;

.field final synthetic d:Landroid/preference/CheckBoxPreference;

.field final synthetic e:Landroid/preference/PreferenceCategory;

.field final synthetic f:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;ZLcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->f:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->c:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->d:Landroid/preference/CheckBoxPreference;

    iput-object p6, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->e:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1243
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->a:Z

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->f:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->c:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->d:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 1247
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1248
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

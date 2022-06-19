.class Lcom/callapp/contacts/activity/settings/SettingsFragment$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


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

.field final synthetic d:Landroid/preference/PreferenceCategory;

.field final synthetic e:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->e:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->b:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->c:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->d:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 1202
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->e:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->b:Landroid/preference/CheckBoxPreference;

    iget-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->d:Landroid/preference/PreferenceCategory;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    return-void

    .line 1204
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 1205
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1206
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1207
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1202c6

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 2111
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

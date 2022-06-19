.class Lcom/callapp/contacts/activity/settings/SettingsFragment$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;


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

.field final synthetic d:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->d:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->b:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->c:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1226
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

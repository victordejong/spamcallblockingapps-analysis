.class Lcom/callapp/contacts/activity/settings/SettingsFragment$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
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

    .line 1254
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->e:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->b:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->c:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->d:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1257
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->e:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->b:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;->c:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    return-void
.end method

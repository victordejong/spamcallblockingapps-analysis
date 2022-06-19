.class Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment$30;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$30;)V
    .locals 0

    .line 1306
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 1

    .line 1309
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1310
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1312
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$30;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "recorder_format_title"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 1313
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$30;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->a:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

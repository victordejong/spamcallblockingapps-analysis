.class Lcom/callapp/contacts/activity/settings/SettingsFragment$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Landroid/preference/SwitchPreference;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;)V
    .locals 0

    .line 1935
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->c:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->a:Landroid/preference/SwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->b:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1941
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1943
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1944
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/4 p1, 0x0

    .line 1950
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1951
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 1952
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1953
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$52;Ljava/util/Calendar;)V

    invoke-direct {p1, v1, v0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;-><init>(Ljava/util/Calendar;Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;)V

    .line 1976
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setAllowToggleState(Z)V

    .line 1977
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setDialogTitleText(Ljava/lang/String;)V

    const v0, 0x7f1202b4

    .line 1978
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setNegativeBtnText(Ljava/lang/String;)V

    .line 1980
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->c:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return p2
.end method

.class Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$52;Ljava/util/Calendar;)V
    .locals 0

    .line 1953
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1969
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 1970
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->a:Landroid/preference/SwitchPreference;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V

    .line 1971
    sget-object v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    .line 1972
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->b:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1957
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->a:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1958
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->a:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1959
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1960
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 1961
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->a:Landroid/preference/SwitchPreference;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V

    .line 1962
    sget-object v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    .line 1963
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Settings"

    const-string v1, "Birthday reminder"

    invoke-virtual {v0, p2, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$52$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;->b:Landroid/preference/SwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

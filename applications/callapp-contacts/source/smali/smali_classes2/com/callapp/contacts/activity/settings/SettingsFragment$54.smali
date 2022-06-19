.class Lcom/callapp/contacts/activity/settings/SettingsFragment$54;
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
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    .line 2020
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$54;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 2023
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2024
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "enable"

    goto :goto_0

    :cond_0
    const-string p1, "disable"

    .line 2025
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "ViewProfile"

    const-string v1, "ViewProfileNotificationChange"

    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$54;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Lcom/callapp/contacts/activity/settings/SettingsFragment;)Landroid/preference/SwitchPreference;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/SwitchPreference;)V

    const/4 p1, 0x1

    return p1
.end method

.class Lcom/callapp/contacts/activity/settings/SettingsFragment$16;
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

    .line 973
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$16;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 976
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 977
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v4, v1

    const/4 p2, 0x0

    new-array v6, p2, [Ljava/lang/String;

    const-string v1, "Settings"

    const-string v2, "Default call screen"

    const-string v3, "hasPhoneRang"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 980
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 981
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$16;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "forcePhoneToRing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    xor-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return p2
.end method

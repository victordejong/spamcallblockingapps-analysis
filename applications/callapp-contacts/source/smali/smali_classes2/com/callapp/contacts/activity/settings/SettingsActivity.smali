.class public Lcom/callapp/contacts/activity/settings/SettingsActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01bb

    return v0
.end method

.method protected getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance p1, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;

    invoke-static {}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->get()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;-><init>(Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;)V

    return-object p1

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    .line 3260
    iget-object v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 3261
    iget-object v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 3262
    iput-object v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12061e

    .line 48
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_HIDE_CALL_RECORDER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    :cond_0
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsActivity;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "com.callapp.contacts.debug.DebugSettingsFragment"

    .line 56
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v1, p1, Lcom/callapp/contacts/activity/settings/SettingsFragment;

    if-eqz v1, :cond_1

    .line 58
    check-cast p1, Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsActivity;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a02aa

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsActivity;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    const-string v3, "SettingsFragment"

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Settings screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 73
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Settings screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3084
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3085
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsActivity;->getSettingsFragment()Lcom/callapp/contacts/activity/settings/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTextNextToSwitchClicked(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsActivity;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getCurrentPreferenceScreen()Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsActivity;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    .line 126
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getCurrentPreferenceScreen()Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f120421

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onThemeChanged()V

    return-void
.end method

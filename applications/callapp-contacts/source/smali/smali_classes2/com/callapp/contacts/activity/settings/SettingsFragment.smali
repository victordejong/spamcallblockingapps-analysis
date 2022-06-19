.class public Lcom/callapp/contacts/activity/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;
.implements Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;


# instance fields
.field protected a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field b:Landroid/app/Dialog;

.field c:I

.field protected d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private e:Z

.field private f:Landroid/preference/Preference;

.field private g:J

.field private h:Landroid/preference/SwitchPreference;

.field private i:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->e:Z

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    const-wide/16 v0, 0x0

    .line 176
    iput-wide v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->g:J

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const-string v0, "pref_screen_key"

    .line 17849
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 17850
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17852
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 17853
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 17854
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 3

    .line 606
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Settings"

    const-string v1, "Delete Account"

    const-string v2, "User cancelled remove account"

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/preference/Preference;)V
    .locals 1

    .line 2270
    instance-of v0, p0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 2271
    move-object v0, p0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2272
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2275
    :cond_0
    instance-of v0, p0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 2276
    move-object v0, p0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 2277
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 2

    .line 21487
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppListPreference;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 21488
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 21490
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/preference/PreferenceScreen;II)V
    .locals 1

    .line 1587
    invoke-static {p2}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1589
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1590
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1591
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/preference/SwitchPreference;)V
    .locals 0

    .line 162
    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/SwitchPreference;)V

    return-void
.end method

.method static synthetic a(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V
    .locals 0

    .line 162
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 8

    .line 1237
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void

    .line 1254
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/settings/SettingsFragment$27;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;Z)V
    .locals 9

    .line 1240
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$26;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;ZLcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v0, v8}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 1

    .line 21746
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$44;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$44;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    .line 21753
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$44;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/bluetooth/BluetoothAdapter;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 8

    .line 20196
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 20197
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20198
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/settings/SettingsFragment$24;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    invoke-static {v0, p1, v7}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 20212
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 6

    .line 20217
    invoke-static {}, Lcom/callapp/contacts/receiver/BluetoothReceiver;->getBluetoothCarDeviceList()Ljava/util/List;

    move-result-object v0

    .line 20218
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 20219
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/settings/SettingsFragment$25;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    sget-object p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->GENERAL:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    invoke-direct {v4, v5, v0, v2, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 20230
    :cond_0
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 20231
    invoke-virtual {p3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 20232
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1202c9

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 21111
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 2

    .line 18361
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18362
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 18363
    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    const/4 p0, 0x1

    .line 18364
    invoke-virtual {p3, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void

    .line 18366
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    .line 18392
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SettingsFragment;Z)V
    .locals 3

    .line 21441
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderAuto"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 21442
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "callRecorderIncomingCallEnabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 21443
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    const-string v2, "callRecorderOutgoingCallEnabled"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 21445
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21446
    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21447
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 21448
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 21449
    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    .line 21451
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21452
    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 398
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$9;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment$9;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2175
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 2177
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$65;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment$65;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 409
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "isInDriveMode"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1103
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "isDefaultPhoneApp"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1104
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "inCallFloatingWidgetEnabled"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1105
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "callFabEnabled"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "forcePhoneToRing"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "requestHorizontalAnsweringOrientation"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1108
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "requestVerticalAnsweringOrientation"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "showCallAppOnIncoming"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1111
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "showCallAppOnOutgoing"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1112
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "fullScreenModeEnabled"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/settings/SettingsFragment$12;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$12;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    const/4 p1, 0x1

    invoke-static {p2, p3, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/SettingsFragment;)Landroid/preference/SwitchPreference;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method private synthetic b(Landroid/app/Activity;)V
    .locals 3

    .line 501
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Settings"

    const-string v1, "Delete Account"

    const-string v2, "User requested to remove account"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120537

    .line 502
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 503
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    .line 504
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 505
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 506
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 507
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 604
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private static b(Landroid/preference/SwitchPreference;)V
    .locals 1

    .line 2071
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f1206e3

    .line 2074
    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    return-void
.end method

.method private static b(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/SwitchPreference;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2007
    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const p1, 0x7f1206e2

    .line 2008
    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2010
    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const v2, 0x7f1200fe

    .line 2011
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v3, v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 2

    .line 19323
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19324
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 19325
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 19326
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    const/4 p0, 0x1

    .line 19327
    invoke-virtual {p3, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void

    .line 19329
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    .line 19356
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/SettingsFragment;Z)V
    .locals 3

    .line 21457
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderManual"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 21458
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "callRecorderIncomingCallEnabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 21459
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    const-string v2, "callRecorderOutgoingCallEnabled"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 21461
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    const/4 p1, 0x1

    .line 21462
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21463
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21464
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 21465
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    .line 21467
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21468
    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 21469
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 21470
    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2191
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2192
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsFragment$66;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment$66;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 414
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic b(Landroid/preference/Preference;)Z
    .locals 12

    .line 493
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v11, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f12028f

    .line 494
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f12028e

    .line 495
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120878

    .line 496
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1204c5

    .line 497
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f060088

    .line 498
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    new-instance v8, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$vYAHl5HgO0LbSHrme-o8gsFmCJk;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$vYAHl5HgO0LbSHrme-o8gsFmCJk;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    sget-object v9, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$CwGk2hISF2BeuYNZfPMK9rJ11hA;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$CwGk2hISF2BeuYNZfPMK9rJ11hA;

    new-instance v10, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;

    invoke-direct {v10}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;-><init>()V

    const/4 v7, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 493
    invoke-virtual {p1, v0, v11}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 608
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Settings"

    const-string v1, "Delete Account"

    const-string v2, "Account deletion notification shown"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic b(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1057
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1058
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1059
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "requestVerticalAnsweringOrientation"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1060
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Widget: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    :cond_0
    const-string v1, "vertical"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Settings"

    const-string v2, "Default call screen"

    invoke-virtual {p1, v1, v2, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/SettingsFragment;)J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->g:J

    return-wide v0
.end method

.method private c()V
    .locals 1

    const-string v0, "general_settings"

    .line 1864
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/SettingsFragment;Z)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Z)V

    return-void
.end method

.method private synthetic c(Landroid/preference/Preference;)Z
    .locals 2

    .line 480
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "settings"

    .line 481
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic c(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1050
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1051
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1052
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "requestHorizontalAnsweringOrientation"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1053
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Widget: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    :cond_0
    const-string v1, "vertical"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Settings"

    const-string v2, "Default call screen"

    invoke-virtual {p1, v1, v2, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/settings/SettingsFragment;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->g:J

    return-wide v0
.end method

.method private d()V
    .locals 1

    const-string v0, "callerid_settings"

    .line 1868
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method private synthetic d(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 989
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 990
    new-instance p2, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1041
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Settings"

    const-string v2, "Gave Permission/ Set Callapp as default call screen"

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    .line 1046
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->g:J

    return v0
.end method

.method private e()V
    .locals 1

    const-string v0, "call_recorder_settings"

    .line 1872
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method private static synthetic e(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 955
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 956
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    if-eqz p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    move-wide v4, p0

    const/4 p0, 0x0

    new-array v6, p0, [Ljava/lang/String;

    const-string v1, "Settings"

    const-string v2, "Default call screen"

    const-string v3, "callFabEnabled "

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private f()V
    .locals 1

    const-string v0, "customize_settings"

    .line 1876
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method private g()V
    .locals 1

    const-string v0, "backup_settings"

    .line 1880
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method private h()V
    .locals 1

    const-string v0, "notifications_settings"

    .line 1884
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "birthdayReminderEnabled"

    .line 1920
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v1, "birthdayReminderSoundEnabled"

    .line 1921
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 1922
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1923
    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/SwitchPreference;Landroid/util/Pair;)V

    .line 1924
    new-instance v2, Lcom/callapp/contacts/activity/settings/SettingsFragment$51;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$51;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1935
    new-instance v2, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$52;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1986
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 1987
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->x:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationManager;->isBirthdayChannelHasSound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1989
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->x:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1991
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$53;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$53;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 1435
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic k()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$2c1I8aCEjhmxAmVqgHA4YbwbdBo(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->j()V

    return-void
.end method

.method public static synthetic lambda$CwGk2hISF2BeuYNZfPMK9rJ11hA(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$FZ0YqyheDXMihjxbUyhIz9rEXG8(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QYPF09GoaeIQ7tiiEwYweDKO_h8(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$RtN8CDiG9MXgfF8B8vn6_5O8V2M(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->e(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$UT8f4AW1ouwCCI114rJwpOJL2Mg(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;Z)V

    return-void
.end method

.method public static synthetic lambda$kmkUIikSDFWynPCRFzu3eAofEno(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lKfXdV6dM4p-Pl681e2TZJthoBg(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vYAHl5HgO0LbSHrme-o8gsFmCJk(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$wJPLTGWTAs9_GjiKSI82qrhalzU()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->k()V

    return-void
.end method

.method public static synthetic lambda$yz1X6LvvGPRSu5t2jqxr43lZWGU(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$zb1aVAkyRc4JZz6SWIY41RZ4uz0(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setSummaryPreferenceById(Ljava/lang/String;)V
    .locals 1

    .line 1475
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 1476
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/Preference;)V

    .line 1477
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$37;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$37;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAppShortcuts(Landroid/content/Context;)V
    .locals 2

    const-string v0, "addCallLogShortcut"

    .line 1119
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1120
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$20;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "addFavoritesShortcut"

    .line 1133
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1134
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$21;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "addDialerShortcut"

    .line 1147
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1148
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$22;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 2057
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->i:Landroid/preference/SwitchPreference;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2058
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable"

    goto :goto_0

    :cond_0
    const-string v0, "disable"

    .line 2059
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "ViewProfile"

    const-string v3, "ViewProfilePrivateModeChange"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 2240
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->e:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const-string v0, "general_settings"

    .line 2242
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c()V

    return-void

    :cond_0
    const-string v0, "callerid_settings"

    .line 2244
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2245
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d()V

    return-void

    :cond_1
    const-string v0, "call_recorder_settings"

    .line 2246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EXTRA_HIDE_CALL_RECORDER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2247
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->e()V

    return-void

    :cond_2
    const-string v0, "customize_settings"

    .line 2248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2249
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->f()V

    return-void

    :cond_3
    const-string v0, "backup_settings"

    .line 2250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2251
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->g()V

    return-void

    :cond_4
    const-string v0, "notifications_settings"

    .line 2252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2253
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h()V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 4

    .line 2064
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2065
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2066
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewProfile"

    const-string v3, "ViewProfileNotificationPeriodChange"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/SwitchPreference;)V

    return-void
.end method

.method public getCurrentPreferenceScreen()Landroid/preference/Preference;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->f:Landroid/preference/Preference;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1905
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1906
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    .line 1909
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager;->isBirthdayChannelHasSound()Z

    move-result p1

    const-string p2, "birthdayReminderSoundEnabled"

    .line 1910
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1911
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->x:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 p3, 0x3f3

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_2

    .line 1914
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1203fe

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 34

    move-object/from16 v7, p0

    .line 182
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15000a

    .line 2419
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->setupPreferencesScreensIcons(Landroid/preference/PreferenceScreen;)V

    .line 2796
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "general_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f120352

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2797
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f1203ff

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2798
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "menuLanguage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v2, 0x7f120451

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "t9Language"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v3, 0x7f1203f1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2800
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "others"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120508

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "linkedAccount"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120407

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2802
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "callAppDualSim"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f12061d

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2804
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 2805
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "sendPurchases"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 2806
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    const v0, 0x7f120609

    .line 2807
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2809
    :cond_0
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2811
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "callerid_settings"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120192

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "caller_id"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120191

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2813
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "showCallAppOnIncoming"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120179

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "showCallAppOnOutgoing"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f12017a

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2815
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "fullScreenModeEnabled"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120178

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2816
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v8, "inCallDuration"

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f1203ad

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "speakNameEnabled"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f1200a2

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2818
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "post_call_screen"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120539

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2819
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v9, "postCallScreenEnabled"

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f12053b

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2820
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v10, "postCallDuration"

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120538

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2821
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "defaultImApp"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120613

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2822
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "whoViewedMyProfileAdvanced"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f120618

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "sms_id"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f12066b

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "incomingSmsEnabled"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v4, 0x7f12061b

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2825
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "call_recorder_settings"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v5, 0x7f12015a

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2826
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "recorder_title"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v5, 0x7f1205a2

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "recorder_format_title"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1205a7

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2828
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "recording_advanced_mode"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1205a3

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2829
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "recorder_storage_title"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12058a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderManual"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120152

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderAuto"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120140

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderIncomingCallEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12014d

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2833
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderOutgoingCallEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120156

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2834
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderIncreaseVolume"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12014e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2835
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "recorderTest"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12070e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2836
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callRecorderNormalizeSpeed"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120154

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2837
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "accessibilityService"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12013b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2838
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "forceInCommunicationMode"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12014a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2839
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "maxRecordsToSave"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120706

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2840
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "customize_settings"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12026a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2841
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v11, "backup_settings"

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200e0

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "appearance"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200ae

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2843
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "themes"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12071e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2844
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "overlayCover"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120512

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2845
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "preferPhotosFromDevice"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12053f

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2846
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "contactListPageSwipeEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12023a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2847
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "customization"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12025d

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2848
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "SpeedDial"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120680

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2849
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSms"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120579

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2850
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSmsEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202e0

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSms1"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12027b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2852
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSms2"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12027c

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSms3"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12027d

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2854
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "quickSms4"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12027e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "dialTonesEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1203f0

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "vibrateOnClickEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12080e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2857
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "notifications_settings"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1204df

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2858
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "showCallAppIMNotification"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120643

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2859
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "showCallAppSpamAndBlockNotification"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120641

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2861
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "birthday"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120104

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "birthdayReminderEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200fc

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2863
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "birthdayReminderSoundEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12067a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2865
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "whoViewedMyProfile"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12061a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2866
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "whoViewedMyProfileEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120619

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2867
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "privateMode"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12054c

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2868
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "privateModeEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12054b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2870
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "missedCallCardEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120642

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2871
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "notAnsweredCardEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12064a

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2872
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "missedCallOverlayEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120645

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2873
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "notAnsweredOverlayEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12064b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2874
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "missedCallDailySummaryEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120644

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2875
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "notAnswerDailySummaryEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120648

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2876
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "notAnswerNotificationEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120649

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2877
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "missedCallNotificationEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120646

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2881
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "missed_call_title"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12046b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "shortcuts"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1206f0

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "addCallLogShortcut"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1206ea

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "addFavoritesShortcut"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1206ec

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "addDialerShortcut"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1206eb

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2889
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "isDefaultPhoneApp"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202e4

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "inCallFloatingWidgetEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202e3

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "callFabEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202e2

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2892
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "forcePhoneToRing"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120346

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "hasPhoneRang"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12036e

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2894
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "in_call_services"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1203b2

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2895
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v12, "requestVerticalAnsweringOrientation"

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12080c

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2896
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v13, "requestHorizontalAnsweringOrientation"

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120380

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v14, "call_answering_orientation"

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1203b1

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "ads_settings"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12008d

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2899
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "allow_tailored_ads"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f12008b

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2900
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "super_skin_settings"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120421

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2901
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "super_skin_contact_details"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120235

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2902
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "superSkinContactDetailsBackgroundImageEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200d3

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2903
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "super_skin_main_screen"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120417

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "superSkinMainScreenBackgroundImageEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200d3

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2905
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "superSkinMainScreenTopBarImageEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120726

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2906
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "superSkinMainScreenAnimatedWizardEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200a1

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "super_skin_app_menu"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200a4

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2908
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "superSkinAppMenuAnimatedWizardEnabled"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200a1

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2909
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "isInDriveMode"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202c5

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "isInDriveModeIncoming"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1201c1

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2911
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "isInDriveModeOutgoing"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1201c2

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2912
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "where_to_backup_title"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120854

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2913
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v15, "backupByDropbox"

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202cf

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backupByDrive"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f12035c

    move-object/from16 p1, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backup_files"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200d8

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2916
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backupCallHistory"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f12012d

    move-object/from16 v17, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backupContacts"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f12023f

    move-object/from16 v18, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2918
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backupVideoRingTones"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f12051f

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2919
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "backupRecordings"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f120160

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "period"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1200df

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2921
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "twoDays"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f120011

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2922
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "twoWeeks"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v16, 0x7f120010

    move-object/from16 v22, v6

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "month"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f120012

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "enableBackupTitle"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202dd

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2925
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "enableBackup"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v6, 0x7f1202dc

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 3636
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const v6, 0x7f120453

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 3637
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const v6, 0x7f1201a9

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 3638
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/T9Preference;

    const v6, 0x7f1203f2

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/widget/T9Preference;->setDialogTitle(I)V

    .line 3639
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const v6, 0x7f1201a9

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1201a9

    .line 3641
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3643
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    move-object/from16 v16, v15

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/CharSequence;

    const v23, 0x7f1203ac

    .line 3645
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v11

    const/4 v11, 0x0

    aput-object v23, v15, v11

    const v23, 0x7f1200b9

    .line 3646
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v11, 0x1

    aput-object v23, v15, v11

    const/16 v23, 0x2

    const v26, 0x7f1200b2

    .line 3647
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v15, v23

    const/16 v23, 0x3

    const v26, 0x7f1200b4

    .line 3648
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v15, v23

    const/16 v23, 0x4

    const v26, 0x7f1200b5

    .line 3649
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v15, v23

    const/16 v23, 0x5

    const v26, 0x7f1200b6

    .line 3650
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v15, v23

    const/16 v23, 0x6

    const v26, 0x7f1200b8

    .line 3651
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v15, v23

    .line 3644
    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3652
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v11, 0x7f03000b

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v11, 0x7f1203b0

    .line 3653
    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 3654
    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 3656
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/CharSequence;

    const v15, 0x7f1200b7

    .line 3658
    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v25, 0x0

    aput-object v15, v11, v25

    const v15, 0x7f1200b9

    .line 3659
    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v23, 0x1

    aput-object v15, v11, v23

    const/4 v15, 0x2

    const v26, 0x7f1200b2

    .line 3660
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v11, v15

    const/4 v15, 0x3

    const v26, 0x7f1200b5

    .line 3661
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v11, v15

    const/4 v15, 0x4

    const v26, 0x7f1200b8

    .line 3662
    invoke-static/range {v26 .. v26}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v11, v15

    .line 3657
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3663
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x7f030011

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v11, 0x7f12053a

    .line 3664
    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 3665
    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 3666
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->j:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 4728
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 4729
    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/Preference;)V

    .line 4730
    new-instance v2, Lcom/callapp/contacts/activity/settings/SettingsFragment$43;

    invoke-direct {v2, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$43;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 4757
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 4758
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4759
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4760
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 4763
    :cond_1
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 5703
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "linkedAccount"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$41;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$41;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 6596
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    .line 6597
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 6598
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "callAppDualSim"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 6599
    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/Preference;)V

    if-nez v0, :cond_2

    .line 6601
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 6603
    :cond_2
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;

    invoke-direct {v1, v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_1
    const-string v0, "sendPurchases"

    .line 6645
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6647
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    const-string v0, "privateModeEnabled"

    .line 7043
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->i:Landroid/preference/SwitchPreference;

    .line 7044
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 7046
    iget-object v0, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->i:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$56;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$56;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 7264
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_HIDE_CALL_RECORDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7265
    invoke-virtual {v7, v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7266
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 7270
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7271
    invoke-virtual {v7, v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7272
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$28;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$28;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 7283
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "recorderTest"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7284
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 7288
    :cond_6
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$29;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$29;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    .line 7285
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 7286
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 7298
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "accessibilityService"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7299
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_9

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 7303
    :cond_8
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;

    invoke-direct {v1, v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_5

    .line 7300
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 7301
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 7322
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_a

    .line 7323
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "forceInCommunicationMode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 7324
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 7325
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 7328
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderNormalizeSpeed"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const v1, 0x7f120155

    .line 7329
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 7332
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderIncomingCallEnabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 7333
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "callRecorderOutgoingCallEnabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 7334
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 7335
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 7337
    new-instance v2, Lcom/callapp/contacts/activity/settings/SettingsFragment$31;

    invoke-direct {v2, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$31;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 7344
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$32;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$32;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 7352
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderManual"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 7353
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$33;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$33;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 7364
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callRecorderAuto"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 7365
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$34;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$34;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 7378
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "recording_advanced_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7379
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$35;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$35;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 7388
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "maxRecordsToSave"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 7389
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result v1

    const v2, 0x7f1206fc

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 7390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7391
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 7392
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;

    invoke-direct {v1, v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 7430
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_call_recorder_permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7431
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    sget-object v2, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$wJPLTGWTAs9_GjiKSI82qrhalzU;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$wJPLTGWTAs9_GjiKSI82qrhalzU;

    new-instance v3, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$2c1I8aCEjhmxAmVqgHA4YbwbdBo;

    invoke-direct {v3, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$2c1I8aCEjhmxAmVqgHA4YbwbdBo;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 8164
    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "isInDriveMode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 8165
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "isInDriveModeIncoming"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 8166
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "isInDriveModeOutgoing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 8168
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 8169
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 8170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    goto :goto_8

    .line 8177
    :cond_c
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 8179
    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 8181
    :cond_e
    new-instance v15, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v33, p1

    move-object/from16 v32, v17

    move-object/from16 v31, v18

    move-object/from16 v30, v19

    move-object/from16 v29, v20

    move-object/from16 v28, v21

    move-object/from16 v27, v22

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/settings/SettingsFragment$23;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/bluetooth/BluetoothAdapter;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v11, v15}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    :cond_f
    :goto_8
    move-object/from16 v33, p1

    move-object/from16 v32, v17

    move-object/from16 v31, v18

    move-object/from16 v30, v19

    move-object/from16 v29, v20

    move-object/from16 v28, v21

    move-object/from16 v27, v22

    .line 8171
    invoke-virtual {v6, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 8172
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 8173
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 8788
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "superSkinContactDetailsBackgroundImageEnabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 8789
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "superSkinMainScreenBackgroundImageEnabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 8790
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "superSkinMainScreenTopBarImageEnabled"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 8791
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "superSkinMainScreenAnimatedWizardEnabled"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 8792
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "superSkinAppMenuAnimatedWizardEnabled"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    aput-object v2, v0, v1

    .line 8787
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9829
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "themes"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$49;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$49;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 10505
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "overlayCover"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$38;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$38;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "preferPhotosFromDevice"

    .line 10714
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 10715
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Prefer device photos"

    invoke-direct {v7, v1, v2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10716
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$42;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$42;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 10815
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "contactListPageSwipeEnabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$48;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$48;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "SpeedDial"

    .line 10888
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$50;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$50;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x1

    .line 11204
    :goto_a
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v1, v1

    if-gt v0, v1, :cond_11

    .line 11205
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickSms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    .line 11210
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 11211
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v3, v3, v2

    .line 11212
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bj:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 11213
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 11215
    :cond_10
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->getDefaultResId()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 11217
    :goto_b
    new-instance v3, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;

    invoke-direct {v3, v7, v2}, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;I)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    const-string v0, "dialTonesEnabled"

    const-string v1, "Enable dial tones"

    .line 12171
    invoke-direct {v7, v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12782
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "showCallAppIMNotification"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 12783
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 12784
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$46;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$46;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_c

    :cond_12
    const-string v1, "notifications_settings"

    .line 12794
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_13

    .line 12796
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 12802
    :cond_13
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "showCallAppSpamAndBlockNotification"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 12803
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$47;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$47;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 12535
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->i()V

    const-string v0, "whoViewedMyProfileEnabled"

    .line 13016
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    .line 13017
    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/preference/SwitchPreference;)V

    .line 13018
    iget-object v0, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13020
    iget-object v0, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$54;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$54;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13032
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "whoViewedMyProfileAdvanced"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 13033
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$55;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$55;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "missedCallCardEnabled"

    .line 13079
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v1, "notAnsweredCardEnabled"

    .line 13080
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    const-string v2, "missedCallOverlayEnabled"

    .line 13081
    invoke-virtual {v7, v2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    const-string v3, "notAnsweredOverlayEnabled"

    .line 13082
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string v4, "missedCallDailySummaryEnabled"

    .line 13083
    invoke-virtual {v7, v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    const-string v5, "notAnswerDailySummaryEnabled"

    .line 13084
    invoke-virtual {v7, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    const-string v6, "notAnswerNotificationEnabled"

    .line 13085
    invoke-virtual {v7, v6}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    const-string v11, "missedCallNotificationEnabled"

    .line 13086
    invoke-virtual {v7, v11}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    .line 13088
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->y:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13089
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->z:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v1, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13090
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->A:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v2, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13091
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->B:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v3, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13092
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->C:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v4, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13093
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->D:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v5, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13094
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->E:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v6, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13095
    sget-object v15, Lcom/callapp/contacts/manager/preferences/Prefs;->F:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v15}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v11, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 13097
    new-instance v15, Lcom/callapp/contacts/activity/settings/SettingsFragment$57;

    invoke-direct {v15, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$57;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13104
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$58;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$58;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13111
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$59;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$59;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13118
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$60;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$60;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13125
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$61;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$61;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13133
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$62;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$62;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13141
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$63;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$63;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13149
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$64;

    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$64;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 13614
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->NON_PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    if-eq v0, v1, :cond_14

    const-string v0, "ads_settings"

    .line 13615
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 13616
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_e

    .line 13620
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "allow_tailored_ads"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    const v1, 0x7f12008c

    .line 13621
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13622
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 13623
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    .line 13624
    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;

    invoke-direct {v1, v7, v0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_e
    const-string v0, "myAccount"

    .line 14442
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const v1, 0x7f12049f

    .line 14443
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "installDate"

    .line 14444
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f1203d3

    .line 14445
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 14446
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 14447
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "appVersion"

    .line 14449
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f1200ab

    .line 14450
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 14451
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "premiumAccount"

    .line 14453
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f120540

    .line 14454
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 14455
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 14457
    new-instance v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v3, Lcom/callapp/contacts/activity/settings/SettingsFragment$10;

    invoke-direct {v3, v7, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$10;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)V

    invoke-direct {v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v2, v7, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    goto :goto_f

    .line 14477
    :cond_16
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f120122

    .line 14478
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 14479
    new-instance v2, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$lKfXdV6dM4p-Pl681e2TZJthoBg;

    invoke-direct {v2, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$lKfXdV6dM4p-Pl681e2TZJthoBg;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_f

    .line 14486
    :cond_17
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_f
    const-string v1, "deactivateAccount"

    .line 14490
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f120276

    .line 14491
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 14492
    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$QYPF09GoaeIQ7tiiEwYweDKO_h8;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$QYPF09GoaeIQ7tiiEwYweDKO_h8;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "speakNameEnabled"

    const-string v1, "Announce Caller Name"

    .line 14937
    invoke-direct {v7, v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Prefer post call screen On/Off"

    .line 14938
    invoke-direct {v7, v9, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    .line 14940
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_18

    .line 14941
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "inCallFloatingWidgetEnabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 14942
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->g:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 14943
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$14;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$14;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 14952
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callFabEnabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 14953
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 14954
    sget-object v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$RtN8CDiG9MXgfF8B8vn6_5O8V2M;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$RtN8CDiG9MXgfF8B8vn6_5O8V2M;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 14960
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "forcePhoneToRing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 14961
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 14962
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$15;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$15;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 14971
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hasPhoneRang"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 14972
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 14973
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$16;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$16;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 14988
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "isDefaultPhoneApp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$FZ0YqyheDXMihjxbUyhIz9rEXG8;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$FZ0YqyheDXMihjxbUyhIz9rEXG8;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15049
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$zb1aVAkyRc4JZz6SWIY41RZ4uz0;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$zb1aVAkyRc4JZz6SWIY41RZ4uz0;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15056
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$yz1X6LvvGPRSu5t2jqxr43lZWGU;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$yz1X6LvvGPRSu5t2jqxr43lZWGU;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15063
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 15064
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_10

    .line 15066
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "callerid_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 15067
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "in_call_services"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 15068
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 15070
    :goto_10
    invoke-direct {v7, v8}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->setSummaryPreferenceById(Ljava/lang/String;)V

    .line 15071
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 15072
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NEVER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "AFTER_5_SEC"

    .line 15073
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 15075
    :cond_19
    invoke-direct {v7, v10}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->setSummaryPreferenceById(Ljava/lang/String;)V

    .line 15077
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "defaultImApp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 15078
    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$18;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$18;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 15087
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$19;

    invoke-direct {v1, v7}, Lcom/callapp/contacts/activity/settings/SettingsFragment$19;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->setupAppShortcuts(Landroid/content/Context;)V

    .line 15204
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isAllowToRunBackup()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15205
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "lastBackup"

    .line 15206
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 15207
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hJ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    if-nez v2, :cond_1a

    .line 15209
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v25, 0x0

    goto :goto_11

    .line 15211
    :cond_1a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/M/yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const v3, 0x7f12071c

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 15212
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v25, 0x0

    aput-object v0, v5, v25

    invoke-static {v3, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 15215
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15216
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15217
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "enableBackup"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15219
    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;

    invoke-direct {v5, v7, v2, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15232
    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;

    invoke-direct {v5, v7, v0, v2, v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment$2;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15248
    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$3;

    invoke-direct {v5, v7, v0, v2, v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment$3;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15263
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v2, v32

    invoke-direct {v7, v2, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Z)V

    .line 15264
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v4, v31

    invoke-direct {v7, v4, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Z)V

    .line 15265
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v5, v30

    invoke-direct {v7, v5, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Z)V

    .line 15266
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v6, v29

    invoke-direct {v7, v6, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Ljava/lang/String;Z)V

    .line 15267
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne v0, v8, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    invoke-direct {v7, v1, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15268
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    invoke-direct {v7, v3, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15269
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->TWO_DAYS:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result v1

    if-ne v0, v1, :cond_1d

    move-object/from16 v1, v28

    const/4 v0, 0x1

    goto :goto_14

    :cond_1d
    move-object/from16 v1, v28

    const/4 v0, 0x0

    :goto_14
    invoke-direct {v7, v1, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15270
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->HALF_MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result v3

    if-ne v0, v3, :cond_1e

    move-object/from16 v3, v27

    const/4 v0, 0x1

    goto :goto_15

    :cond_1e
    move-object/from16 v3, v27

    const/4 v0, 0x0

    :goto_15
    invoke-direct {v7, v3, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15271
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v8, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result v8

    if-ne v0, v8, :cond_1f

    const/4 v11, 0x1

    goto :goto_16

    :cond_1f
    const/4 v11, 0x0

    :goto_16
    const-string v0, "month"

    invoke-direct {v7, v0, v11}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15272
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    sget-object v8, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0, v8}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    const-string v8, "enableBackup"

    invoke-direct {v7, v8, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Z)V

    .line 15274
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15275
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15276
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v8, "month"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    .line 15278
    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsFragment$4;

    invoke-direct {v8, v7, v1, v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment$4;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v8}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15289
    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsFragment$5;

    invoke-direct {v8, v7, v3, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$5;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v1, v8}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15300
    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;

    invoke-direct {v8, v7, v1, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$6;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 15312
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-direct {v7, v2, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 15313
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-direct {v7, v4, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 15314
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-direct {v7, v5, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 15315
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-direct {v7, v6, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    return-void

    :cond_20
    move-object/from16 v1, v24

    .line 15317
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 15318
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 672
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 674
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->e:Z

    .line 675
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/4 p3, -0x1

    .line 677
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 678
    iget p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    if-ltz p3, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 693
    :cond_0
    new-instance p3, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p3}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 694
    invoke-virtual {p3, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    .line 695
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 696
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const p3, 0x7f120537

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 705
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 708
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 738
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 739
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12061e

    .line 740
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->f:Landroid/preference/Preference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const v1, 0x7f120421

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 743
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 17091
    invoke-virtual {p1, v1, v0, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 745
    :cond_1
    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    .line 746
    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->f:Landroid/preference/Preference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .line 713
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 718
    :cond_0
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 719
    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->f:Landroid/preference/Preference;

    .line 720
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 721
    check-cast p2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 726
    :cond_1
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 728
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->b:Landroid/app/Dialog;

    .line 16750
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 16754
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16756
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 16758
    invoke-virtual {p2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 16761
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 16762
    aget v0, v4, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16763
    aget v0, v4, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16764
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 16765
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x30

    .line 16766
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 16768
    invoke-virtual {p2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v0, 0x20

    .line 16771
    invoke-virtual {p2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 729
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return v2

    .line 733
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 15929
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v1, v0, :cond_0

    .line 15930
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    .line 15931
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    .line 15932
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Z)V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->i()V

    .line 429
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->isSuperSkinEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "super_skin_settings"

    .line 430
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method protected setupPreferencesScreensIcons(Landroid/preference/PreferenceScreen;)V
    .locals 8

    .line 1544
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1546
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 1548
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 1549
    instance-of v4, v3, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_9

    .line 1550
    check-cast v3, Landroid/preference/PreferenceScreen;

    const v4, 0x7f060088

    .line 1551
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    .line 1552
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "customize_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "callerid_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "ads_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "super_skin_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "debug_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v7, "call_recorder_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_6
    const-string v7, "notifications_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_7
    const-string v7, "backup_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_8
    const-string v7, "general_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v5, 0x7f0802df

    .line 1563
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_1
    const v5, 0x7f08045b

    .line 1557
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_2
    const v5, 0x7f08047c

    .line 1575
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_3
    const v5, 0x7f0804b0

    .line 1578
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_4
    const v5, 0x7f08038f

    .line 1572
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_5
    const v5, 0x7f080348

    .line 1560
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_6
    const v5, 0x7f080477

    .line 1569
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_7
    const v5, 0x7f0802e7

    .line 1566
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    goto :goto_2

    :pswitch_8
    const v5, 0x7f080485

    .line 1554
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/PreferenceScreen;II)V

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62199666 -> :sswitch_8
        -0x497d2e00 -> :sswitch_7
        -0x2839a266 -> :sswitch_6
        -0x133efd1d -> :sswitch_5
        -0x8b03b71 -> :sswitch_4
        0x1876f2e1 -> :sswitch_3
        0x2b8b3ad2 -> :sswitch_2
        0x3c4a725c -> :sswitch_1
        0x43af7c9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

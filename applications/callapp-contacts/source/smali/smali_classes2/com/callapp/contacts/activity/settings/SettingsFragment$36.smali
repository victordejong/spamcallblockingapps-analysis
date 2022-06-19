.class Lcom/callapp/contacts/activity/settings/SettingsFragment$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 1395
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call recorders list"

    const-string v1, "ClickMaxRecords"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_50:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_100:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_200:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    sget-object v3, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-static {v0, v1, v2, v3}, L$r8$backportedMethods$utility$List$4$of;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1400
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1401
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1404
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->eS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1405
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->ordinal()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1406
    sget-object p1, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_200:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->ordinal()I

    move-result p1

    .line 1409
    :cond_1
    new-instance v0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    new-instance v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$36;)V

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;-><init>(ILcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;)V

    .line 1425
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    return p1
.end method

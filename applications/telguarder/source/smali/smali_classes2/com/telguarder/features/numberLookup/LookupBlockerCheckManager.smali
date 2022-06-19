.class public Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;
.super Ljava/lang/Object;
.source "LookupBlockerCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;


# instance fields
.field private mAlreadyChecked:Z

.field private mEnableMessageBoxOnSettingsScreens:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mAlreadyChecked:Z

    .line 26
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mEnableMessageBoxOnSettingsScreens:Z

    return-void
.end method

.method public static getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mInstance:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;-><init>()V

    sput-object v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mInstance:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mAlreadyChecked:Z

    .line 45
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mInstance:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    return-object v0
.end method

.method static synthetic lambda$saveLastLookedupNumber$2(Ljava/lang/String;ZJI)V
    .locals 1

    .line 133
    new-instance v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;-><init>()V

    .line 134
    iput-object p0, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    .line 135
    iput-boolean p1, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->visible:Z

    .line 136
    iput-wide p2, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->checkedCallLogId:J

    const/4 p0, 0x2

    if-ne p4, p0, :cond_0

    .line 138
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveLastOutgoingLookedupNumber(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveLastIncomingLookedupNumber(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;)V

    :goto_0
    return-void
.end method

.method private saveLastLookedupNumber(Ljava/lang/String;IZJ)V
    .locals 8

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;

    move-object v1, v7

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;-><init>(Ljava/lang/String;ZJI)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public batteryOptimisationsIgnored(Landroid/content/Context;)Z
    .locals 3

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 154
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public canDrawOverlays(Landroid/content/Context;)Z
    .locals 2

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public checkForFirmwareSpecificBlockers(Landroid/content/Context;)V
    .locals 3

    .line 62
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->isProtectedAppchekDone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, v1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    return-void

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mAlreadyChecked:Z

    if-nez v0, :cond_1

    .line 67
    iput-boolean v1, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mAlreadyChecked:Z

    .line 68
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;

    invoke-direct {v2, p0, p1}, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;-><init>(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->checkLastNumber(Landroid/content/Context;Ljava/lang/Long;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler;)V

    :cond_1
    return-void
.end method

.method public isLookupBlockerCheckNeeded(Landroid/content/Context;)Z
    .locals 2

    .line 50
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const-string v1, "SETTINGS_LOOK_UP_INCOMING_CALLS"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const-string v1, "SETTINGS_LOOK_UP_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->isDeviceOnAbroadNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const-string v0, "SETTINGS_LOOK_UP_ABROAD"

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isMessageBoxOnSettingsScreensNeeded(Landroid/content/Context;)Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mEnableMessageBoxOnSettingsScreens:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->batteryOptimisationsIgnored(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$checkForFirmwareSpecificBlockers$0$LookupBlockerCheckManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;IJ)V
    .locals 7

    if-eqz p2, :cond_5

    .line 70
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p5

    const-string p6, "SETTINGS_LOOK_UP_STORED_CONTACTS"

    invoke-virtual {p5, p6}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 71
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Lcom/telguarder/helpers/contact/ContactManager;->getContactByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    const/4 p5, 0x2

    if-eq p4, p5, :cond_1

    .line 76
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getLastIncomingLookedupNumber()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    move-result-object p5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getLastOutgoingLookedupNumber()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    move-result-object p5

    :goto_0
    const/4 p6, 0x1

    if-nez p5, :cond_2

    .line 78
    invoke-virtual {p0, p1, p6}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v0, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->checkedCallLogId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v4, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->checkedCallLogId:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 81
    invoke-virtual {p0, p1, p6}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    goto :goto_1

    .line 82
    :cond_3
    iget-wide v0, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->checkedCallLogId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 83
    iget-object v0, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 85
    iget-object v1, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    iget-boolean v3, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->visible:Z

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->saveLastLookedupNumber(Ljava/lang/String;IZJ)V

    .line 86
    iget-boolean p2, p5, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->visible:Z

    if-nez p2, :cond_5

    .line 87
    invoke-virtual {p0, p1, p6}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p0, p1, p6}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$openCustomSettingsPage$1$LookupBlockerCheckManager(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 111
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupBlockerCheckPopupError(Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveProtectedAppchekDone(Z)V

    .line 116
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupBlockerCheckPopupClickAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mEnableMessageBoxOnSettingsScreens:Z

    return-void
.end method

.method public openCustomSettingsPage(Landroid/content/Context;Z)V
    .locals 3

    .line 102
    sget-object v0, Lcom/telguarder/ApplicationConstants;->POWERMANAGER_INTENTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 103
    invoke-static {p1, v1}, Lcom/telguarder/ApplicationConstants;->isCallable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupBlockerCheckPopupShowAction(Ljava/lang/String;)V

    .line 105
    iput-boolean p2, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mEnableMessageBoxOnSettingsScreens:Z

    if-eqz p2, :cond_1

    .line 106
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->isProtectedAppchekDone()Z

    move-result p2

    if-nez p2, :cond_2

    .line 107
    :cond_1
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1001aa

    .line 108
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1001a8

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1001a9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1001a7

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$N-CING3UAJLCIDWKHgo1nXskh-4;

    invoke-direct {v2, p0, p1, v1}, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$N-CING3UAJLCIDWKHgo1nXskh-4;-><init>(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public saveLastLookedupNumber(Ljava/lang/String;IZ)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->saveLastLookedupNumber(Ljava/lang/String;IZJ)V

    return-void
.end method

.method public setMessageBoxOnSettingsScreensNotNeeded()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->mEnableMessageBoxOnSettingsScreens:Z

    return-void
.end method

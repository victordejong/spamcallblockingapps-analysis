.class public Lcom/telguarder/helpers/preferences/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/preferences/PreferencesManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/telguarder/helpers/preferences/PreferencesManager;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/telguarder/helpers/preferences/PreferencesManager;

    invoke-direct {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;-><init>()V

    sput-object v0, Lcom/telguarder/helpers/preferences/PreferencesManager;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/preferences/PreferencesManager;->mInstance:Lcom/telguarder/helpers/preferences/PreferencesManager;

    return-object v0
.end method

.method private saveCallWidgetVerticalOffset(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V
    .locals 3

    .line 96
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTINGS_SPINNER_VERTICAL_OFFSET_OF_CALL_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getVerticalOffset()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method private saveWidgetTooltipHideCount(I)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "CALL_WIDGET_TOOLTIP_HIDE_COUNT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAppRatingOptOut()Z
    .locals 3

    .line 181
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "APP_RATING_AND_FEEDBACK_OPT_OUT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCachedBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;
    .locals 4

    .line 217
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v1

    const-string v2, "CACHED_BLOCKED_NUMBER_LIST"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    return-object v0
.end method

.method public getCachedMCC()Ljava/lang/String;
    .locals 3

    .line 256
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "SETTINGS_CACHED_MCC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallWidgetLocation()Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;
    .locals 4

    .line 82
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->AUTO:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTINGS_SPINNER_LOCATION_OF_CALL_POPUP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->valueOf(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCallWidgetVerticalOffset(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->setVerticalOffset(I)V

    return-object v0
.end method

.method public getCallWidgetLocationCustomGravity()I
    .locals 3

    .line 106
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTINGS_SPINNER_CUSTOM_GRAVITY_OF_CALL_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallWidgetVerticalOffset(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)I
    .locals 3

    .line 91
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTINGS_SPINNER_VERTICAL_OFFSET_OF_CALL_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 4

    .line 349
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v1

    const-string v2, "CURRENT_COARSE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public getDebugFbAdStatisticsExpiredCount()I
    .locals 3

    .line 323
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_EXPIRED_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDebugFbAdStatisticsLoadedCount()I
    .locals 3

    .line 303
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_LOADED_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDebugFbAdStatisticsLoggedImpressionCount()I
    .locals 3

    .line 313
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_LOGGED_IMPRESSION_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDebugFbAdStatisticsNoFillCount()I
    .locals 3

    .line 293
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_NOFILL_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastIncomingLookedupNumber()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;
    .locals 4

    .line 237
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v1

    const-string v2, "LAST_INCOMING_LOOKEDUP_NUMBER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    return-object v0
.end method

.method public getLastOutgoingLookedupNumber()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;
    .locals 4

    .line 247
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v1

    const-string v2, "LAST_OUTGOING_LOOKEDUP_NUMBER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    return-object v0
.end method

.method public getOfflineSpamDbVersion()J
    .locals 3

    .line 281
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "OFFLINE_SPAM_DB_VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPermissionReqResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 276
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSavedBlockerSwitchState()Z
    .locals 3

    .line 222
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "BLOCKED_SWITCH_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSettingEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 71
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .line 156
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "UNIQUE_IDENTIFICATION_NUMBER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidWasRandom()Z
    .locals 3

    .line 166
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "UNIQUE_IDENTIFICATION_NUMBER_WAS_RANDOM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserConsentForPolicy2018()Z
    .locals 4

    .line 191
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "USER_CONSENT_FOR_POLICY_2018"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v2

    const-string v3, "USER_CONSENT_FOR_NUMBER_LOOKUP"

    invoke-virtual {v2, v3}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUserConsentForPolicy2018(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getWidgetTooltipHideCount()I
    .locals 3

    .line 141
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "CALL_WIDGET_TOOLTIP_HIDE_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasProtectedAppCheck()Z
    .locals 2

    .line 332
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "PROTECTED_APP_CHECK_DONE"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCallWidgetTooltipNeeded(Landroid/content/Context;)Z
    .locals 6

    .line 111
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "CALL_WIDGET_TOOLTIP_NEEDED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getWidgetTooltipHideCount()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 115
    invoke-direct {p0, v2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveWidgetTooltipHideCount(I)V

    return v1

    :cond_0
    add-int/2addr v3, v2

    .line 119
    invoke-direct {p0, v3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveWidgetTooltipHideCount(I)V

    if-ge v3, v4, :cond_1

    return v1

    :cond_1
    if-ne v3, v4, :cond_2

    return v2

    .line 126
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v2

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v3

    const-string p1, "FIRST_START_TIME_STAMP"

    invoke-virtual {v2, p1, v3, v4}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v4, v2

    const-wide/16 v2, 0x18

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    .line 128
    invoke-virtual {p0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->setCallWidgetTooltipNeeded(Z)V

    return v1

    :cond_3
    return v0
.end method

.method public isProtectedAppchekDone()Z
    .locals 3

    .line 336
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "PROTECTED_APP_CHECK_DONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public postCallScreenIsEnabled()Z
    .locals 3

    .line 171
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "SETTINGS_POST_CALL_WINDOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveAnalyzedNumber(Ljava/lang/String;)V
    .locals 2

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAppRatingOptOut(Z)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "APP_RATING_AND_FEEDBACK_OPT_OUT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveCachedBlockedNumberList(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 201
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    new-instance v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-direct {v0}, Lcom/telguarder/features/rateAndFeedback/ReportResult;-><init>()V

    .line 205
    iget v1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->totalCount:I

    iput v1, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->totalCount:I

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    .line 207
    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 208
    invoke-virtual {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->isPlaceholderEntry()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    iget-object v2, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CACHED_BLOCKED_NUMBER_LIST"

    invoke-virtual {p1, v1, v0}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public saveCachedMCC(Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "SETTINGS_CACHED_MCC"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCallWidgetLocation(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V
    .locals 3

    .line 76
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTINGS_SPINNER_LOCATION_OF_CALL_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCallWidgetVerticalOffset(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V

    return-void
.end method

.method public saveCallWidgetLocationCustomGravity(I)V
    .locals 3

    .line 101
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTINGS_SPINNER_CUSTOM_GRAVITY_OF_CALL_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveCurrentCoarseLocation(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CURRENT_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveDebugFbAdStatisticsExpiredCount(I)V
    .locals 2

    .line 328
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_EXPIRED_COUNT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDebugFbAdStatisticsLoadedCount(I)V
    .locals 2

    .line 308
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_LOADED_COUNT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDebugFbAdStatisticsLoggedImpressionCount(I)V
    .locals 2

    .line 318
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_LOGGED_IMPRESSION_COUNT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDebugFbAdStatisticsNoFillCount(I)V
    .locals 2

    .line 298
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "DEBUG_FB_AD_STATISTICS_NOFILL_COUNT"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastIncomingLookedupNumber(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LAST_INCOMING_LOOKEDUP_NUMBER"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLastOutgoingLookedupNumber(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LAST_OUTGOING_LOOKEDUP_NUMBER"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePermissionReqResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 272
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveProtectedAppchekDone(Z)V
    .locals 2

    .line 340
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "PROTECTED_APP_CHECK_DONE"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveSettingEnabled(Ljava/lang/String;Z)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUid(Ljava/lang/String;)V
    .locals 2

    .line 151
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "UNIQUE_IDENTIFICATION_NUMBER"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveUidWasRandom(Z)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "UNIQUE_IDENTIFICATION_NUMBER_WAS_RANDOM"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserConsentForPolicy2018(Z)V
    .locals 2

    .line 186
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "USER_CONSENT_FOR_POLICY_2018"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public savedBlockerSwitchState(Z)V
    .locals 2

    .line 227
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "BLOCKED_SWITCH_STATE"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCallWidgetTooltipNeeded(Z)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "CALL_WIDGET_TOOLTIP_NEEDED"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOfflineSpamDbVersion(I)V
    .locals 2

    .line 286
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    const-string v1, "OFFLINE_SPAM_DB_VERSION"

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public wasNumberAnalyzedBefore(Ljava/lang/String;)Z
    .locals 2

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesConnector;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesConnector;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

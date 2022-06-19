.class public Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;
.super Ljava/lang/Object;
.source "PhonecallStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;


# instance fields
.field private firstKeepaliveRun:Z

.field public incomingLookupAllowed:Ljava/lang/Boolean;

.field private keepaliveCode:Ljava/lang/Runnable;

.field private keepaliveHandler:Landroid/os/Handler;

.field public mLastNumberWasTestNumber:Z

.field private mPhoneStateCallDataList:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;",
            ">;"
        }
    .end annotation
.end field

.field public outgoingLookupAllowed:Ljava/lang/Boolean;

.field public roamingLookupAllowed:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->outgoingLookupAllowed:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->incomingLookupAllowed:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->roamingLookupAllowed:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mLastNumberWasTestNumber:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->firstKeepaliveRun:Z

    .line 46
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;
    .locals 2

    const-class v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    invoke-direct {v1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;-><init>()V

    sput-object v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    .line 42
    :cond_0
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isAbroadAndLookupNotAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->roamingLookupAllowed:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const-string v1, "SETTINGS_LOOK_UP_ABROAD"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->isDeviceOnAbroadNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->roamingLookupAllowed:Ljava/lang/Boolean;

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->roamingLookupAllowed:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$openPhoneCallLogIfEnabledBySetting$0(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V
    .locals 7

    .line 147
    iget-object v2, p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget v0, p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    int-to-long v3, v0

    iget-wide v0, p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;JLjava/lang/Long;Z)V

    .line 148
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p0

    const-string p1, "call_brdcst_rcvr"

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsPageOpenedFromAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanPhoneStateCallData()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    :cond_0
    return-void
.end method

.method public getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    monitor-exit p0

    return-object v0

    :cond_0
    if-eqz p2, :cond_4

    .line 70
    :try_start_0
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    if-nez p2, :cond_1

    .line 71
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    .line 72
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    invoke-direct {v0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;-><init>()V

    .line 73
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 75
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-nez p2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    :cond_3
    move-object v0, p2

    if-nez v0, :cond_7

    .line 85
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    invoke-direct {v0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;-><init>()V

    .line 86
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    :cond_4
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 91
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-nez p2, :cond_6

    .line 93
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {p2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mPhoneStateCallDataList:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    move-object v0, p2

    .line 103
    :cond_7
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isKeepAliveRunning()Z
    .locals 4

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveCode:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveCode:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public synthetic lambda$preloadKeepAlive$1$PhonecallStateHandler()V
    .locals 4

    .line 170
    iget-boolean v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->firstKeepaliveRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->firstKeepaliveRun:Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->incAdNetworkFlowKeepaliveCount()V

    .line 175
    :goto_0
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveCode:Ljava/lang/Runnable;

    sget v2, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveTimeStep:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public openPhoneCallLogIfEnabledBySetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->postCallScreenIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    new-instance v1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;

    invoke-direct {v1, p1, p2, v0}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    .line 150
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 151
    invoke-static {p1, p2, v0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->openNumberLookupConsentActivity(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public preloadKeepAlive(Landroid/content/Context;)V
    .locals 1

    const-string p1, " PRELOAD KEEPALIVE START"

    .line 164
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    .line 166
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->resetAdNetworkFlowKeepaliveCount()V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->firstKeepaliveRun:Z

    .line 168
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    .line 169
    new-instance p1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$PjrGDCuDzxymY1kxlCBLRwnCk5s;

    invoke-direct {p1, p0}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$PjrGDCuDzxymY1kxlCBLRwnCk5s;-><init>(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;)V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveCode:Ljava/lang/Runnable;

    .line 184
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldDoIncomingPhoneNumberLookup(Landroid/content/Context;)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->incomingLookupAllowed:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->isAbroadAndLookupNotAllowed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const-string v0, "SETTINGS_LOOK_UP_INCOMING_CALLS"

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->incomingLookupAllowed:Ljava/lang/Boolean;

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->incomingLookupAllowed:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    return v1
.end method

.method public shouldDoOutgoingPhoneNumberLookup(Landroid/content/Context;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->outgoingLookupAllowed:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->isAbroadAndLookupNotAllowed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const-string v0, "SETTINGS_LOOK_UP_OUTGOING_CALLS"

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->outgoingLookupAllowed:Ljava/lang/Boolean;

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->outgoingLookupAllowed:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public stopPreloadKeepAlive()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 200
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveHandler:Landroid/os/Handler;

    .line 201
    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->keepaliveCode:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-string v0, " PRELOAD KEEPALIVE STOP"

    .line 202
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

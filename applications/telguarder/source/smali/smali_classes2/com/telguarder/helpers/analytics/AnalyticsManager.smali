.class public Lcom/telguarder/helpers/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# static fields
.field private static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static mInstance:Lcom/telguarder/helpers/analytics/AnalyticsManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAcceptedText(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "dismiss"

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ok"

    goto :goto_0

    :cond_1
    const-string p1, "no"

    :goto_0
    return-object p1
.end method

.method private getDelayStep(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "less_than_100ms"

    return-object p1

    :cond_0
    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "between_100ms_and_200ms"

    return-object p1

    :cond_1
    const-wide/16 v0, 0x12c

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "between_200ms_and_300ms"

    return-object p1

    :cond_2
    const-wide/16 v0, 0x190

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const-string p1, "between_300ms_and_400ms"

    return-object p1

    :cond_3
    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const-string p1, "between_400ms_and_500ms"

    return-object p1

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    const-string p1, "between_500ms_and_1000ms"

    return-object p1

    :cond_5
    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    const-string p1, "between_1000ms_and_2000ms"

    return-object p1

    :cond_6
    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    const-string p1, "between_2000ms_and_3000ms"

    return-object p1

    :cond_7
    const-wide/16 v0, 0xfa0

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const-string p1, "between_3000ms_and_4000ms"

    return-object p1

    :cond_8
    const-wide/16 v0, 0x1388

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    const-string p1, "between_4000ms_and_5000ms"

    return-object p1

    :cond_9
    const-wide/16 v0, 0x1770

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    const-string p1, "between_5000ms_and_6000ms"

    return-object p1

    :cond_a
    const-wide/16 v0, 0x1b58

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    const-string p1, "between_6000ms_and_7000ms"

    return-object p1

    :cond_b
    const-wide/16 v0, 0x1f40

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    const-string p1, "between_7000ms_and_8000ms"

    return-object p1

    :cond_c
    const-wide/16 v0, 0x2328

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    const-string p1, "between_8000ms_and_9000ms"

    return-object p1

    :cond_d
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    const-string p1, "between_9000ms_and_10000ms"

    return-object p1

    :cond_e
    const-wide/16 v0, 0x4e20

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    const-string p1, "between_10000ms_and_20000ms"

    return-object p1

    :cond_f
    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-gez v2, :cond_10

    const-string p1, "between_20000ms_and_30000ms"

    return-object p1

    :cond_10
    const-string p1, "more_than_30000ms"

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/analytics/AnalyticsManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mInstance:Lcom/telguarder/helpers/analytics/AnalyticsManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/telguarder/helpers/analytics/AnalyticsManager;

    invoke-direct {v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;-><init>()V

    sput-object v1, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mInstance:Lcom/telguarder/helpers/analytics/AnalyticsManager;

    .line 38
    :cond_0
    sget-object v1, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mInstance:Lcom/telguarder/helpers/analytics/AnalyticsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSwitchLabel(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    return-object p1
.end method

.method private getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    const-string v2, "_"

    .line 554
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/[^A-Za-z0-9_]/"

    .line 555
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private nameWithLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private priceParam(D)Landroid/os/Bundle;
    .locals 3

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v1, "value"

    .line 257
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "currency"

    const-string p2, "USD"

    .line 258
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendConsentCancelDeviceAction(Landroid/content/Context;)V
    .locals 2

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    invoke-static {p1}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "popup_cons_not_approved"

    .line 547
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private valueWithLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public initAnalytics(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sput-object p1, Lcom/telguarder/helpers/analytics/AnalyticsManager;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public sendAddToContactsAction(Ljava/lang/String;)V
    .locals 1

    const-string p1, "share_add_contact"

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertBackPressedAction(Ljava/lang/String;)V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_back_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_back_unified"

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertCancelAction(Ljava/lang/String;)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_cancel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_cancel_unified"

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertClickedAction(Ljava/lang/String;)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_clicked_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "ad_clicked_unified"

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad_clicked_pm_ow_dfp_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendAdvertConnectionLimitErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_connection_limit_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_connection_unified"

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertDeprecatedSDKErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_deprecated_sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_deprecated_sdk_unified"

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_unified"

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertExpiredAction(Ljava/lang/String;)V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_expired_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_expired_unified"

    .line 341
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertFetchSignalStetErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_fetch_signal_error_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_fetch_signal_unified"

    .line 386
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertHomePressedAction(Ljava/lang/String;)V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_home_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_home_unified"

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertHttpErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_http_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_http_unified"

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertIcsParseErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_ics_parse_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_ics_unified"

    .line 470
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertImpressionLoggedAction(Ljava/lang/String;)V
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_impr_lgd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_impr_lgd_unified"

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertInternalErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_int_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_int_unified"

    .line 366
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertInvalidResponseErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_invalid_response_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_invalid_response_unified"

    .line 391
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertJsonParseErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_json_parse_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_json_parse_unified"

    .line 505
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertLayoutErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_layout_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_layout_unified"

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertLoadedAction(Ljava/lang/String;)V
    .locals 6

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_received_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "ad_received_unified"

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad_received_pm_ow_dfp_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    :cond_0
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPostcallStartTimeStamp:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPostcallStartTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad shown after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms from page start"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-string v0, "ad_dly_100_"

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "ad_dly_200_"

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const-string v0, "ad_dly_300_"

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x190

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const-string v0, "ad_dly_400_"

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const-string v0, "ad_dly_500_"

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    const-string v0, "ad_dly_1000_"

    goto :goto_0

    :cond_6
    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_7

    const-string v0, "ad_dly_2000_"

    goto :goto_0

    :cond_7
    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    const-string v0, "ad_dly_3000_"

    goto :goto_0

    :cond_8
    const-wide/16 v4, 0xfa0

    cmp-long v0, v2, v4

    if-gez v0, :cond_9

    const-string v0, "ad_dly_4000_"

    goto :goto_0

    :cond_9
    const-string v0, "ad_dly_5000x_"

    .line 294
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 296
    sget-object v2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pm_ow_dfp_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public sendAdvertMIssingDepErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_missing_dep_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_missing_dep_unified"

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertMOnetizationDisabledErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_mon_dis_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_mon_dis_unified"

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertMediaErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_media_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_media_unified"

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertMissedAction(Ljava/lang/String;)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_missed_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_missed_unified"

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertNetworkErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_net_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_net_unified"

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertNoFillErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_no_fill_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_no_fill_unified"

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertOpenedAction(Ljava/lang/String;)V
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_opened_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "ad_opened_unified"

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad_opened_pm_ow_dfp_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendAdvertPermissionsErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_permission_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_permission_unified"

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertRefreshWithNewBannerAction(Ljava/lang/String;)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_refresh_with_new_banner_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_refresh_unified"

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertRequestInvalidErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_req_invalid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_req_invalid_unified"

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertRequestTimeoutErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_req_timeout_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_req_timeout_unified"

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertRequestedAction(Ljava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_requested_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_requested_unified"

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertSDKErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_sdk_unified"

    .line 465
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertScreenOffAction(Ljava/lang/String;)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_screen_off_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_screen_off_unified"

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertServerErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_error_srv_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_error_srv_unified"

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertTimeoutAction(Ljava/lang/String;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_timeout_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_timeout_unified"

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertTooFrequentErrorAction(Ljava/lang/String;)V
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_freq_load_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_freq_load_unified"

    .line 356
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V
    .locals 6

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_2

    const-wide/16 v3, 0x1f4

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    const-string v3, "ad_vis_500_"

    goto :goto_0

    :cond_0
    cmp-long v3, p2, v0

    if-gez v3, :cond_1

    const-string v3, "ad_vis_500_1000_"

    goto :goto_0

    :cond_1
    const-string v3, "ad_vis_1000_"

    .line 415
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "unified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 417
    sget-object v4, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v4}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pm_ow_dfp_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad_area_error_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_area_error_unified"

    .line 423
    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x32

    if-lt p4, v3, :cond_4

    .line 425
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad_area_50_plus_"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p4, "ad_area_50_plus_unified"

    .line 426
    invoke-direct {p0, p4, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    cmp-long p4, p2, v0

    if-ltz p4, :cond_5

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad_impr_int_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_impr_int_unified"

    .line 429
    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 432
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad_area_blw_50_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ad_area_blw_50_unified"

    .line 433
    invoke-direct {p0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public sendAnalysePageOpenError(Ljava/lang/String;)V
    .locals 2

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 761
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_analyse_open_error"

    .line 762
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAnalysePageOpenSuccess(J)V
    .locals 1

    .line 766
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 767
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 768
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_analyse_open_success"

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAnalysePagePreloadError(Ljava/lang/String;)V
    .locals 2

    .line 746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 747
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_analyse_preload_error"

    .line 748
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAnalysePagePreloadSuccess(J)V
    .locals 1

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 753
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 754
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_analyse_preload_success"

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendAnalyzeDeepLinkOpen()V
    .locals 2

    const-string v0, "call_detection_anal_deep_lnk_opn"

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendApiReqMccAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "api_req_network_info"

    .line 653
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendArcMenuSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 699
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arc_menu_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendErrorResponseAction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 619
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http_status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_error_response"

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendErrorResponseAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 627
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error_msg: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_error_response"

    .line 630
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendResponseRegionAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 635
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "NO"

    :cond_0
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 636
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 637
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_response_region"

    .line 639
    invoke-direct {p0, p1, p4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendResponseRegionXAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 643
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "NO"

    :cond_0
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 644
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 645
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_response_region_X"

    .line 647
    invoke-direct {p0, p1, p4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendSlowResponseAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_slow_response"

    .line 604
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackendXResponseAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 610
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getUrlAsParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->nameWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backend_x_response_time"

    .line 613
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallAction(Ljava/lang/String;)V
    .locals 1

    const-string p1, "contact_call"

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallLength(J)V
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0xb4

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const-string p1, "call_duration_180_x"

    .line 874
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    :cond_1
    cmp-long v3, v1, p1

    if-gtz v3, :cond_2

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call_duration_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v1, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 887
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsCallHistoryAction()V
    .locals 2

    const-string v0, "call_stat_call_history"

    const/4 v1, 0x0

    .line 692
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsCounterAction()V
    .locals 2

    const-string v0, "call_stat_count_summary"

    const/4 v1, 0x0

    .line 684
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsDailyCallStatAction(Ljava/lang/String;)V
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call_stat_daily_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsDurationAction()V
    .locals 2

    const-string v0, "call_stat_last_call_dur_sum"

    const/4 v1, 0x0

    .line 680
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsPageOpenedFromAction(Ljava/lang/String;)V
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call_stat_from_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCallStatisticsScrollAction()V
    .locals 2

    const-string v0, "call_stat_scroll_dragging"

    const/4 v1, 0x0

    .line 676
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendKeepaliveAborted(J)V
    .locals 3

    .line 891
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getKeepAliveDuration()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xb4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-string p1, "keepalive_aborted"

    goto :goto_0

    :cond_0
    const-string p1, "keepalive_not_aborted"

    :goto_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLegalInfoPageOpenError(Ljava/lang/String;)V
    .locals 2

    .line 733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 734
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_legalinfo_open_error"

    .line 735
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLegalInfoPageOpenSuccess(J)V
    .locals 1

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 740
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 741
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_legalinfo_open_success"

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupApprovedByUser(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "call_detection_acceptance_ok"

    goto :goto_0

    :cond_0
    const-string p1, "call_detection_acceptance_na"

    :goto_0
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupBlockNotification()V
    .locals 2

    const-string v0, "call_detection_blocked_ntf"

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupBlockerCheckPopupClickAction(Ljava/lang/String;)V
    .locals 2

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popup_click_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupBlockerCheckPopupError(Ljava/lang/String;)V
    .locals 1

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_popup_error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupBlockerCheckPopupShowAction(Ljava/lang/String;)V
    .locals 2

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popup_show_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupClickBlockNotification()V
    .locals 2

    const-string v0, "call_detection_blocked_ntf_clckd"

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupClickIncomingNotification()V
    .locals 2

    const-string v0, "call_detection_incmng_ntf_clckd"

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupClickMissedNotification()V
    .locals 2

    const-string v0, "call_detection_missed_ntf_clckd"

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupClickNotification()V
    .locals 2

    const-string v0, "call_detection_ntf_clckd"

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupClickOutgoingNotification()V
    .locals 2

    const-string v0, "call_detection_outgng_ntf_clckd"

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupContactsSettingChanged(Z)V
    .locals 2

    .line 226
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getSwitchLabel(Z)Ljava/lang/String;

    move-result-object p1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_lookup_contacts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIdentification(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "failed"

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "identified"

    goto :goto_0

    :cond_1
    const-string p1, "not_identified"

    .line 115
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call_detection_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIdentificationBlockedNumber()V
    .locals 2

    const-string v0, "call_detection_blocked"

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIdentificationHiddenNumber()V
    .locals 2

    const-string v0, "call_detection_hidden"

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIdentificationOfflineSpam()V
    .locals 2

    const-string v0, "call_detection_offln_spm"

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIncomingNotification()V
    .locals 2

    const-string v0, "call_detection_incmng_ntf"

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupIncomingSettingChanged(Z)V
    .locals 2

    .line 214
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getSwitchLabel(Z)Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_lookup_incoming_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupMissedNotification()V
    .locals 2

    const-string v0, "call_detection_missed_ntf"

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupNotification()V
    .locals 2

    const-string v0, "call_detection_ntf"

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupOutgoingNotification()V
    .locals 2

    const-string v0, "call_detection_outgng_ntf"

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupOutgoingSettingChanged(Z)V
    .locals 2

    .line 220
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getSwitchLabel(Z)Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_lookup_outgoing_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupRoamingSettingChanged(Z)V
    .locals 2

    .line 209
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getSwitchLabel(Z)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_lookup_roaming_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLookupSpamAlert(Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call_detect_spam_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendNumberReportAdd(Ljava/lang/String;)V
    .locals 2

    .line 818
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 819
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_add"

    .line 820
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNumberReportAddError(Ljava/lang/String;)V
    .locals 2

    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 825
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_add_error"

    .line 826
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNumberReportApiCalled(Ljava/lang/String;)V
    .locals 2

    .line 812
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 813
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_api_called"

    .line 814
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNumberReportDelete(Ljava/lang/String;)V
    .locals 2

    .line 836
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 837
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_delete"

    .line 838
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNumberReportDeleteApiCalled(Ljava/lang/String;)V
    .locals 2

    .line 830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 831
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_delete_api_called"

    .line 832
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNumberReportDeleteError(Ljava/lang/String;)V
    .locals 2

    .line 842
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 843
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_report_delete_error"

    .line 844
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOwDfpBidResponse(Ljava/lang/String;D)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_bid_response_pm_ow_dfp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->priceParam(D)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOwDfpPartnerWinAction(Ljava/lang/String;D)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_bid_winner_pm_ow_dfp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->priceParam(D)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOwDfpRequestedWithBidDataAction(Ljava/lang/String;D)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_request_bid_pm_ow_dfp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->priceParam(D)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPhoneLanguageVsBackendParamLangCode()V
    .locals 5

    .line 789
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    .line 791
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "-"

    const-string v4, ""

    .line 792
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language_support"

    .line 793
    invoke-direct {p0, v0, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPolicyPageOpenError(Ljava/lang/String;)V
    .locals 2

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 775
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_policy_open_error"

    .line 776
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPolicyPageOpenSuccess(J)V
    .locals 1

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 781
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 782
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_policy_open_success"

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPopupFeedbackAction(Ljava/lang/Boolean;)V
    .locals 3

    .line 527
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getAcceptedText(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_feedback_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPopupLocationSettingChanged(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_popup_location_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPopupNumberLookupAction(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4

    .line 534
    invoke-direct {p0, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getAcceptedText(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 535
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    .line 536
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popup_num_lkp_cons_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 538
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 539
    :cond_0
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendConsentCancelDeviceAction(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public sendPopupRatingAction(Ljava/lang/Boolean;)V
    .locals 3

    .line 520
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getAcceptedText(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 522
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_rating_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPostCallCallBackAction(Ljava/lang/String;)V
    .locals 1

    const-string p1, "contact_postcall_callback"

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPostCallWindowSettingChanged(Z)V
    .locals 2

    .line 231
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getSwitchLabel(Z)Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_post_call_window_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPreferencesCommitError(Ljava/lang/String;)V
    .locals 2

    .line 861
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 862
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "preferences_commit_error"

    .line 863
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPreferencesFileOpenError(Ljava/lang/String;)V
    .locals 2

    .line 849
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 850
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "preferences_file_open_error"

    .line 851
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPreferencesGetError(Ljava/lang/String;)V
    .locals 2

    .line 867
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 868
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "preferences_get_error"

    .line 869
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPreferencesRemoveError(Ljava/lang/String;)V
    .locals 2

    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "preferences_remove_error"

    .line 857
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRuntimePermissionReqResult(Ljava/lang/String;ZZ)V
    .locals 2

    const-string v0, "android.permission."

    const-string v1, ""

    .line 799
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "GRANTED"

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "DENIED_NEVER_ASK_AGAIN"

    goto :goto_0

    :cond_1
    const-string p2, "DENIED"

    .line 801
    :goto_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getPermissionReqResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 802
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->savePermissionReqResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 804
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "runtime_perm_req_result"

    .line 805
    invoke-direct {p0, p1, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public sendShareAction(Ljava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "shareableText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "share"

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendSmsAction(Ljava/lang/String;)V
    .locals 1

    const-string p1, "contact_sms"

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendSuggestedActorSelectedAction(Ljava/lang/String;)V
    .locals 2

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->valueWithLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "suggestedActorId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "autocomplete_actor_suggested"

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentAvailable()V
    .locals 2

    const-string v0, "tcf_available"

    const/4 v1, 0x0

    .line 896
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentInfoReqError()V
    .locals 2

    const-string v0, "tcf_inf_req_error"

    const/4 v1, 0x0

    .line 904
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentInfoReqException()V
    .locals 2

    const-string v0, "tcf_inf_req_exception"

    const/4 v1, 0x0

    .line 908
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentLoadFormError()V
    .locals 2

    const-string v0, "tcf_load_form_error"

    const/4 v1, 0x0

    .line 916
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentLoadFormException()V
    .locals 2

    const-string v0, "tcf_load_form_exception"

    const/4 v1, 0x0

    .line 920
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentNotAvailable()V
    .locals 2

    const-string v0, "tcf_not_available"

    const/4 v1, 0x0

    .line 900
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTcfConsentStatus(Ljava/lang/String;)V
    .locals 2

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tcf_status_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTrendingPageOpenError(Ljava/lang/String;)V
    .locals 2

    .line 720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 721
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_trending_open_error"

    .line 722
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTrendingPageOpenSuccess(J)V
    .locals 1

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 727
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 728
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_trending_open_success"

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTrendingPagePreloadError(Ljava/lang/String;)V
    .locals 2

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorType"

    .line 707
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_trending_preload_error"

    .line 708
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTrendingPagePreloadSuccess(J)V
    .locals 1

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getDelayStep(J)Ljava/lang/String;

    move-result-object p1

    .line 713
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delay"

    .line 714
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webview_trending_preload_success"

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendWidgetIsClosedAutoAction()V
    .locals 2

    const-string v0, "call_detection_closed_auto"

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendWidgetIsClosedByUserAction()V
    .locals 2

    const-string v0, "call_detection_closed_by_user"

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendWidgetIsClosedLookupCancelAction()V
    .locals 2

    const-string v0, "call_detection_closed_lkp_cancel"

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

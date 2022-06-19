.class public Lcom/callapp/contacts/activity/contact/list/UpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 1000
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/x;->a(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/z;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/z;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/c;

    .line 34
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/c;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;-><init>(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/appupdate/a;)V
    .locals 5

    .line 37
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "UpdatedFromPlayDifference"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 41
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/a;->b()I

    move-result v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 2050
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpgradeVersion"

    const-string v3, "ViewUpgradePopup"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$V-aKy69aSH_A_zaokbHLHJzBaro;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$V-aKy69aSH_A_zaokbHLHJzBaro;-><init>(Lcom/google/android/play/core/appupdate/c;)V

    .line 2069
    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/c;->a(Lcom/google/android/play/core/install/b;)V

    .line 2070
    invoke-interface {p1, p2, p0}, Lcom/google/android/play/core/appupdate/c;->a(Lcom/google/android/play/core/appupdate/a;Landroid/app/Activity;)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/install/a;)V
    .locals 3

    .line 61
    invoke-virtual {p1}, Lcom/google/android/play/core/install/a;->a()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeVersion"

    const-string v2, "StartUpgradePopup"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 65
    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/c;->b()Lcom/google/android/play/core/tasks/d;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$V-aKy69aSH_A_zaokbHLHJzBaro(Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/install/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/list/UpdateManager;->a(Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/install/a;)V

    return-void
.end method

.method public static synthetic lambda$X0AfM4ZVSvfrHo0A706VE8nDZ4I(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/appupdate/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/UpdateManager;->a(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/appupdate/a;)V

    return-void
.end method

.class public Lcom/telguarder/ApplicationConstants;
.super Ljava/lang/Object;
.source "ApplicationConstants.java"


# static fields
.field public static final ADVERT_PRELOADED_AD_EXPIRATION_MINUTES:I = 0x2d

.field public static final ADVERT_PRELOAD_TIMEOUT_SECONDS:I = 0xf

.field public static final BACKEND_X_RESPONSE_THRESHOLD_MS:I = 0x1f4

.field public static final CALL_WIDGET_AUTOMATIC_CLOSE_DELAY:J = 0x1770L

.field public static final CALL_WIDGET_AUTOMATIC_CLOSE_LONG_DELAY:J = 0xea60L

.field public static final CALL_WIDGET_TOOLTIP_HIDE_DELAY:J = 0x1388L

.field public static final CALL_WIDGET_TOOLTIP_MAX_HIDE_COUNT:I = 0xa

.field public static final DEFAULT_ADVERT_PLACEMENT:Ljava/lang/String; = "postcall"

.field public static final LISTBANNER_ADVERT_PLACEMENT:Ljava/lang/String; = "listbanner"

.field public static final MAX_DURATION_FOR_FRESH_CACHE:J = 0x5265c00L

.field public static final MAX_DURATION_FOR_FRESH_MCC:J = 0xea60L

.field public static final OFFLINE_SPAM_DB_VERSION:I = 0x5

.field public static final PHONE_CALL_LOG_FINAL_LIMIT:I = 0xc8

.field public static final PHONE_CALL_LOG_INITIAL_LIMIT:I = 0xa

.field public static final POSTCALL_ADVERT_PLACEMENT:Ljava/lang/String; = "postcall"

.field public static POWERMANAGER_INTENTS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_TRESHOLD_TIME:J = 0xf731400L

.field public static final RESULTS_PER_PAGE_SIZE_DEFAULT:I = 0xa

.field public static final SLOW_RESPONSE_THRESHOLD_MS:I = 0xbb8

.field public static final SPAM_COMMENT_ITEMS_PER_AD:I = 0x12

.field private static advertNetworkEnabled:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/telguarder/features/advertisements/AdvertNetworkName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    .line 30
    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/content/Intent;

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    const-string v4, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    goto :goto_0

    :cond_0
    const-string v4, "com.huawei.systemmanager.appcontrol.activity.StartupAppControlActivity"

    :goto_0
    const-string v5, "com.huawei.systemmanager"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.systemmanager.optimize.process.ProtectActivity"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.securitycenter"

    const-string v5, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.letv.android.letvsafe"

    const-string v5, "com.letv.android.letvsafe.AutobootManageActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.coloros.safecenter"

    const-string v5, "com.coloros.safecenter.permission.startup.StartupAppListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.coloros.safecenter.startupapp.StartupAppListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oppo.safe"

    const-string v5, "com.oppo.safe.permission.startup.StartupAppListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.iqoo.secure"

    const-string v5, "com.iqoo.secure.ui.phoneoptimize.AddWhiteListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vivo.permissionmanager"

    const-string v5, "com.vivo.permissionmanager.activity.BgStartUpManagerActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.asus.mobilemanager"

    const-string v5, "com.asus.mobilemanager.entry.FunctionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mobilemanager://function/entry/AutoStart"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.asus.mobilemanager.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.lool"

    const-string v5, "com.samsung.android.sm.ui.battery.BatteryActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.pitroad"

    const-string v5, "com.htc.pitroad.landingpage.activity.LandingPageActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/telguarder/ApplicationConstants;->POWERMANAGER_INTENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    sget-object v1, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/telguarder/ApplicationConstants;->advertNetworkEnabled:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method

.method public static isCallable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

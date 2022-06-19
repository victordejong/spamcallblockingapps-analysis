.class public Lcom/millennialmedia/MMSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MMSDK"

.field public static final VERSION:Ljava/lang/String; = "6.7.0-c5b3e1a"

.field private static appInfo:Lcom/millennialmedia/AppInfo;

.field public static initialized:Z

.field public static locationEnabled:Z

.field public static final registeredPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static testInfo:Lcom/millennialmedia/TestInfo;

.field private static userData:Lcom/millennialmedia/UserData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfo()Lcom/millennialmedia/AppInfo;
    .locals 1

    sget-object v0, Lcom/millennialmedia/MMSDK;->appInfo:Lcom/millennialmedia/AppInfo;

    return-object v0
.end method

.method public static getTestInfo()Lcom/millennialmedia/TestInfo;
    .locals 1

    sget-object v0, Lcom/millennialmedia/MMSDK;->testInfo:Lcom/millennialmedia/TestInfo;

    return-object v0
.end method

.method public static getUserData()Lcom/millennialmedia/UserData;
    .locals 1

    sget-object v0, Lcom/millennialmedia/MMSDK;->userData:Lcom/millennialmedia/UserData;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Application;)V
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to initialize SDK, specified activity is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Activity;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager;->setInitialStateForUnknownActivity(ILcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)V

    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_2

    sget-boolean v2, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v2, :cond_0

    sget-object p0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string v0, "Millennial Media SDK already initialized"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->initialize()V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->init(Landroid/app/Application;)V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->initialize()V

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->init()V

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPackagedAdapters()V

    invoke-static {}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerPackagedAdapters()V

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerPackagedControllers()V

    invoke-static {}, Lcom/millennialmedia/MMSDK;->registerKnownMediationAdapters()V

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPackagedPlayListItemTypes()V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->init()V

    sput-boolean p0, Lcom/millennialmedia/MMSDK;->initialized:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK Initialization completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to initialize SDK. Please provide a valid Application instance."

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    return v0
.end method

.method public static registerAdAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static registerAdController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    return-void
.end method

.method private static registerKnownMediationAdapters()V
    .locals 5

    const-class v0, Lcom/millennialmedia/NativeAd;

    const-class v1, Lcom/millennialmedia/InlineAd;

    const-class v2, Lcom/millennialmedia/InterstitialAd;

    const-class v3, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {v1, v3}, Lcom/millennialmedia/MMSDK;->registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v3, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v2, v3}, Lcom/millennialmedia/MMSDK;->registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v3, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {v0, v3}, Lcom/millennialmedia/MMSDK;->registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V

    const-string v3, "ADCOLONY"

    const-string v4, "com.millennialmedia.mediation.AdColonyCustomEventInterstitial"

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v3, "ADMOB"

    const-string v4, "com.millennialmedia.mediation.AdMobCustomEventBanner"

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v4, "com.millennialmedia.mediation.AdMobCustomEventInterstitial"

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v3, "FACEBOOK"

    const-string v4, "com.millennialmedia.mediation.FacebookCustomEventBanner"

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v4, "com.millennialmedia.mediation.FacebookCustomEventInterstitial"

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v4, "com.millennialmedia.mediation.FacebookCustomEventNative"

    invoke-static {v3, v0, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v3, "INMOBI"

    const-string v4, "com.millennialmedia.mediation.InMobiCustomEventBanner"

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v4, "com.millennialmedia.mediation.InMobiCustomEventInterstitial"

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v3, "MOPUB"

    const-string v4, "com.millennialmedia.mediation.MoPubCustomEventBanner"

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v1, "com.millennialmedia.mediation.MoPubCustomEventNative"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "com.millennialmedia.mediation.MoPubCustomEventInterstitial"

    invoke-static {v3, v2, v0}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "CHARTBOOST"

    const-string v1, "com.millennialmedia.mediation.ChartboostCustomEventInterstitial"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/mediation/CustomEventRegistry;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static registerPlayListServerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V

    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered plugin with ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> and version <"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string p1, "Unable to register plugin, neither id or version can be null or empty"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string p1, "Unable to register plugin, SDK must be initialized first"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setActiveAdServerAdapter(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->setActivePlayListServerAdapter(Ljava/lang/Class;)V

    return-void
.end method

.method public static setAppInfo(Lcom/millennialmedia/AppInfo;)V
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/millennialmedia/MMSDK;->appInfo:Lcom/millennialmedia/AppInfo;

    return-void

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to set app info, SDK must be initialized first"

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLocationEnabled(Z)V
    .locals 3

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting location enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-boolean p0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    return-void

    :cond_1
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to set location state, SDK must be initialized first"

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTestInfo(Lcom/millennialmedia/TestInfo;)V
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/millennialmedia/MMSDK;->testInfo:Lcom/millennialmedia/TestInfo;

    return-void

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to set test info, SDK must be initialized first"

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUserData(Lcom/millennialmedia/UserData;)V
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/millennialmedia/MMSDK;->userData:Lcom/millennialmedia/UserData;

    return-void

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to set user data, SDK must be initialized first"

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

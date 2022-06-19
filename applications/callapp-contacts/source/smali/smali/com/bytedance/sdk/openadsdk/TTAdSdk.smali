.class public final Lcom/bytedance/sdk/openadsdk/TTAdSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Z

.field private static c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static final d:Lcom/bytedance/sdk/openadsdk/TTAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    .line 50
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/u;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 7

    .line 357
    new-instance v6, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;

    const-string v1, "initMustBeCall"

    move-object v0, v6

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;-><init>(Ljava/lang/String;JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getHttpStack()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getHttpStack()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isAsyncInit()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Z

    .line 163
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getCoppa()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setCoppa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getGDPR()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isPaid()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setPaid(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 168
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setKeywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getTitleBarTheme()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isAllowShowNotify()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isUseTextureView()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->isUseTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getNeedClearTaskReset()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getTTSecAbs()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->b()V

    .line 178
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/m;->a()V

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 191
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 211
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V
    .locals 1

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 230
    :cond_0
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d;->a(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->a()V

    .line 237
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 239
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->a()V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 1

    const-string v0, "Context is null, please check."

    .line 216
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TTAdConfig is null, please check."

    .line 217
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 2

    .line 245
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;

    const-string v1, "init sync"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    .line 278
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig;Landroid/content/Context;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 151
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object v0
.end method

.method public static getCoppa()I
    .locals 1

    .line 340
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getCoppa()I

    move-result v0

    return v0
.end method

.method public static getGdpr()I
    .locals 1

    .line 351
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getCoppa()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 6

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 77
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/core/k;->c:Z

    .line 79
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    if-eqz v3, :cond_0

    .line 80
    sget-object p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 84
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 85
    invoke-static {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V

    .line 86
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 88
    invoke-static {v4, v5, v3, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 89
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    sput-boolean v3, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    .line 95
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object p0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Thread ! Please exec TTAdSdk.init in main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 5

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    .line 111
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/core/k;->c:Z

    .line 113
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    .line 115
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 121
    invoke-static {v3, v4, v2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Thread ! Please exec TTAdSdk.init in main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    return v0
.end method

.method public static setCoppa(I)V
    .locals 1

    .line 332
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setCoppa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 334
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Z)V

    return-void
.end method

.method public static setGdpr(I)V
    .locals 1

    .line 344
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 346
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Z)V

    return-void
.end method

.method public static updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g;->d(Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/g;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

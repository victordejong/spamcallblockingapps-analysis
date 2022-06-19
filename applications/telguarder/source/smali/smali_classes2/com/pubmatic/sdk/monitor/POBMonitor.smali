.class public Lcom/pubmatic/sdk/monitor/POBMonitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/monitor/POBMonitor$f;
    }
.end annotation


# static fields
.field private static final SERVER_DOMAIN:Ljava/lang/String; = "https://ads.pubmatic.com"

.field private static final TAG:Ljava/lang/String; = "POBMonitor"

.field private static final URL_PATH:Ljava/lang/String; = "/openbidsdk/monitor/app.html"

.field private static application:Landroid/app/Application;


# instance fields
.field private dialog:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

.field private monitorData:Lcom/pubmatic/sdk/monitor/POBMonitor$f;

.field private monitorUIDelegate:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

.field private monitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

.field private previousMonitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

.field private touchPointLocation:Landroid/graphics/Point;

.field private webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->touchPointLocation:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorData:Lcom/pubmatic/sdk/monitor/POBMonitor$f;

    new-instance p1, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    sget-object v0, Lcom/pubmatic/sdk/monitor/POBMonitor;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitor$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$b;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->initWebView(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V

    new-instance p1, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    sget-object v0, Lcom/pubmatic/sdk/monitor/POBMonitor;->application:Landroid/app/Application;

    invoke-direct {p1, v0}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorUIDelegate:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$c;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->start(Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->touchPointLocation:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->showDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;)Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->dialog:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getLogData(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorWebView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorUIDelegate:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->addButton(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$802(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/monitor/POBMonitorView;)Lcom/pubmatic/sdk/monitor/POBMonitorView;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->previousMonitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/monitor/POBMonitorView;)Lcom/pubmatic/sdk/monitor/POBMonitorView;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->previousMonitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    return-object p1
.end method

.method private addButton(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorData:Lcom/pubmatic/sdk/monitor/POBMonitor$f;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    iget-boolean v0, v0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->isLoaded:Z

    const-string v1, "POBMonitor"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitorView;

    iget-object v2, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->touchPointLocation:Landroid/graphics/Point;

    invoke-direct {v0, p1, v2}, Lcom/pubmatic/sdk/monitor/POBMonitorView;-><init>(Landroid/app/Activity;Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    new-instance v2, Lcom/pubmatic/sdk/monitor/POBMonitor$d;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitor$d;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/monitor/POBMonitorView;->setListener(Lcom/pubmatic/sdk/monitor/POBMonitorView$a;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->monitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->previousMonitorView:Lcom/pubmatic/sdk/monitor/POBMonitorView;

    const-string p1, "Touch point attached"

    goto :goto_0

    :cond_1
    const-string p1, "Not ready yet to attach touch Point"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\+"

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\%21"

    const-string v1, "!"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\%27"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\%28"

    const-string v1, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\%29"

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\%7E"

    const-string v1, "~"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getApplicationUsingReflection()Landroid/app/Application;
    .locals 3

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "currentApplication"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method private static getLogData(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)Lorg/json/JSONObject;
    .locals 7

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mLogLevel"

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getLogField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mMsg"

    invoke-static {v2, v3}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getLogField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mTAG"

    invoke-static {v3, v4}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getLogField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "PMSDK_TAG"

    invoke-static {v4, v5}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getLogField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "logLevel"

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "file"

    :try_start_2
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "sdk_tag"

    :try_start_3
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "line"

    invoke-virtual {v5, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "function"

    invoke-virtual {v5, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "POBMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLogField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->logger()Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/log/PMLog;->addLogger(Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;)V

    return-void
.end method

.method public static load()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/pubmatic/sdk/monitor/POBMonitor;->getApplicationUsingReflection()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/monitor/POBMonitor;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->process(Ljava/lang/String;)Lcom/pubmatic/sdk/monitor/POBMonitor$f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openbidsdk/monitor/app.html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v1, "https://ads.pubmatic.com/openbidsdk/monitor/app.html"

    :goto_0
    :try_start_1
    sget-object v2, Lcom/pubmatic/sdk/monitor/POBMonitor;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "%s?plugins=%d&pubId=%s&bundleId=%s&ifa=%s"

    const/4 v4, 0x5

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->c(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    sget-object v5, Lcom/pubmatic/sdk/monitor/POBMonitor;->application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)V

    invoke-direct {v2, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->init(Ljava/lang/String;)V

    sget-object v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->All:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setLogLevel(Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POBMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private logger()Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitor$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$a;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V

    return-object v0
.end method

.method private static process(Ljava/lang/String;)Lcom/pubmatic/sdk/monitor/POBMonitor$f;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "OB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/pubmatic/sdk/monitor/POBMonitor$f;

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor$a;)V

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v2, v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/String;)Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    aget-object p0, p0, v1

    invoke-static {v2, p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "POBMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    return-object v0
.end method

.method private showDialog(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->dialog:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    iget-object v1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->webView:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    new-instance v2, Lcom/pubmatic/sdk/monitor/POBMonitor$e;

    invoke-direct {v2, p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$e;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$OnDialogCloseListener;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->dialog:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor;->dialog:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;->show()V

    return-void
.end method

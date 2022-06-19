.class public Lcom/millennialmedia/internal/JSBridge;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;
    }
.end annotation


# static fields
.field private static final AD_NOT_CLICKED_MESSAGE:Ljava/lang/String; = "Ad has not been clicked"

.field private static final CALLBACK_ID_KEY:Ljava/lang/String; = "callbackId"

.field private static final CANNOT_EXPAND_INTERSTITIAL_MESSAGE:Ljava/lang/String; = "Cannot expand interstitial"

.field private static final CANNOT_EXPAND_STATE_MESSAGE:Ljava/lang/String; = "Cannot expand in current state<%s>"

.field private static final CANNOT_RESIZE_INTERSTITIAL_MESSAGE:Ljava/lang/String; = "Cannot resize interstitial"

.field private static final CANNOT_RESIZE_STATE_MESSAGE:Ljava/lang/String; = "Cannot resize in current state<%s>"

.field private static final CREATE_CALENDAR_EVENT_MRAID_OP:Ljava/lang/String; = "createCalendarEvent"

.field private static final EXPAND_FAILED_MESSAGE:Ljava/lang/String; = "Unable to expand"

.field private static final EXPAND_MRAID_OP:Ljava/lang/String; = "expand"

.field private static final HEIGHT_KEY:Ljava/lang/String; = "height"

.field private static final HTTP_GET_TIMEOUT:I = 0x3a98

.field private static final INVALID_ORIENTATION_MESSAGE:Ljava/lang/String; = "Invalid orientation specified <%s>"

.field private static final JS_MRAID_NAMESPACE:Ljava/lang/String; = "MmJsBridge.mraid"

.field private static final JS_SET_PLACEMENT_TYPE:Ljava/lang/String; = "MmJsBridge.mraid.setPlacementType"

.field private static final JS_SET_POSITIONS:Ljava/lang/String; = "MmJsBridge.mraid.setPositions"

.field private static final JS_SET_STATE:Ljava/lang/String; = "MmJsBridge.mraid.setState"

.field private static final JS_SET_SUPPORTS:Ljava/lang/String; = "MmJsBridge.mraid.setSupports"

.field private static final JS_SET_VIEWABLE:Ljava/lang/String; = "MmJsBridge.mraid.setViewable"

.field private static final JS_THROW_MRAID_ERROR:Ljava/lang/String; = "MmJsBridge.mraid.throwMraidError"

.field private static final MM_JS_BRIDGE_CALL_CALLBACK:Ljava/lang/String; = "MmJsBridge.callbackManager.callCallback"

.field private static final MM_JS_BRIDGE_SET_LOG_LEVEL:Ljava/lang/String; = "MmJsBridge.logging.setLogLevel"

.field private static final NOT_SUPPORTED_MESSAGE:Ljava/lang/String; = "Not supported"

.field private static final NO_PICTURE_PATH_MESSAGE:Ljava/lang/String; = "No path specified for picture"

.field private static final NO_VIDEO_PATH_MESSAGE:Ljava/lang/String; = "No path specified for video"

.field private static final PARAMETERS_NOT_PROVIDED_MESSAGE:Ljava/lang/String; = "No parameters provided"

.field private static final PLAY_VIDEO_MRAID_OP:Ljava/lang/String; = "playVideo"

.field private static final RESIZE_FAILED_MESSAGE:Ljava/lang/String; = "Unable to resize"

.field private static final RESIZE_MRAID_OP:Ljava/lang/String; = "resize"

.field private static final SCROLL_IDLE_TIMEOUT:I = 0x1c2

.field private static final SCROLL_UPDATE_INTERVAL:I = 0x64

.field private static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final STATE_LOADING:Ljava/lang/String; = "loading"

.field private static final STATE_RESIZED:Ljava/lang/String; = "resized"

.field private static final SUPPORTS_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final SUPPORTS_INLINE_VIDEO:Ljava/lang/String; = "inlineVideo"

.field private static final SUPPORTS_SMS:Ljava/lang/String; = "sms"

.field private static final SUPPORTS_STORE_PICTURE:Ljava/lang/String; = "storePicture"

.field private static final SUPPORTS_TEL:Ljava/lang/String; = "tel"

.field private static final TAG:Ljava/lang/String; = "JSBridge"

.field private static final URL_KEY:Ljava/lang/String; = "url"

.field private static final URL_OPEN_FAILED_MESSAGE:Ljava/lang/String; = "Unable to open url <%s>"

.field private static final VIDEO_ID_KEY:Ljava/lang/String; = "videoId"

.field private static final WEBVIEW_NOT_VALID_MESSAGE:Ljava/lang/String; = "Webview is no longer valid"

.field private static final WIDTH_KEY:Ljava/lang/String; = "width"

.field private static final bodyStartPattern:Ljava/util/regex/Pattern;

.field public static final bodyStyling:Ljava/lang/String; = "<style>body {margin:0;padding:0;}</style>"

.field private static final headStartPattern:Ljava/util/regex/Pattern;

.field private static final htmlStartPattern:Ljava/util/regex/Pattern;

.field private static final mraidJsReplacePattern:Ljava/util/regex/Pattern;

.field private static final nonMetaPattern:Ljava/util/regex/Pattern;

.field public static final scriptFilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final secureContentMeta:Ljava/lang/String; = "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\">"

.field public static final useActionsQueue:Z


# instance fields
.field private volatile actionsQueue:Lorg/json/JSONArray;

.field private volatile apiCallsEnabled:Z

.field public currentState:Ljava/lang/String;

.field public hasSize:Z

.field public final isInterstitial:Z

.field public isResizing:Z

.field public isTwoPartExpand:Z

.field public isViewable:Z

.field private volatile jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

.field public jsInjected:Z

.field public lastOrientation:I

.field private volatile mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field public ready:Z

.field public requestedOrientation:I

.field public scriptsAwaitingLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile scrollIdleTimeout:J

.field private volatile scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public useCustomClose:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "<html[^>]*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->htmlStartPattern:Ljava/util/regex/Pattern;

    const-string v0, "<head[^>]*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->headStartPattern:Ljava/util/regex/Pattern;

    const-string v0, "<body[^>]*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->bodyStartPattern:Ljava/util/regex/Pattern;

    const-string v0, "<(?!meta)[^>]*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->nonMetaPattern:Ljava/util/regex/Pattern;

    const-string v0, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script\\s*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->mraidJsReplacePattern:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/JSBridge;->scriptFilesCache:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    const-string v0, "loading"

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz p1, :cond_0

    new-instance p2, Lcom/millennialmedia/internal/JSBridge$1;

    invoke-direct {p2, p0}, Lcom/millennialmedia/internal/JSBridge$1;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/millennialmedia/internal/JSBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/JSBridge;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/millennialmedia/internal/JSBridge;)J
    .locals 2

    iget-wide v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollIdleTimeout:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/JSBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static buildScriptStatements(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>window.mmSdkVersion=\"6.7.0-c5b3e1a\";</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "<script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->getAssetContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAssetContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->scriptFilesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmadsdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->readAssetContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedFeatures()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sms"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isSmsSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "tel"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isTelSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "calendar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "storePicture"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageSupported()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "inlineVideo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v3, "Error creating supports dictionary"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private isJavascriptReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public areApiCallsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    return v0
.end method

.method public varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/JSBridge;->isJavascriptReady()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsBridge scripts are not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-boolean p2, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    if-eqz p2, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "functionName"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queuing js: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " args: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    if-nez p1, :cond_3

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    :cond_3
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/millennialmedia/internal/JSBridge$2;

    invoke-direct {p2, p0, p1}, Lcom/millennialmedia/internal/JSBridge$2;-><init>(Lcom/millennialmedia/internal/JSBridge;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v0, "Unable to execute javascript function"

    invoke-static {p2, v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public createScriptsAwaitingLoadList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-boolean v1, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    if-eqz v1, :cond_0

    const-string v1, "actionsQueue.js"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "mm.js"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mraid.js"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public enableApiCalls()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    return-void
.end method

.method public getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewDimensionsRelativeToContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(Landroid/graphics/Rect;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "x"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v1, "Error creating json object"

    invoke-static {p1, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public injectJSBridge(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v2, "MmInjectedFunctions"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v2, "MmInjectedFunctionsMraid"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v2, "MmInjectedFunctionsInlineVideo"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v2, "MmInjectedFunctionsMmjs"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v2, "MmInjectedFunctionsVast"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->injectExtraAPIs()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getExtraScriptToInject()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->createScriptsAwaitingLoadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    if-eqz p2, :cond_3

    const-string p2, "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\"><style>body {margin:0;padding:0;}</style>"

    goto :goto_1

    :cond_3
    const-string p2, "<style>body {margin:0;padding:0;}</style>"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    invoke-static {p2}, Lcom/millennialmedia/internal/JSBridge;->buildScriptStatements(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->mraidJsReplacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->htmlStartPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "<html>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    sget-object v5, Lcom/millennialmedia/internal/JSBridge;->headStartPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result p1

    sget-object v5, Lcom/millennialmedia/internal/JSBridge;->nonMetaPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    invoke-virtual {v2, p1, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/millennialmedia/internal/JSBridge;->bodyStartPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const-string v6, "<head>"

    if-eqz v5, :cond_8

    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</head>"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</head><body>"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_3
    if-nez v4, :cond_a

    const-string p1, "</html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string p2, "No callbackId provided"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    new-array p2, v0, [Ljava/lang/Object;

    :cond_2
    array-length v1, p2

    add-int/2addr v1, v0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x1

    aget-object v1, p2, v1

    aput-object v1, v0, p1

    move v1, p1

    goto :goto_0

    :cond_3
    const-string p1, "MmJsBridge.callbackManager.callCallback"

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    return v0
.end method

.method public sendPositions(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 6

    const-string v0, "height"

    const-string v1, "width"

    iget-boolean v2, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/millennialmedia/internal/utils/ViewUtils;->getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentPosition"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "screenSize"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "maxSize"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "MmJsBridge.mraid.setPositions"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v0, "Error creating json object in setCurrentPosition"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/JSBridge$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/JSBridge$5;-><init>(Lcom/millennialmedia/internal/JSBridge;Lcom/millennialmedia/internal/MMWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 2

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    const-string p1, "ERROR"

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    const-string p1, "INFO"

    goto :goto_0

    :cond_1
    const-string p1, "DEBUG"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MmJsBridge.logging.setLogLevel"

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setReadyState()V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/JSBridge;->isJavascriptReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    new-instance v0, Lcom/millennialmedia/internal/JSBridge$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/JSBridge$6;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollIdleTimeout:J

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/JSBridge$4;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/JSBridge$4;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "resized"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/JSBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/JSBridge$3;-><init>(Lcom/millennialmedia/internal/JSBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setStateCollapsed()V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v0, :cond_0

    const-string v0, "hidden"

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public setStateExpanded()V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v0, :cond_0

    const-string v0, "default"

    goto :goto_0

    :cond_0
    const-string v0, "expanded"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public setStateResized()V
    .locals 1

    const-string v0, "resized"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public setStateResizing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    return-void
.end method

.method public setStateUnresized()V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public setTwoPartExpand()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    return-void
.end method

.method public setViewable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MmJsBridge.mraid.setViewable"

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public throwMraidError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID error - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "MmJsBridge.mraid.throwMraidError"

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

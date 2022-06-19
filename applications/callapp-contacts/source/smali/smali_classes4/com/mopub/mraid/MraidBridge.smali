.class public Lcom/mopub/mraid/MraidBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView;,
        Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    }
.end annotation


# instance fields
.field a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field b:Z

.field private final c:Lcom/mopub/mraid/PlacementType;

.field private final d:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private f:Lcom/mopub/mobileads/ViewGestureDetector;

.field private g:Z

.field private final h:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;Z)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Lcom/mopub/mraid/MraidBridge$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$4;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->h:Landroid/webkit/WebViewClient;

    .line 107
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/PlacementType;

    .line 108
    iput-object p2, p0, Lcom/mopub/mraid/MraidBridge;->d:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 109
    iput-boolean p3, p0, Lcom/mopub/mraid/MraidBridge;->g:Z

    return-void
.end method

.method constructor <init>(Lcom/mopub/mraid/PlacementType;Z)V
    .locals 1

    .line 100
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;Z)V

    return-void
.end method

.method private static a(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    if-lt p0, p1, :cond_0

    const p1, 0x186a0

    if-gt p0, p1, :cond_0

    return p0

    .line 550
    :cond_0
    new-instance p1, Lcom/mopub/mraid/a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Integer parameter out of range: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    return-object p0
.end method

.method private static a(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    if-nez p0, :cond_0

    return p1

    .line 560
    :cond_0
    invoke-static {p0}, Lcom/mopub/mraid/MraidBridge;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/Map;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    const-string v0, "shouldUseCustomClose"

    .line 543
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;Z)Z

    move-result p0

    and-int/2addr p0, p1

    return p0
.end method

.method static synthetic b(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mobileads/ViewGestureDetector;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidBridge;->f:Lcom/mopub/mobileads/ViewGestureDetector;

    return-object p0
.end method

.method private static b(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    const/16 v0, 0xa

    .line 522
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 524
    :catch_0
    new-instance v0, Lcom/mopub/mraid/a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid numeric parameter: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/mopub/mraid/MraidBridge;)V
    .locals 1

    .line 5407
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5411
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->b:Z

    .line 5412
    iget-object p0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz p0, :cond_0

    .line 5413
    invoke-interface {p0}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageLoaded()V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->f:Lcom/mopub/mobileads/ViewGestureDetector;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    const-string v0, "true"

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "false"

    .line 566
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 569
    :cond_1
    new-instance v0, Lcom/mopub/mraid/a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid boolean parameter: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 587
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 589
    :catch_0
    new-instance v0, Lcom/mopub/mraid/a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid URL parameter: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    new-instance p0, Lcom/mopub/mraid/a;

    const-string v0, "Parameter cannot be null"

    invoke-direct {p0, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :cond_0
    return-void
.end method

.method final a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
    .locals 3

    .line 117
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 118
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setScrollContainer(Z)V

    .line 125
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVerticalScrollBarEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setBackgroundColor(I)V

    .line 129
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->h:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$1;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$1;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 155
    new-instance p1, Lcom/mopub/mobileads/ViewGestureDetector;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->f:Lcom/mopub/mobileads/ViewGestureDetector;

    .line 157
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$2;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$2;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$3;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$3;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    .line 1273
    iput-object v0, p1, Lcom/mopub/mraid/MraidBridge$MraidWebView;->i:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method

.method final a(Lcom/mopub/mraid/PlacementType;)V
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.setPlacementType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lcom/mopub/mraid/PlacementType;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/mopub/mraid/ViewState;)V
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.setState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lcom/mopub/mraid/ViewState;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "javascript:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final a(Z)V
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.setIsViewable("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(ZZZZZ)V
    .locals 0

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mraidbridge.setSupports(false"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ",false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method final b()Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->isMraidViewable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 358
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mopub"

    .line 364
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "failLoad"

    .line 365
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/PlacementType;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz p1, :cond_0

    .line 367
    invoke-interface {p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageFailedToLoad()V

    :cond_0
    return v1

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v5

    const-string v6, "mraid"

    if-eqz v5, :cond_2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 377
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraid://open?url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Invalid MRAID URL encoding: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 382
    sget-object p1, Lcom/mopub/mraid/MraidJavascriptCommand;->OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "Non-mraid URL is invalid"

    invoke-direct {p0, p1, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    return v0

    .line 387
    :cond_2
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 388
    invoke-static {v4}, Lcom/mopub/mraid/MraidJavascriptCommand;->fromJavascriptString(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;

    move-result-object p1

    .line 390
    :try_start_2
    invoke-static {v2}, Lcom/mopub/network/MoPubRequestUtils;->getQueryParamMap(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    .line 1436
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {p1, v3}, Lcom/mopub/mraid/MraidJavascriptCommand;->requiresClick(Lcom/mopub/mraid/PlacementType;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1437
    :cond_3
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "Cannot execute this command unless the user clicks"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v3, :cond_12

    .line 1444
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v3, :cond_11

    .line 1448
    sget-object v3, Lcom/mopub/mraid/MraidBridge$5;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_2
    .catch Lcom/mopub/mraid/a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "url"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 1489
    :pswitch_0
    :try_start_3
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "Unspecified MRAID Javascript command"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :pswitch_1
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "Unsupported MRAID Javascript command"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v0, "allowOrientationChange"

    .line 1477
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "forceOrientation"

    .line 1478
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "portrait"

    .line 2530
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2531
    sget-object v2, Lcom/mopub/mraid/b;->PORTRAIT:Lcom/mopub/mraid/b;

    goto :goto_2

    :cond_5
    const-string v3, "landscape"

    .line 2532
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2533
    sget-object v2, Lcom/mopub/mraid/b;->LANDSCAPE:Lcom/mopub/mraid/b;

    goto :goto_2

    :cond_6
    const-string v3, "none"

    .line 2534
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2535
    sget-object v2, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    .line 1480
    :goto_2
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v3, v0, v2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onSetOrientationProperties(ZLcom/mopub/mraid/b;)V

    goto/16 :goto_7

    .line 2537
    :cond_7
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v3, "Invalid orientation: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :pswitch_3
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 1474
    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v2, v0}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onOpen(Ljava/net/URI;)V

    goto/16 :goto_7

    .line 1470
    :pswitch_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean v3, p0, Lcom/mopub/mraid/MraidBridge;->g:Z

    invoke-static {v2, v3}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/util/Map;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto/16 :goto_7

    .line 1466
    :pswitch_5
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    .line 1578
    :cond_8
    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 1467
    :goto_3
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean v4, p0, Lcom/mopub/mraid/MraidBridge;->g:Z

    invoke-static {v2, v4}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/util/Map;Z)Z

    move-result v2

    invoke-interface {v3, v0, v2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onExpand(Ljava/net/URI;Z)V

    goto/16 :goto_7

    :pswitch_6
    const-string v3, "width"

    .line 1454
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/mraid/MraidBridge;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v0}, Lcom/mopub/mraid/MraidBridge;->a(II)I

    move-result v5

    const-string v3, "height"

    .line 1455
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/mraid/MraidBridge;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v0}, Lcom/mopub/mraid/MraidBridge;->a(II)I

    move-result v6

    const-string v0, "offsetX"

    .line 1456
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->c(Ljava/lang/String;)I

    move-result v0

    const v3, -0x186a0

    invoke-static {v0, v3}, Lcom/mopub/mraid/MraidBridge;->a(II)I

    move-result v7

    const-string v0, "offsetY"

    .line 1457
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/mopub/mraid/MraidBridge;->a(II)I

    move-result v8

    const-string v0, "customClosePosition"

    .line 1459
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 1496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v9, v3

    goto :goto_5

    :cond_9
    const-string v3, "top-left"

    .line 1500
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1501
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_a
    const-string v3, "top-right"

    .line 1502
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1503
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_b
    const-string v3, "center"

    .line 1504
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1505
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_c
    const-string v3, "bottom-left"

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1507
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_d
    const-string v3, "bottom-right"

    .line 1508
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1509
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_e
    const-string v3, "top-center"

    .line 1510
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1511
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_f
    const-string v3, "bottom-center"

    .line 1512
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1513
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :goto_5
    const-string v0, "allowOffscreen"

    .line 1460
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;Z)Z

    move-result v10

    .line 1461
    iget-object v4, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface/range {v4 .. v10}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    .line 1463
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean v2, p0, Lcom/mopub/mraid/MraidBridge;->g:Z

    invoke-interface {v0, v2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto :goto_7

    .line 1515
    :cond_10
    new-instance v2, Lcom/mopub/mraid/a;

    const-string v3, "Invalid close position: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1450
    :pswitch_7
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onClose()V

    goto :goto_7

    .line 1445
    :cond_11
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "The current WebView is being destroyed"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_12
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "Invalid state to execute this command"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/mopub/mraid/a; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 392
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    .line 3229
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.nativeCallComplete("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3229
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return v1

    :cond_13
    return v0

    .line 353
    :catch_3
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Invalid MRAID URL: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 354
    sget-object p1, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v0, "Mraid command sent an invalid URL"

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final c()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyScreenMetrics(Lcom/mopub/mraid/c;)V
    .locals 3

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraidbridge.setScreenSize("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4075
    iget-object v1, p1, Lcom/mopub/mraid/c;->b:Landroid/graphics/Rect;

    .line 630
    invoke-static {v1}, Lcom/mopub/mraid/MraidBridge;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    iget-object v1, p1, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    .line 632
    invoke-static {v1}, Lcom/mopub/mraid/MraidBridge;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    iget-object v1, p1, Lcom/mopub/mraid/c;->f:Landroid/graphics/Rect;

    .line 634
    invoke-static {v1}, Lcom/mopub/mraid/MraidBridge;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4120
    iget-object v1, p1, Lcom/mopub/mraid/c;->h:Landroid/graphics/Rect;

    .line 636
    invoke-static {v1}, Lcom/mopub/mraid/MraidBridge;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mraidbridge.notifySizeChangeEvent("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5105
    iget-object p1, p1, Lcom/mopub/mraid/c;->f:Landroid/graphics/Rect;

    .line 639
    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setContentHtml(Ljava/lang/String;)V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MRAID bridge called setContentHtml before WebView was attached"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 197
    :cond_0
    iput-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->b:Z

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->e:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MRAID bridge called setContentHtml while WebView was not attached"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 208
    :cond_0
    iput-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->b:Z

    .line 209
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

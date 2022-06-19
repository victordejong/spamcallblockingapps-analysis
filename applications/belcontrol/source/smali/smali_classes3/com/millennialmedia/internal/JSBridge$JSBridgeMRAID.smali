.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSBridgeMRAID"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: close("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$1;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: createCalendarEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "createCalendarEvent"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "parameters"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "No parameters provided"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Webview is no longer valid"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils;->addEvent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V

    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: expand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "expand"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v2, p1, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v2, :cond_2

    const-string v0, "Cannot expand interstitial"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-direct {v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;-><init>()V

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    goto :goto_0

    :cond_3
    iput v4, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    :goto_0
    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    goto :goto_1

    :cond_4
    iput v4, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    :goto_1
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean p1, p1, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    const-string v2, "useCustomClose"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v5

    iput-boolean p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget p1, p1, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    iput p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    const/4 p1, 0x0

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    new-instance p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$2;

    invoke-direct {p1, p0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$2;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "open"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Unable to open url <%s>"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: playVideo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "playVideo"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "No path specified for video"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Webview is no longer valid"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/internal/utils/MediaUtils;->startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;)V

    return-void
.end method

.method public resize(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: resize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "resize"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v2, p1, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v2, :cond_2

    const-string v0, "Cannot resize interstitial"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-direct {v1}, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;-><init>()V

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    const-string v2, "offsetX"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetX:I

    const-string v2, "offsetY"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetY:I

    const-string p1, "customClosePosition"

    const-string v2, "top-right"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->customClosePosition:Ljava/lang/String;

    const-string p1, "allowOffscreen"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->allowOffScreen:Z

    new-instance p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;

    invoke-direct {p1, p0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: setOrientationProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "allowOrientationChange"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "forceOrientation"

    const-string v3, "none"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x7

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v0, -0x1

    iput v0, p1, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_2
    const-string p1, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v4, p1, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_1

    :cond_4
    const-string p1, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v3, p1, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    :goto_1
    new-instance p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid orientation specified <%s>"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOrientationProperties"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: storePicture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    const-string v1, "storePicture"

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Ad has not been clicked"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Not supported"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "No path specified for picture"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v0, "Webview is no longer valid"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;

    invoke-direct {v3, p0, v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/MMWebView;)V

    invoke-static {v1, p1, v2, v3}, Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    return-void
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: useCustomClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v1, p1, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    const-string v2, "useCustomClose"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    new-instance p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Lcom/facebook/internal/k;
.super Lcom/facebook/internal/ag;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "com.facebook.internal.k"


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p3}, Lcom/facebook/internal/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/k;
    .locals 1

    .line 49
    invoke-static {p0}, Lcom/facebook/internal/ag;->a(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/facebook/internal/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/internal/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/internal/k;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/facebook/internal/ag;->cancel()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/ae;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bridge_args"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    sget-object v0, Lcom/facebook/internal/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ae;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "method_results"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "{}"

    .line 91
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    :catch_1
    sget-object v0, Lcom/facebook/internal/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ae;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "version"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/facebook/internal/z;->a()I

    move-result v0

    const-string v1, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public cancel()V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/facebook/internal/k;->b()Landroid/webkit/WebView;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/facebook/internal/k;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1437
    iget-boolean v1, p0, Lcom/facebook/internal/ag;->b:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/internal/k;->d:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/facebook/internal/k;->d:Z

    const-string v1, "javascript:"

    const-string v2, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    new-instance v1, Lcom/facebook/internal/k$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/k$1;-><init>(Lcom/facebook/internal/k;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 117
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/facebook/internal/ag;->cancel()V

    return-void
.end method

.class public Lcom/facebook/internal/i;
.super Lcom/facebook/internal/z;
.source "FacebookWebFallbackDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/internal/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/i;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p3}, Lcom/facebook/internal/i;->b(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/i;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/facebook/internal/z;->a(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/facebook/internal/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/internal/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/internal/i;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/facebook/internal/z;->cancel()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 70
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 74
    const-string/jumbo v0, "bridge_args"

    .line 75
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string/jumbo v2, "bridge_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 83
    const-string/jumbo v2, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    const-string/jumbo v0, "method_results"

    .line 91
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v2, "method_results"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "{}"

    .line 99
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string/jumbo v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_2
    :goto_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 111
    invoke-static {}, Lcom/facebook/internal/s;->a()I

    move-result v2

    .line 110
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-object v2, Lcom/facebook/internal/i;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse bridge_args JSON"

    invoke-static {v2, v3, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    sget-object v2, Lcom/facebook/internal/i;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse bridge_args JSON"

    invoke-static {v2, v3, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/internal/i;->d()Landroid/webkit/WebView;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/facebook/internal/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/facebook/internal/i;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/facebook/internal/z;->cancel()V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/internal/i;->b:Z

    if-nez v1, :cond_1

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/i;->b:Z

    .line 140
    const-string/jumbo v1, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    new-instance v1, Lcom/facebook/internal/i$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/i$1;-><init>(Lcom/facebook/internal/i;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

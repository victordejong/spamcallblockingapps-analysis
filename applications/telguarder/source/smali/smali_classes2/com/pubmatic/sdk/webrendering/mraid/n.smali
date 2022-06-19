.class Lcom/pubmatic/sdk/webrendering/mraid/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/mraid/n$b;
    }
.end annotation


# instance fields
.field protected final a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/webrendering/mraid/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pubmatic/sdk/webrendering/mraid/n$b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/pubmatic/sdk/webrendering/mraid/b;

.field private e:Lcom/pubmatic/sdk/webrendering/mraid/o;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->c:Lcom/pubmatic/sdk/webrendering/mraid/b;

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    const-string v0, "nativeBridge"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->b:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, "mraidService.nativeCallComplete();"

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/n;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PMMraidBridge"

    const-string v2, "Injecting JS property : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/webrendering/mraid/g;

    const/16 v2, 0x3f1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/pubmatic/sdk/webrendering/mraid/g;->b()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pubmatic/sdk/webrendering/mraid/o;->isUserInteracted(Z)Z

    move-result v2

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    invoke-interface {v1, p1, v3, v2}, Lcom/pubmatic/sdk/webrendering/mraid/g;->a(Lorg/json/JSONObject;Lcom/pubmatic/sdk/webrendering/mraid/o;Z)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/pubmatic/sdk/webrendering/mraid/o;->isUserInteracted(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    invoke-interface {v1, p1, v2, v4}, Lcom/pubmatic/sdk/webrendering/mraid/g;->a(Lorg/json/JSONObject;Lcom/pubmatic/sdk/webrendering/mraid/o;Z)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const-string v1, "Illegal state of command execution without user interaction"

    invoke-direct {p1, v2, v1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const-string v1, "Not supported"

    invoke-direct {p1, v2, v1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected a(Lcom/pubmatic/sdk/common/models/POBLocation;)V
    .locals 7

    const-string v0, ".setLocation(%s);"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "lat"

    :try_start_1
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "lon"

    :try_start_2
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "type"

    :try_start_3
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getSource()Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "PMMraidBridge"

    const-string v1, "Not able to inject setLocation property!"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "{}"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/pubmatic/sdk/webrendering/mraid/a;)V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/a;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ".fireEvent(\'%s\');"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    return-void
.end method

.method protected a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pubmatic/sdk/webrendering/mraid/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Lcom/pubmatic/sdk/webrendering/mraid/o;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->e:Lcom/pubmatic/sdk/webrendering/mraid/o;

    return-void
.end method

.method protected a(Ljava/lang/Double;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, ".fireEvent(\'audioVolumeChange\', %.2f);"

    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "null"

    aput-object v2, v1, v0

    const-string v0, ".fireEvent(\'audioVolumeChange\', %s);"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Float;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, ".fireEvent(\'exposureChange\', %.1f, %s, null);"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "PMMraidBridge"

    const-string v4, "JS called MRAID event without user interaction. Event : %s"

    invoke-static {v3, v4, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v0

    const-string p1, ".fireErrorEvent(\'%s\', \'%s\');"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->f:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ".setViewable(%b);"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(ZZZZZZZ)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sms"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "tel"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "calendar"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "storePicture"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "inlineVideo"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "location"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "vpaid"

    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ".setSupports(%s);"

    const/4 p3, 0x1

    :try_start_1
    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mraidService"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PMMraidBridge"

    const-string p3, "Not able to inject setSupports property!"

    invoke-static {p2, p3, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(II)Z
    .locals 3

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(II)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->d:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, ".setMaxSize(%s);"

    invoke-static {p2, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    return v0
.end method

.method protected a(IIII)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Object;

    aput-object p1, v0, p3

    const-string p1, ".setCurrentPosition(%s);"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mraidService"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return p4

    :cond_0
    return p3
.end method

.method protected b()Lcom/pubmatic/sdk/webrendering/mraid/b;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    return-object v0
.end method

.method protected b(II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(II)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->c:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ".setScreenSize(%s);"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->b:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, ".setDefaultPosition(%s);"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mraidService"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/pubmatic/sdk/webrendering/mraid/b;)V
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->e:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n$b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/b;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ".setState(\'%s\');"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ".setPlacementType(\'%s\');"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected c(II)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/a;->c:Lcom/pubmatic/sdk/webrendering/mraid/a;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/webrendering/mraid/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, ".fireEvent(\'%s\', %d, %d);"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidService"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PMMraidBridge"

    const-string v1, "Error message from JS :%s"

    invoke-static {p1, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PMMraidBridge"

    const-string v1, "Received MRAID log :%s"

    invoke-static {p1, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public nativeCall(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/n;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

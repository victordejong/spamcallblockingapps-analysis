.class public Lnet/pubnative/lite/sdk/api/PNApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;,
        Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;,
        Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;
    }
.end annotation


# instance fields
.field private mApiUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://api.pubnative.net/"

    .line 66
    iput-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mApiUrl:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/pubnative/lite/sdk/api/PNApiClient;->registerAdRequest(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private processJS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<script>"

    const-string v1, ""

    .line 163
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</script>"

    .line 164
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private registerAdRequest(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 201
    invoke-static {}, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;->getInstance()Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;->setLastAdRequest(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private sendTrackingRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mContext:Landroid/content/Context;

    new-instance v6, Lnet/pubnative/lite/sdk/api/PNApiClient$2;

    invoke-direct {v6, p0, p2}, Lnet/pubnative/lite/sdk/api/PNApiClient$2;-><init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZLnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void
.end method


# virtual methods
.method public getAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V
    .locals 8

    .line 83
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient;->getAdRequestURL(Lnet/pubnative/lite/sdk/models/AdRequest;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 86
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "PNApiClient - Error: invalid request URL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 89
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    iget-object v6, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mContext:Landroid/content/Context;

    new-instance v7, Lnet/pubnative/lite/sdk/api/PNApiClient$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/pubnative/lite/sdk/api/PNApiClient$1;-><init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/lang/String;JLnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V

    const/4 p2, 0x0

    invoke-static {v6, p1, p2, p2, v7}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    :cond_1
    return-void
.end method

.method protected getAdRequestURL(Lnet/pubnative/lite/sdk/models/AdRequest;)Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mApiUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/PNApiUrlComposer;->buildUrl(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getApiUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected processStream(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 177
    :try_start_0
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdResponse;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/models/AdResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Response cannot be parsed"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p2, v0}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 186
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "PNApiClient - Parse error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 187
    :cond_1
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 190
    iget-object p1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V

    return-void

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "HyBid - No fill"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 196
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HyBid - Server error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lnet/pubnative/lite/sdk/models/AdResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method setApiUrl(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mApiUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public trackJS(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;)V
    .locals 3

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 140
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Empty JS tracking beacon"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient;->processJS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "javascript:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 154
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;->onSuccess()V

    :cond_2
    return-void
.end method

.method public trackUrl(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/api/PNApiClient;->sendTrackingRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V

    return-void
.end method

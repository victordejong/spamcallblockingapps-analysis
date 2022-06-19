.class public Lnet/pubnative/lite/sdk/consent/UserConsentRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/consent/UserConsentRequest;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->handleResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V

    return-void
.end method

.method private handleResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V
    .locals 2

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Empty response received from server"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;-><init>(Lorg/json/JSONObject;)V

    .line 85
    invoke-interface {p2, v0}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;->onSuccess(Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    sget-object v0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doRequest(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V
    .locals 7

    .line 49
    invoke-static {}, Lnet/pubnative/lite/sdk/consent/PNConsentEndpoints;->getConsentUrl()Ljava/lang/String;

    move-result-object v0

    .line 52
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 53
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Authorization"

    .line 54
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Bearer %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;

    invoke-direct {p3, p0, p4}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;-><init>(Lnet/pubnative/lite/sdk/consent/UserConsentRequest;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V

    invoke-static {p1, v0, v1, p2, p3}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    sget-object p2, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {p4, p1}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

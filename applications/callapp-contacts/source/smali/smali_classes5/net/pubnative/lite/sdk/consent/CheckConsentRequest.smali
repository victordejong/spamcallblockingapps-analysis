.class public Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckConsentRequest"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;->handleResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;)V

    return-void
.end method

.method private handleResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;)V
    .locals 2

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Empty response received from server"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;-><init>(Lorg/json/JSONObject;)V

    .line 82
    invoke-interface {p2, v0}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;->onSuccess(Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 84
    sget-object v0, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public checkConsent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;)V
    .locals 4

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p3}, Lnet/pubnative/lite/sdk/consent/PNConsentEndpoints;->getCheckConsentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "Bearer %s"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Authorization"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 56
    new-instance v1, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$1;

    invoke-direct {v1, p0, p4}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$1;-><init>(Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;)V

    invoke-static {p1, p3, v0, p2, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void

    .line 49
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Invalid parameters for check user consent request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

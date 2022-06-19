.class public final Lcom/vk/api/sdk/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0002J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vk/api/sdk/internal/VKErrorUtils;",
        "",
        "()V",
        "executeErrorsSet",
        "",
        "",
        "jsonString",
        "",
        "hasExecuteError",
        "",
        "response",
        "ignoreErrors",
        "",
        "hasSimpleError",
        "parseExecuteError",
        "Lcom/vk/api/sdk/exceptions/VKApiException;",
        "method",
        "ignoredErrors",
        "errorsJson",
        "Lorg/json/JSONArray;",
        "parseSimpleError",
        "errorStr",
        "accessToken",
        "errorJson",
        "Lorg/json/JSONObject;",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/vk/api/sdk/internal/c;

    invoke-direct {v0}, Lcom/vk/api/sdk/internal/c;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/internal/c;->a:Lcom/vk/api/sdk/internal/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;
    .locals 7

    const-string v0, "captcha_img"

    const-string v1, "extend_hash"

    const-string v2, "confirmation_text"

    const-string v3, "captcha_sid"

    const-string v4, "errorJson"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "error_code"

    .line 68
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_3

    const/16 v0, 0x11

    if-eq v4, v0, :cond_2

    const/16 v0, 0x18

    if-eq v4, v0, :cond_1

    const/16 v0, 0xe19

    if-eq v4, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_0

    .line 81
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "validation_url"

    const-string v1, "redirect_uri"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "ban_info"

    .line 86
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 88
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_ban_info"

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz p2, :cond_7

    if-nez v6, :cond_6

    .line 102
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    move-object v6, v0

    :cond_6
    const-string v0, "access_token"

    .line 103
    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_7
    sget-object p2, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->e:Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;

    invoke-static {p0, p1, v6}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    move-result-object p1

    check-cast p1, Lcom/vk/api/sdk/exceptions/VKApiException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "errorJson.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p0, p1}, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Lcom/vk/api/sdk/exceptions/VKApiException;

    return-object p2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/vk/api/sdk/internal/JsonUtils;->INSTANCE:Lcom/vk/api/sdk/internal/JsonUtils;

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Lcom/vk/api/sdk/internal/JsonUtils;->containsElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;[I)Z
    .locals 1

    const-string p1, "response"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/vk/api/sdk/internal/JsonUtils;->INSTANCE:Lcom/vk/api/sdk/internal/JsonUtils;

    const-string v0, "execute_errors"

    invoke-virtual {p1, p0, v0}, Lcom/vk/api/sdk/internal/JsonUtils;->containsElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;Ljava/lang/String;[I)Lcom/vk/api/sdk/exceptions/VKApiException;
    .locals 11

    .line 118
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "errorsJson.getJSONObject(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1066
    invoke-static {v2, v3, v3}, Lcom/vk/api/sdk/internal/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object v2

    .line 121
    instance-of v3, v2, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    if-nez v3, :cond_0

    return-object v2

    .line 124
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    .line 2037
    iget v3, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xe

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    const/16 v4, 0x19

    if-eq v3, v4, :cond_1

    .line 139
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 144
    :cond_2
    new-instance p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    .line 150
    move-object v6, p3

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    move-object v0, p1

    move-object v2, p2

    .line 144
    invoke-direct/range {v0 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/vk/api/sdk/exceptions/VKApiException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/vk/api/sdk/exceptions/VKApiException;

    return-object p2
.end method

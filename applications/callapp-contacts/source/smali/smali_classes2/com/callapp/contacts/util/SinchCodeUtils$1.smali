.class final Lcom/callapp/contacts/util/SinchCodeUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/SinchCodeUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/listener/Listener<",
        "Lcom/callapp/contacts/util/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p2, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->b:Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .line 42
    check-cast p1, Lcom/callapp/contacts/util/http/HttpRequest;

    .line 1046
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponse()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    :try_start_1
    new-instance p1, Lcom/callapp/common/util/AESUtils;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/callapp/common/util/AESUtils;-><init>(Lcom/callapp/common/util/AESUtils$IBase64;)V

    const-string v1, "challenge"

    .line 1051
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    .line 1053
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/callapp/common/util/AESUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/callapp/common/util/AESUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v2}, Lcom/callapp/common/util/AESUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/callapp/common/util/AESUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#@#"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2011
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 1057
    iget-object v0, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->b:Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 1061
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Requesting Sinch code from server success"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 1065
    :try_start_2
    const-class v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1069
    const-class v0, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 1072
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/SinchCodeUtils$1;->b:Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;

    if-eqz p1, :cond_2

    .line 1073
    invoke-interface {p1}, Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;->b()V

    :cond_2
    return-void
.end method

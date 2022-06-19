.class final Lcom/callapp/contacts/util/SmsCodeUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/SmsCodeUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;)V
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

.field final synthetic b:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/util/SmsCodeUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p2, p0, Lcom/callapp/contacts/util/SmsCodeUtils$1;->b:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "Registration"

    .line 41
    check-cast p1, Lcom/callapp/contacts/util/http/HttpRequest;

    .line 1045
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponse()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1047
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponse()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1048
    new-instance p1, Lcom/callapp/common/util/AESUtils;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/callapp/common/util/AESUtils;-><init>(Lcom/callapp/common/util/AESUtils$IBase64;)V

    const-string v2, "challenge"

    .line 1049
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1052
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "code"

    .line 1054
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/callapp/contacts/util/SmsCodeUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/callapp/common/util/AESUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#@#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v3}, Lcom/callapp/common/util/AESUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2011
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 1057
    iget-object v2, p0, Lcom/callapp/contacts/util/SmsCodeUtils$1;->b:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;

    if-eqz v2, :cond_0

    .line 1058
    invoke-interface {v2, v1, p1}, Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Requesting SMS code from server success"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 1065
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Requesting SMS code from server success but failed decrypt"

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-class v1, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1070
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Requesting SMS code from server success but failed with empty hashkey"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Requesting SMS code from server success but failed with empty challengeKey"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Requesting SMS code from server success but failed with empty response"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1079
    const-class v1, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 1081
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Requesting SMS code from server success but failed with error"

    invoke-virtual {v1, v0, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/SmsCodeUtils$1;->b:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;

    if-eqz p1, :cond_4

    .line 1085
    invoke-interface {p1}, Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;->a()V

    :cond_4
    return-void
.end method

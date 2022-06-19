.class public Lcom/callapp/contacts/util/servermessage/RegisterClientUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    new-instance v0, Lcom/callapp/common/util/AESUtils;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/common/util/AESUtils;-><init>(Lcom/callapp/common/util/AESUtils$IBase64;)V

    const-string v1, "kjshadvfvn734mlasavtausdcm89324b83hnfiaa"

    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/callapp/common/util/AESUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    const-class v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 2

    .line 14
    new-instance v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;-><init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a()V

    return-void
.end method
